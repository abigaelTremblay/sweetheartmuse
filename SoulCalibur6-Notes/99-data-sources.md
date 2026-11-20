# Data Sources

## SuperCombo wiki API ✅

`web_fetch` returns unusable HTML boilerplate. `?action=raw` is blocked by **Anubis**
bot protection. **This works:**

```powershell
$r = Invoke-RestMethod `
  -Uri "https://wiki.supercombo.gg/api.php?action=parse&page=Soulcalibur_VI/Xianghua/Move_list&prop=wikitext&format=json" `
  -UserAgent 'Mozilla/5.0' -TimeoutSec 60
$w = $r.parse.wikitext.'*'
```

**A browser user-agent is required.**

### Useful pages
| Page path | Contents |
|---|---|
| `Soulcalibur_VI/<Char>/Move_list` | Frame data |
| `Soulcalibur_VI/<Char>/Strategy` | Combos, gameplans, LH conditions |
| `Soulcalibur_VI/System` | **All universal mechanics.** Most valuable page. |

---

## Parsing

Moves are `{{AttackData-SCVI ... }}` templates.

```powershell
$blocks = $w -split '\{\{AttackData-SCVI'
foreach($b in $blocks){
  $h=@{}
  foreach($line in ($b -split "`n")){
    if($line -match '^\}\}'){break}
    if($line -match '^\s*\|\s*([A-Za-z0-9_/]+)\s*=\s*(.*)$'){ $h[$matches[1]]=$matches[2].Trim() }
  }
  if($h.input){
    $inp = (($h.input -replace '\{\{Icon-SC\|[^}]*\}\}','') -replace '\s+',' ').Trim()
    $lvl = ($h.level -replace '\{\{Icon-SC\|','' -replace '\}\}','')
    # ...
  }
}
```

### Gotchas ⚠️
1. **Split on the template name and read until a line starting `}}`.**
   `[regex]::Matches` with `(.*?)\}\}` **fails** — nested `{{Icon-SC|...}}` templates.
2. **Inputs render as `{{Icon-SC|k}}{{Icon-SC|6}} k6`.** Strip icons, then take the
   **last whitespace token** — otherwise you get a duplicated plain form.
3. **Category names are inconsistently cased** across pages
   (`Serpent'sembrace` vs `Serpent'sEmbrace`, `Multiattacks` vs `MultiAttacks`).
   **Always match case-insensitively.**
4. **Seong Mi-na's page is `Seong_Mi-Na`** (capital N). Other spellings return 0 moves.
5. Keep multi-character scrapes to **~4–5 characters per call** or the pipeline stalls.
6. **Soul Charge is i6 for everyone** — exclude `cat=Gauge*` and `A+B+K` when
   looking for real fast options.
7. Headings (`== Horizontal Attacks ==`) are **discarded** when splitting on templates.
   Parse them separately if section context is needed.

---

## The 14 fields

`moveid` · `chara` · `cat` · `name` · `input` · `level` · `impact` · `damage` ·
`block` · `hit` · `counter` · `burst` · `notes` · `stance`

| Field | Meaning | Caution |
|---|---|---|
| `level` | **Attack height** (H/M/L/SL/SM) | ⚠️ NOT move level |
| `impact` | Startup frames (i) | |
| `block` | Advantage on block | |
| `hit` | Advantage on hit, **or a state** (KND/LNC/STN/DZY/RE) | No frame value for states |
| `counter` | Advantage on counter hit | |
| `burst` | **Guard damage** | Underused; correlates with move level |
| `cat` | Category | ✅ **More reliable than `stance`** |
| `stance` | Stance requirement | ⚠️ **LOSSY — single value only** |
| `notes` | Prose: tech crouch/jump, GI windows, LH conditions, range | Unstructured |

### ❌ NOT in the data
pushback · range · tracking · recovery frames · hitboxes ·
move level (light/medium/heavy) · Lethal Hit trigger conditions

---

## Derived metrics (keep consistent for comparability)

- **Fast** = i ≤ 14
- **Fast-and-safe** = i ≤ 16 AND block ≥ -6 ← key beginner-friendliness metric
- **SS cancels** = count of `[SS]` in notes ← accidental-stance-entry risk
- **Move level** ≈ from damage: Lights 0–21 · Mediums 22–34 · Heavies 35+
  (*"often broken"* — verify in game)

---

## Other sources

- **8WAYRUN combo spreadsheet** — 170+ Xianghua combos, all meter/wall/stance scenarios
- YouTube beginner combo guides — useful for routes the frame data can't reveal

> ⚠️ **The strategy pages state rewards without stating risks.** They recommended the
> auto-GI moves without mentioning the 8-frame window on a -16 attack.
> **Cross-check every recommendation against the frame data.**

> ⚠️ **Frame data alone is one small part of the picture.** It missed stance context,
> pushback, and combo routes. **In-game testing is the authority.**

## HARD PRECONDITION before any analysis

`input` alone tells you NOTHING about accessibility. Always filter first:

```powershell
$neutral = $moves | Where-Object {
  [string]::IsNullOrWhiteSpace($_.stance) -and
  $_.cat -notmatch 'Gauge|XiaSheng|BeaHerHua|HouLee|BackTurn|Down|Crouch|Rising|Reversal'
}
```

- `cat=GaugeAttacks` => **Soul Charge only**, even with no `stance` value
- `stance` is single-valued and LOSSY — `cat` is authoritative
- Xianghua: **116 of 220** moves survive this filter

Violating this caused three bad recommendations: `WR KB`, `6AK`, `6K(B)`/`66KAA`.

## Regenerating `Xianghua/framedata.md`

That file is **generated**, not hand-written — so it cannot drift from the source.
Regenerate after any wiki update; re-apply the lab-confirmed sections by hand.

```powershell
$r = Invoke-RestMethod -Uri "https://wiki.supercombo.gg/api.php?action=parse&page=Soulcalibur_VI/Xianghua/Move_list&prop=wikitext&format=json" -UserAgent 'Mozilla/5.0' -TimeoutSec 90
$w = $r.parse.wikitext.'*'
foreach($b in ($w -split '\{\{AttackData-SCVI')){
  if($b -notmatch '\|\s*input'){continue}
  $h=@{}
  foreach($line in ($b -split "`n")){
    if($line -match '^\s*\}\}'){break}
    if($line -match '^\s*\|\s*([A-Za-z0-9_]+)\s*=\s*(.*)$'){ $h[$Matches[1]]=$Matches[2].Trim() }
  }
  # normalize: strip {{Icon-SC|..}}, take LAST whitespace token of input,
  # expand (3)_(6)_(9)->66, (1)_(4)_(7)->44, (2)_(8)->22
  # gate = stance, or 'SC' if cat matches Gauge
}
```

### Normalizations applied
| Raw | Becomes |
|---|---|
| `(3)_(6)_(9)` | `66` (any forward) |
| `(1)_(4)_(7)` | `44` (any back) |
| `(2)_(8)` | `22` |
| `{{Icon-SC|X}}` in notes | `[X]` |
| `cat=GaugeAttacks` | `gate=SC` |

### Known parse traps
- Splitting on the template **discards section headings** — never rely on them.
- `input` renders as icons + text; take the **last whitespace token**.
- Regex `(.*?)\}\}` **fails** — nested `{{Icon-SC}}`. Read lines until `^\s*\}\}`.
- Seong Mi-na's page is `Seong_Mi-Na` (capital N).
- Keep multi-character scrapes to ~4-5 per call.

## Regenerating `2B/framedata.md` (2026-10-14)

- Same API call, page `Soulcalibur_VI/2B/Move_list`; generator kept as a session artifact (`gen2b.py`), not in this folder.
- **Added vs Xianghua pipeline:** wiki section headings kept (Part 1 grouped by section); `⚑` flag column (F1–F7, legend in the file).
- **Run normalization (⚑F5):** `(3)_(6)_(9)`→`66`, `(1)_(4)_(7)`→`44`, `(2)_(8)`→`22`, `(1)_(7)`→`11`, all 8 dirs →`8WR`, `(4)`→`[4]` ❓.
- `GaugeAttacks` without SC stance → `METER`; positional throws → `SIDE-L`/`SIDE-R`/`BACK`.
- Suffix families (`X6/X4/X8`) are detected by base input + `6`/`4`/`8`, **excluding** `AL 6/4/8` (those are stance transitions, not suffixes).
- **Other pages used:** `Soulcalibur_VI/2B/Strategy` (official Style Lessons → 📖), `Soulcalibur_VI/2B/Combos` (community → 📚; contains duplicate/mislabelled rows).
- No automated lab reconciliation exists. Lab results go into dated sections — never edit raw cells.

## Regenerating `Azwel/framedata.md` (2026-10-14)

Same pipeline as 2B. Parser → session artifact `azwel-moves.json` (167 rows) → `genazwel.py`.
Differences:
- `Wpn` column derived from Notes text (`Sword`/`Axe`/`Spear`/`Almighty`); `req` = mode-gated row. Blank ≠ no weapon.
- Mode-gated rows (wiki stance `weaponless`/`sword`/`ax`/`spear`/`almighty`) → prefixes `UNFORMED`/`SWORD`/`AX`/`SPEAR`/`ALMIGHTY`.
- Unparenthesised `2_8K` / `3_6_9K` / `1_4_7K` → `[2/8]K` etc. (tap, not run). `+ (B)+(G)` → `(B)+(G)`.
- Branch detection also groups `X K` / `X 6K` / `X 4K` families.
- Source typos kept verbatim, listed in the framedata "Other source issues" table (`TOB`, `Jaills`, `12.12`, Style Lesson `4B+K` name).

## Dustloop System Data (📚, added 2026-10-14)

`https://www.dustloop.com/w/User:Cyllene.!/SCVI/System_Data` — a **user page**; the author warns it "may be wildly inaccurate". Mostly measured with Azwel.
Used for: scaling model comparison (`08-damage-model.md` §1b), throw heights (Q40), Resist Impact input (Q21), GI advantage, counter multipliers.
Treat every value as 📚 until labbed.

## Xianghua community guides (📚, added 2026-10-14)

- **Jacky15x "SOULCALIBUR VI Season 2 Xianghua Guide"** — Google Doc `16eqnLIvw1QiJ9a3Ru4ZwkcyDiJYyQESaen2-U4Q3wSE`.
- **Xianghua Discord combo sheet** (Kayane, YinCresent, feetiemaomao, Aysko) — Google Sheet `1jGWIun_vbrJOvZpLnGq0gpsJ6GZvXDujs8jZXUSeI3s`. Ukemi tab self-marked "NOT UPDATED".
- Fetch: `.../document/d/<id>/export?format=txt` and `.../spreadsheets/d/<id>/export?format=xlsx` (read with openpyxl). No auth needed.
- Ingested into `Xianghua/community-guides.md` — digest by hand, sheet tables generated verbatim. Patch unknown; **never merged into `framedata.md`**.

## Ivy community sheet (📚, added 2026-10-15)

- **"Ivy SC6 combo sheet"** — Lupin (skeiider#4434) & NGEN (Storia#9224), Ivy Discord. Google Sheet `1gkXY-mPcyii1dlHCUhGCWZgIpAdFQzhToIPwXZv4YkE`. Last changelog **2.10 (2020-04-06)**.
- Same xlsx export. "(old)" tabs skipped; "Kopie listu Wall Combos" = duplicate of Wall + an AK-setup table.
- Ingested into `Ivy/community-guides.md` (verbatim tables + hand comparison). **Never merged into `framedata.md`.**

## Nightmare (📊 + 📚, added 2026-10-24)

- SuperCombo API wikitext: `Soulcalibur_VI/Nightmare/Move_list` (172 rows), `/Strategy` ("Revenge Safejab Data" table), overview page, `/Combos`. Same pipeline as Azwel; generator `gennightmare.py` (session artifact) adds an `Armor` column parsed from `Armor[x-y]` in Notes.
- Prefix map: wiki stance `hit` → `REVENGE` (Dire Vengeance); side/back throws → `SIDE-L`/`SIDE-R`/`BACK`; runs `(3)_(6)_(9)`→`66`, `(1)_(4)_(7)`/`(4)`→`44`, `(2)_(8)`→`22`, `(1)_(7)`→`11`; `2_3A+G`→`[2/3]A+G`.
- Revenge rules from Dustloop System Data (📚 user page). A general web search disagreed on Break Attacks vs revenge → recorded as a conflict (Q75), not merged.
- Output: `Nightmare/framedata.md` (snapshot) + `Nightmare/counter-matchup.md` (hand analysis, all Ivy counters ❓).
- **2026-11-20:** move list re-pulled — still 172 rows, snapshot kept unchanged. Added `Nightmare/gameplan.md` (playing as Nightmare; wiki Strategy/Introduction/Overview/Combos + defensive facts from `counter-matchup.md` §0).
- **"Nightmare Season 2" sheet** (📚, author unnamed) — Google Sheet `1hFkOiOXTbntwS2DCx0RwpCGNAcvn_mYakDyFr0viKf0`, linked from `/Resources`. Tabs: Move list, Standard / LH / Wall combo lists. Ingested into `Nightmare/community-guides.md` (verbatim combo tables + generated Move-list diff vs `framedata.md`). Gotchas: GS startups count from neutral **including the GS entry** (≈ +10 vs wiki); Season 2 values may predate the wiki; Wall tab is a placeholder.

## Sophitia & Setsuka (📊 + 📚, added 2026-11-20)

- Generator: `genchar.py` (session artifact, one script for both; writes `sophitia-moves.json` / `setsuka-moves.json`). Same pipeline as 2B/Azwel; no `Armor` column. Sophitia 176 rows, Setsuka 172.
- **Prefix map — Sophitia:** `hit`/`miss` → `8A+B (on hit)` / `(on whiff)`; `AS on hit` → `AS B4 (on hit)`; AS/TAS/SC AS/SC TAS kept. The move list has **no stance-entry rows** — AS = `236`, TAS = `236236`/`2366` come from the community sheet.
- **Prefix map — Setsuka:** `run` → `RUN`; `SKY  stage I/II/III` (double space!) → `SKY1/2/3`; `RE  Second round` → `RE2`; Wings of Heaven → `WoH`.
- Held directions `(2)A`/`(8)A`/`(4)A` (icons `22`/`88`/`44`) → `[2]A` etc. ❓ hold vs run.
- Other pages: `/Strategy` (📖), `/Introduction`, overview, `/Combos` (Setsuka's is **empty**).
- **Sophitia Encyclopedia** (📚, garuntv, patch 2.31, 2021-01-04; Combos tab 2.10) — Google Sheet `1IjWiiWd4JgQ41KPZh4zHRtXVK60HtWMRujbZ_XOzgRk`. Combos + Lethal Hits verbatim; Notes/Traps/Matchups/Moves adv./Game Mechanics digested. Notes tab's guard-damage claims are pre-patch. Holds written `[K]`.
- **Setsuka Guide** (📚, Boomy#8396, patch 2.30, 2020-12-01) — Google Sheet `16zcb65cqiL9tswMNmR7bievzQPIyVIyd2cFTLi4NJhU`; **Setsuka Cheat Sheet** (📚, author unknown) — `1Ct-STcAXb2vx4FO76oYvl8dZA-sCjrOqDE8QjIFdZi8`. Notation: `214…`/`236…` instant inputs, `44X` ≈ `[4]X` ❓, SKY stages numbered C1–C3 vs C0–C2 between the two sheets. Several frame values disagree with the wiki (biggest: `[4]B+K`) → ⚑ table in `Setsuka/community-guides.md`.
- All sheets: `export?format=xlsx`, read with openpyxl, tabs dumped to TSV. **Never merged into `framedata.md`.**
