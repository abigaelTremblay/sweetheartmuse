# Sophitia — Community guide 📚

> 📚 **Everything in this file is third-party**, not my lab. ✅ = my lab, which wins on conflict (both kept). Frame data 📊 = [framedata.md](framedata.md), which wins over the sheet on numbers unless the lab says otherwise.
> **Source:** "Sophitia Encyclopedia" (Google Sheet, 11 tabs), linked from the SuperCombo wiki *Soulcalibur VI/Sophitia/Resources* page. Author contact in the sheet: garuntv@pm.me · credits "everyone from 8wayrun and Sophieland" · quotes/advice from Ramus N., MONEYMUFFINS, Xephukai, Ramon and others.
> https://docs.google.com/spreadsheets/d/1IjWiiWd4JgQ41KPZh4zHRtXVK60HtWMRujbZ_XOzgRk
> Tab dates: Intro/Matchups **2021-01-04 (patch 2.31)** · Combos **2020-04-13 ("checked for 2.10")** · Lethal Hits/Traps 2020-04-05 · Sophitia Notes 2020-05-23 · Moves adv. 2020-09-11 · Dictionary 2020-09-10. Fetched 2026-11-20.
> Also used: SuperCombo wiki pages *Strategy* (in-game Style Lesson 📖), *Overview*, *Introduction*, *Combos*.
> **Verbatim:** Combos and Lethal Hits tabs (bottom of this file; only `↳` and link labels are formatting). **Digest only:** Sophitia Notes (340 rows), Moves adv. (1382 rows), Matchups (1058 rows), Traps, Game Mechanics, Dictionary, Random Notes.

---

## Sheet notation

The sheet and the wiki use a different hold notation from [framedata.md](framedata.md). **This file and `gameplan.md` translate to framedata notation in my own text; verbatim tables keep the sheet's.**

| Sheet / wiki | Means | framedata.md |
|---|---|---|
| `>` | next move in the combo | same |
| `,` | next move (wiki *Combos* page) | `>` |
| `[K]` / `(K)` | hold — the sheet uses both | `(K)` — e.g. sheet `1[K]` = 📊 `1(K)`, `4[A]` = `4(A)` |
| `:` | justframe / exact input — `AS B:4` = `AS B4` on exact timing (+10 dmg) | `AS B4` / `AS BB` (+5) |
| `B:4_B` | justframe follow-up, **either** `:4` **or** `:B` | `AS B4` · `AS BB` · `2BB4` · `2BBB` · `B+KB4` · `B+KBB` |
| `_` | or — `33_66_99B` = any forward run + B | `66B` (`22_88` = `22`, `11_44_77` = `44`) |
| lowercase `a` / `k` / `b` | press in quick succession (`11_44_77kK` Tornado Feint) | `44kK` · `6bA` |
| `wr` / `wc` / `bt` | while rising / while crouching / back turned | `WR` / `FC` / `BT` |
| `LT` | **Lethal Hit** (sheet's abbreviation) | `[LH]` |
| `w!` / `u!` | wall splat / opponent ukemi (tech roll) | — |
| `RC` / `AT` | run counter / attack throw | — |
| `[2G]` / `[G]` | hold crouch guard / hold guard (cancel, turn around) | — |
| `AS` / `TAS` | Angel Step `236` / Twin Angel Step `236236` (also `2366`, `23(6)`) | same |
| `SA` | Soul Attack `236A+B+K` (Zeus's Fulmination) | `METER 236A+B+K` |
| `CE` | Critical Edge `A+B+K` | `METER A+B+K` |
| `aGI` | auto-GI attack — `6A+B` (El Fortune) GIs and counters | `6A+B` (4 rows: vs mids / horizontals / verticals / kicks, ⚑ F2) |
| `stab` | community nickname for `AS B` (Angel Strike) | `AS B` |
| GI levels (Game Mechanics tab) | Lv1 +8 (heavy, 40+ dmg) · Lv2 +16 (20–40) · Lv3 +28 (light, 1–20); a GI'd **throw** counts as Lv3 | — |

---

## vs. framedata (2026-11-20)

Sheet/wiki claims cross-checked against 📊. No lab data yet, so no verdicts — only flags.

| Topic | 📊 framedata | 📚 Sheet / wiki | Verdict |
|---|---|---|---|
| `66A+G` / `4A+G` Heaven's Arch / Heaven to Hell LH | "[LH] after **4+** successful GIs" | Lethal Hits tab: after **5** GIs, aGIs (`6A+B`, `6A`, `6B`) count, not in a row, **charges persist between rounds**, consumed on use | ⚑ 4 vs 5 → ❓ count it in the lab |
| `44B` Guardian Upper LH | "[LH] post GI" | "after your successful **level 3** GI" | ⚑ compatible, sheet narrower. Lv3 = GI'd a light (1–20 dmg) attack or a throw |
| `1(K)` Tornado Low Kick LH | i**36**, LH after opponent **misses** a GI | Lethal Hits tab IMP **20**, "maximally delayed 1K hitting enemy after his GI"; Intro example says i36 | ⚑ IMP 20 looks like the uncharged `1K` value. Use 36 |
| `AS K` LH | "[LH] versus H attacks except [TH]" | LH tab: "dodge high horizontal (**not throw**)"; wall-combo note: "dodge high horizontal **or throw**" | ⚑ sheet contradicts itself; 📊 sides with "not throw" |
| `3A` | i18, **-14** | Overview + Notes: pushback makes it "basically safe", "Raphael is the only char that can punish 3A" | ⚑ range-dependent; data has no pushback. Treat as -14 up close |
| `4B` guard damage | GD **2** | Notes: "4B, 66B, AS K, 4A+B … 9% (or more)"; Moves adv.: GC 2.9 %; Overview: "4B no longer breaks guards" | ⚑ Notes tab outdated (pre-patch). 📊 + Moves adv. agree: 4B is **not** a guard-crush tool |
| `4A+B` guard damage | GD **9** | Notes: "14 % guard damage"; Moves adv.: 9 % | ⚑ Notes tab outdated; 9 |
| `2B` | i16, **-10** / 0 | Notes: "2B is safe and you can GI right after it" | ⚑ -10 is punishable by most i10–12 jabs |
| `3K` | i13, **-7 / +3** | Notes: "-6 on block, +4 on hit"; Moves adv.: i14 -6/+4 | ⚑ minor (1 frame) |
| `2K` | -14 / **-4** | Notes: "2K is -2 on hit" | ⚑ minor |
| `66B` | i**23**, **-3**, LNC | Moves adv.: i24 -2 · Overview: "safe on block" | ⚑ minor; safe either way |
| `66A` | i18, -12 / +6 | Overview: "not safe… worst is AA (i12)"; Strategy (📖): "hitting with 66A gives a chance of breaking your foe's guard" | ⚑ GD 4 — the Style Lesson line is likely about the follow-up throw, not guard crush |
| `66A` → throw on block | — | Notes: on **block** (sheet says "on hit if they block"), side throw connects vs 2B, Astaroth, Cervantes, Groh, Kilik, Mitsurugi, **Nightmare**, Talim, Yoshimitsu, Zasalamel; front throw vs Raphael, Tira; **not** vs Amy, **Azwel**, Geralt, **Ivy**, Maxi, Mina, Siegfried, Sophitia, Taki, Voldo, Xianghua | ⚑ wording ambiguous ("on hit if they block"); -12 on block makes a guaranteed throw impossible → read as "on hit" ❓ |
| `4K` → `66A+G` | `4K` +8 on hit, opponent turned | Overview: throw "guaranteed (timing tight)"; Traps tab: `4K > 66A+G` is a **frame trap** (+8); Notes: "if they press, you grab before it connects because they're back turned" | ⚑ guaranteed vs frame trap ❓ |
| `A+G(2)` → `3K` | `A+G(2)` = separate row, 35 dmg, KND | Notes + Overview: after `A+G(2)`, `3K` follow-up works on everyone except Sophitia, Talim, Tira | ❓ untested, character-specific |
| `6BA` | Hit **10**, CH **"210"** | Combos: `6bA > 2BK` starters | ⚑ F4 typo in the CH cell |
| Command-throw break | `A+G` Blk cell **6** | Notes: "all command throws are **+8** on break (incl. `66A+B`)" | ⚑ `66A+B` is a run attack in 📊 (-7 on block), not a throw. 📊 `A+G` "+6" = break advantage? ❓ |
| `44A6` | AS transition "on NH or block, **not CH**" | Combos: `44A` CH > `TAS B` | ✅ consistent — on CH you don't want AS anyway |
| RE `A6` | `RE A6` +6 / STN, `[SS]` into AS | Strategy (📖): `RE A6` → AS → combo `AS AA`; sheet: `RE A > 6B B:4_B` 46 ("press 6 during A animation") | ⚑ notation: sheet's `6B B:4_B` = `RE A6 > AS B4_B` |
| `44B` LH reverse ring-out | — | Wiki Combos: `44B LH > 8B+KK, bt B+K` 54 · sheet: `44B LT > 8B+KK > B+K` 54 | ⚑ sheet drops `bt` |
| `66A+G` LH damage | 55 base | Wiki Combos 61/67 · sheet `> 1K` 62 | ⚑ minor |
| `4(A)` | i38, **-2** / +16 on hit | Combos: `4[A] > A+B+K` 98 "stun" · `4(A) > 2BB:B w! …` 135 | ✅ consistent |
| `6A+B` vs `2A` | GI [4-12] **vs mids** only | Notes/Matchups: aGI "catches most `2A`" (SL) → `6BA > 2BK > TAS B` ~80 | ⚑ SL ≠ M in 📊 → ❓ test |
| `TAS AA` | -12 / +6, STN on CH | Overview -12 · Notes: "TAS AA/AB mixup is **not real** — use TAS A as a step catch" | ✅ numbers agree |
| `B+K B`, `2BB` in SC | `SC B+KB` -8, `SC 2BB` -8 | Notes: "technically safe in SC, but the 2nd hit can be stepped / GI'd" | ✅ compatible |

---

## Curated: payoffs by situation (from the tables below)

| Situation | Easiest listed | Max listed (no meter) |
|---|---|---|
| `3B` / `66B` / `66K` hit (launch) | wiki BNB `TAS B > 44B` 59/68/59 *"works on all 3"* | `66B > TAS AA > 44B+K` 77 *"tricky"* · `66B > WR B+K > TAS B > TAS B` 75 *(close)* |
| `44B` hit | `TAS B > TAS B` 74 | — |
| `4(A)` hit (stun) | `66K > TAS AA > 44B+K` 77 | `> A+B+K` 98 (meter) |
| `6bA` hit | `2BK > TAS B` 74 *"always works"* | `2BK > 8A+B` 76 (not near wall) |
| `4AB` hit (NC) | `44B` 54 | wall: `w! 66K > TAS AA > WR B+K > AS B4` 90 |
| `6K` CH (crumple) | `TAS B` 50 *"tight"* · wiki `44B+K` 50 | tech trap `1(K) > u! > TAS AA > AS B:4_B` 112 |
| `2B` CH / `B+K` CH | `2BB:4_B` 53 / `B+KB:4_B` 56 (RO option) | exact 63 / 66 |
| `44A` CH | `TAS B > TAS B` 67 *"tight"* | — |
| `TAS AA` CH | `AS B:4_B` 67 | `WR B+K > AS B:4_B` 73 (2nd-hit CH) |
| `A+B` LH (broke GI/RE) | `AS AA` 74 *"easy"* | `TAS B > TAS B` 84 · `CE` 102 |
| `1(K)` LH (after their GI misses) | `WR B+K > TAS B > TAS B` 86 *"easier"* | — |
| `TAS AB` LH (crushed GI) | — | `6BA > 2BK > TAS B` 100 |
| `66A+B` LH (run counter vs backstep) | `TAS B` 56 (no LH) | `22A+B > WR B+K > TAS B > 4B` 84 |
| `AS K` LH (stepped a high) | `AS B4` 60 | wall `2BB:B w! 6B+K w! 6BA > 2BK LH > TAS B` 116 |
| `TAS B` LH (stepped a horizontal) | `AS B:4_B` 72 | SC `2BB:4_B` 106 |
| `6A+B` aGI (catches a mid / 📚 `2A`) | `6BA > 2BK > TAS B` ~80 (Notes / Matchups) | — (SA variant `> 2BK > SA > 1K` is 72) |
| RE win | `B > TAS B > TAS B` 55 · `A6 > AS B4_B` 46 | LH (2nd round) `B > 88A+B > WR B+K > TAS B > TAS B` 68 |
| Guard crush, fast-recovery move (`66B`, `4A+B`, `AS K`) | `66B > WR B+K > 22BAK` 78 | wall `9A > 9A > 6BA > 2BK > TAS B` 124 |
| Wall (any launcher) | `66B w! 6B+K w! 6BA 2BK > TAS B` 108 *"easy, reliable"* | `4(A) > 2BB:B w! 6B+K w! 6BA > 2BK > TAS B` 135 |

⚠️ `TAS B` in a combo = input `236236B` mid-juggle. The whole damage game rests on it — drill it first (gameplan Q-list).

---

## Lethal-hit digest (from the verbatim tab below + 📊)

| Move | LH condition (📚) | 📊 i · Blk | Payoff 📚 |
|---|---|---|---|
| `TAS B` | Dodge a high or mid **horizontal** (not kicks) and hit | i16 · -14 | `AS B:4_B` 72 |
| `AS K` | Dodge a **high horizontal** with AS and hit | i16 · -6 | `AS B4` 60 |
| `A+B` | Break their **GI or RE** | i38 · **+8** | `AS AA` 74 |
| `TAS AB` | 2nd hit (`B`) **during their GI** | i20 · +4 | `6BA > 2BK > TAS B` 100 |
| `1(K)` | Fully charged, hits **after their GI** (📊: after they **miss** a GI) | i36 · -6 | `WR B+K > TAS B > TAS B` 86 |
| `2BK` / `FC BK` | `K` lands on their **back** | i16 · -12 | `TAS B` 70 RO |
| `4A+B` / `44A+B` | Their **throw whiffs** | i18 · -6 | `4A+B LT > SA` 58 · SC `4A+B B` |
| `44B` | After **your Lv3 GI** | i22 · -16 | `22A+B > WR B+K > TAS B > 4B` 67 |
| `66A+B` | **Run counter vs backstep** (does not RO) | i18 · -7 | `22A+B > WR B+K > TAS B > 4B` 84 |
| `[22/44]B+K` | After sidestepping their **vertical** | i26 · -6 | `66B` 59 |
| `66A+G` / `4A+G` `A`/`4A` | After **5** GIs (📊 4+), charges carry over rounds | i18 throw | `1K` 62 · SA 83 / 100 |
| RE `A` / `A6` / `B` / `K` | Win the **2nd** RE clash as initiator | — | see RE tables |

---

## Traps digest (Traps tab, 2020-04-05)

| Type | Route | Dmg | Note |
|---|---|---|---|
| Tech trap, CH | `6K > 1(K) > u! > TAS AA > AS B:4_B` | 112 | Ukemi after `1(K)` gets caught by `TAS AA` |
| ↳ | `… > TAS AA > WR B+K > AS B:4_B` | 120 | wall carry |
| ↳ near wall | `… > AS B:B w! 6B+K w! 6BA > 2BK > TAS B` | 166 | |
| Tech trap | `66K > TAS AA > u! > TAS AA > AS B:4_B` | — | |
| Tech trap, LH | `66A+G LH > u! > 1K > u! > TAS AA > WR B+K > AS B:4_B` | — | |
| Frame trap, block | `TAS K` (+4) `> 6K > 44B+K` | — | `6K` i16 trades with i12 jabs → CH |
| Frame trap, hit | `2BK > 66B+KAB` | — | both `2BK` hits must connect |
| Frame trap, hit | `4K` (+8) `> 66A+G > 6K > 44B+K` | 49 | +8 then +8 on throw break |
| `3A` traps | `3A > AS K` / `> TAS B` / `> 6A+B` | — | `3A` pushback; it is -14 📊 |
| Turn steal | `AA` / `BB > 66A` | — | On hit both are +2 → `66A` i18 (TC 6-20 ducks highs). On block (-8) ⚠️ not a trap vs i12 jabs |
| Also listed | `1K > 1K > TAS AA` | — | video only |

---

## Key notes digest (Sophitia Notes tab, ~340 rows)

**Stance mechanics**
- AS/TAS can be **cancelled with `1_2_3G`**. TAS: `236236`, `2366` or `23(6)`. Both can be done **out of block** and from crouch (`2G` → AS B from downed state).
- TAS dodges most horizontal mids and special lows (most `2A`s). After an empty back jump, buffer TAS → instant `TAS B` on landing (whiff punish).
- AS sidestep does not suffer run counter.

**Punish ladder (Notes tab, "if you are -N")** — cross-checked with 📊

| They're at | Sheet pick | 📊 check |
|---|---|---|
| -10 | your turn: `66A`, `AA`, `4K`, `KK`, `2A`, a throw | `KK`/`AA` i12 — only these punish; the rest are turn-takes |
| -12 | `AA`, `2A`, `KK` | i12 ✓ |
| -14 | `AS B` (`stab`) | i14 ✓ (`BB` / `WR B` i14 too — "test with BB if unsure, AS B is -20") |
| -16 | `66K > TAS AA` | i16 ✓ |
| -18 | `4A+B`, `AS B`, `TAS B` | ✓ |
| -20 | `3B` into launcher combo | i20 ✓ |
| blocked a low | "stab every low" `AS B:4_B` (from crouch, `2G` buffer) | ✓ i14 |

**Philosophy (quoted digest)**
- "Her main mixup is **mid / throw**." Lows (`1K`, `2K`) are spice. "Think of `66A+G` as a short-range frame-advantage low."
- "If your offense is stagnant, **throw more**." Side throw `SIDE-R A+G` Broken Promise **70** — from 1P side step **left (up)** once. `66A+G` broken = +8 (sheet) → `6K`.
- Throw range is "the shortest in the game", compensated by fast closing.
- `6K` = "your go-to" after any plus situation until they stop mashing; it is weak to step → mix `44A` / `66A` (horizontals) vs steppers.
- Frame-advantage-on-block mids: `TAS K` (+4), `44kK` (+4), `A+B` (+8). Guard-damage mids: `66B`, `AS K`, `4A+B` (all GD 9 📊).
- Minimal set: **advance** `66A`, `66B`, `TAS AA`, `TAS K` · **whiff punish** `3B`, `66B`, `TAS B` · **up close** `AA`, `BB`, `4A+B`, `4A`, `A+B`, `1K`, `3K`, `2K`, `2A`, throws · **after stepping** `22BAK`, throw, `3B`.
- `TAS A` is "an advanced tech-crouch step catch", not an approach tool. `TAS AA`/`AB` "mixup is not real" (B+K and auto-step moves beat it).
- `2A` locks people down after a safe move (`4B` -2 → `2A`). After `1K` (−2 on hit) the meta is "2A or not".
- `4A+B`: "her most abusable special" — TC, RO, air stun, guard damage; beats most i10–14 jabs by TC.
- `6A+B` (aGI) vs string-heavy chars (Raphael, Talim, Geralt) and vs `2A` mashers: `6A+B > 6BA > 2BK > TAS B` ≈ 80.
- `1(K)` charged on oki → if they press a WR button, `6A+B` GIs it.
- **Oki menu:** throw (main) · `3K` (safe mid, hits grounded) · `4B` (safe mid, can be ukemi'd) · `66B` (risky, rollable) · `1K` (catches lows) · `A+B` (timing read) · `TAS K` (another KND).
- RE bait: `4B` best, also `3K`, `4K`, `22K`, `22A`; step **right (down)** out of the RE parry.
- After guard crush: next hit is CH. Low-recovery crusher (`4B`) → step left `TAS AA`, `AS B4`; else `66B+K A B`, hold G, `TAS B`, `4B` or CE.
- After your GI: `A+B` (they re-GI → LH). Lv1/Lv2 GI → free `AS B:4_B` (only a re-GI saves them).
- Weak side: hers is **left**; ukemi **right** is safest vs her enders.
- `66K > A+B+K` kills if the opponent has Revenge / "GUTS".

---

## Matchup digest (Matchups tab, 2021-01-04) — my characters / opponents only

Full per-move punish tables live in the sheet. Short extracts:

**vs Ivy**
- Use `2A` to check sidesteps and protect from `22K` (Royal Huntress, she gets Serpent's Embrace oki every time it lands). `22K` on block → `AS B:4_B`.
- `66B` from outside is likely stepped and punished; `TAS B` outside Sparking Blade also risky. **Approach with `66A`** (turns them, free mixup).
- Sparking Blade `66(A)`: point blank → `TAS B > AS B4` 82; dodge the 2nd hit with TAS.
- Vile Condemnation `2_3A+G`: block low or jump; step **right** vs Ivy to react to lows.
- In Serpent's Embrace `4(A)` → `4A+B` ASAP. `2A`, `1K`, `4K` "really effective"; Ivy's `2A` is i16 → `4B` strong.
- Guilty Throne CE -20 → `3B` / CE; aGI from frame 8 → `6A+B > 6BA > 2BK > TAS B`.

**vs Nightmare**
- Need **22+ damage in one hit** to break his armor (Terror Charge `6A+B`); `1K`, `66A+B`, `3B`, `66B`. 📖/Overview: `6B+K` and `3A` beat his armor.
- `66A` is **safe vs Nightmare** (fastest i14).
- TAS under Mail Crusher `3AA` → `TAS B` LH. `3AA` blocked → `3B > TAS B > 4B`.
- `6AA` / `4KK`: crouch the high 2nd hit → `AS K` LH > `AS B4` (73). "Use `2K` a lot."
- `AA` → aGI 2nd hit `6A+B > 6BA > 2BK > TAS B`.
- CE: super armor from frame 2, doesn't GI lows → `2K` interrupts the charge.

**vs Azwel**
- Weak side left → sidestep **right**. B+K gimmick depends on his last weapon (sword: 2 swords · axe: low throw · spear: 360 spin).
- Stance changes (except Comedy of Errors) → `4A+B` (fast TC), cheaper `2K`. Comedy of Errors → `4AB`.
- `BBB` → `66B > WR B+K > TAS B > 44B`; `6BB` → step/aGI 2nd hit, `11B > TAS B > 4B`; CE → `3B`.

**vs 2B**
- In range of `6A+B` (kick) `> A+B+K`. Aggression Shift without RE → `2A`.
- Many strings: crouch-block then `AS K` on the last high hit → `AS B:4_B`.

**vs Hilde** — section empty in the sheet (header + Discord link only).

---

## Wiki *Combos* page (SuperCombo) — summary

| Starter | Route | Dmg | Note |
|---|---|---|---|
| `3B` / `66B` / `66K` | `TAS B, 44B` | 59 / 68 / 59 | BNB, "easiest, works on all 3 launchers"; RO: `4A+B` ender |
| `3B` | `TAS AA, 44B+K` | 68 | |
| `66B` | `WR B+K, TAS B, TAS B` | 75 | |
| `A+B` LH | `AS AA` · `TAS B, TAS B` · `CE` | 74 · 84 · 102 | |
| `1(K)` LH | `WR B+K, TAS B, TAS B` | 86 | "easier" |
| `TAS AB` LH | `6BA, 2BK (LH), TAS B` | 100 | |
| `2BK` LH | `TAS B` | 70 | RO |
| `44B` LH | `8B+KK, bt B+K` | 54 | reverse RO |
| `6K` CH | `44B+K` | 50 | |
| `2B` CH / `B+K` CH | `B:4_B` | 53 / 56 | |
| `44A` CH | `TAS B, TAS B` | 67 | |

---

## Sheet tables (verbatim)

### Combos tab (verbatim) — 2020-04-13, "whole section checked and updated for 2.10 patch"

Section headings are the sheet's own (group headings in CAPS as in the sheet; `(GENERAL COMBOS)` is my label for the untitled first group). `↳` = same starter as the row above. Sheet `LT` = Lethal Hit.

#### (GENERAL COMBOS)


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `4[A]` | `4[A] > 66K > TAS AA > 44B+K` | 77 |  |  |
| `4AB` | `4AB > 44B` | 54 |  |  |
| `6bA` | `6bA > 2BK > 8A+B` | 76 | 8A+B might not hit if you are close to the wall, if you are, do the one below | [link](https://www.youtube.com/watch?v=lbSKADPOH98) |
| ↳ | `6bA > 2BK > TAS B` | 74 | Harder to do and less damage, always works |  |
| `3B` | `3B > TAS AA > 44B+K` | 68 |  | [link](https://www.youtube.com/watch?v=k1LeTBJqtV0) |
| `1[K]` | `1[K] > 1K` | 43 |  | [link](https://www.youtube.com/watch?v=KXDREbH9SkA) |
| `A+B` | `A+B > 66B` | 53 |  |  |
| `4B+K` | `4B+K > TAS AA > 44B+K` | 85 |  |  |
| `22_88A` | `22_88A > 1K` | 40 |  |  |
| `66B` | `66B > TAS AA > 44B+K` | 77 | Timing is tricky, try to do TAS AA when opponent starts falling | [link](https://www.youtube.com/watch?v=1JcoSnnQhks) |
| ↳ | `66B > wrB+K > TAS B > TAS B` | 75 | Easier to do when you are closer to opponent because of wrB+K |  |
| `33_99B` | `33_99B > wrB+K > 22BAK` | 79 |  |  |
| `11_44_77B` | `11_44_77B > TAS B > 4B` | 66 |  |  |
| `44B` | `44B > TAS B > TAS B` | 74 |  |  |
| `66K` | `66K > TAS AA > 44B+K` | 66 |  | [link](https://www.youtube.com/watch?v=CrRpF3zrryI) |
| `44K` | `44K > TAS B > 4B` | 62 | you need to do TAS B asap | [link](https://www.youtube.com/watch?v=SLKsIlGsgYM) |
| `66A+B` | `66A+B > TAS B` | 56 | You are fishing for LH on Run Counter (Back) but if you didn't get it just go for TAS B, on max range it might not connect |  |
| `22_88A+B` | `22_88A+B > [2G] > wrB+K > TAS B > TAS B` | 79 | Very hard to do. You can swap TAS B > TAS B to 88BAK for 73 damage |  |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `2B` | `2BB:4_B` | 53 | Ring Out option, exact frame damage 63, very strong in Soul Charge |  |
| `6K` | `6K > TAS B` | 50 | Tight execution window for TAS B |  |
| `1[K]` | `1[K] > 1K` | 45 |  |  |
| `B+K` | `B+KB:4_B` | 56 | Ring Out option, exact frame damage 66, very strong in Soul Charge |  |
| `44A` | `44A > TAS B > TAS B` | 67 | Tight execution window for TAS B |  |
| `66B+K` | `66B+K AB > [G] > TAS B > 4B` | 75 |  |  |
| `TAS AA` | `TAS AA > AS B:4_B` | 67 | On 1st hit CH from TAS AA you might have problem with getting last 4_B if you won't move little bit to the left | [link](https://streamable.com/e2jlb) |
| ↳ | `TAS AA > wrB+K > AS B :4_B` | 73 | On 2nd hit CH from TAS AA | [link](https://streamable.com/lzbkm) |

##### Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `2BK` | `2BK LT > TAS B` | 70 | Ring Out |  |
| `1[K]` | `1[K] LT > TAS AA > 44B+K` | 73 | Tight execution |  |
| ↳ | `1[K] LT > wr B+K > 88_22BAK` | 77 |  |  |
| ↳ | `1[K] LT > wr B+K > TAS B > TAS B` | 86 | Easier to do |  |
| `A+B` | `A+B LT > TAS B > TAS B` | 84 | Tight execution, if you won't do TAS B at correct timing you won't get TAS B at the end |  |
| ↳ | `A+B LT > AS AA` | 74 | Easy to do |  |
| ↳ | `A+B LT > A+B+K` | 102 | Needs meter |  |
| `44B` | `44B LT > 22A+B > wrB+K > TAS B > 4B` | 67 | Most damage |  |
| ↳ | `44B LT > 4A+B` | 39 | Ring Out |  |
| ↳ | `44B LT > 8B+KK > B+K` | 54 | Reverse Ring Out |  |
| `66A+B` | `66A+B LT > 22A+B > wr B+K > TAS B > 4B` | 84 |  |  |
| ↳ | `66A+B LT > 8B+KK > bt B+K` | 73 | Reverse Ring out | [link](https://twitter.com/drataks/status/1054250250850975744) |
| `44 B+K` | `22_88_11_44_77 B+K LT > 66B` | 59 |  |  |
| `33_66_99 A+G` | `33_66_99 A+G LT > 1K` | 62 | Throw |  |
| `44A+G:4A_A` | `33_66_99 A+G LT > 1K` | 62 | Throw |  |
| `TAS B` | `TAS B LT > AS B:4_B` | 72 | If enemy is far away |  |
| `AS K` | `AS K LT, AS B:4` | 60 | Should be done if you are further away from opponent, AS B has better range |  |
| ↳ | `AS K LT, A+B+K` |  |  |  |
| `TAS AB` | `TAS AB LT > 6BA > 2BK > TAS B` | 100 | Lethal Hit with TAS AB (crush enemy GI with B) | [link](https://twitter.com/chronica_0/status/1052961895739617280) |

##### While Soul Charged

> (New optimal routes that are only available while Soul Charged. If you don't see a new route here, just do the one listed in the above general combos section)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `3B_66K` | `66K > 44A+BB > TAS B` | 76 |  |  |
| `4A+B` | `4A+BB > TAS B` | 67 |  |  |
| `4B+K` | `4B+K > TAS AA > TAS B` | 87 |  |  |
| `66B` | `66B > wrB+K > 44A+BB > TAS B` | 99 |  |  |

##### While Soul Charged and Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `44AB` | `44AB > wrB+K > 22_88BAK` | 96 | People often forget about 2nd hit (it's only available in Soul Charge) so commiting might be good idea even if you are not going for CH |  |
| ↳ | `44AB > 8B+KK > bt B+K` | 87 | 44AB comboes only on CH, Ring out on 44AB or reverse Ring out on 8B+KK | [link](https://www.youtube.com/watch?v=V35VHl74vXU) |

##### While Soul Charged and Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `A+B` | `A+B LH > 4A+BB > TAS B` | 105 |  |  |
| `AS K` | `AS K LT, 2BB:B:4` | 91 | If enemy is close, TAS B TAS B if he is far |  |
| `TAS B` | `TAS B LT > 2BB:4_B` | 106 | If enemy is close, TAS B TAS B if he is far |  |

##### Needs meter

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `4(A)` | `4(A) > A+B+K` | 98 | Stun | [link](https://streamable.com/3h3wq) |
| `66K` | `66K > A+B+K` | 76 | If 66K will give opponent GUTS, A+B+K is guaranteed kill |  |

#### SOUL ATTACK

> (SA IS DONE BY PRESSING 236A+B+K) In general when any combo ends with TAS B you can use 236 A+B+K > 1K instead


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `4AB` | `4AB > SA > 1K` | 70 |  |  |
| `9A` | `9A > SA > 1K` | 77 |  |  |
| `44B` | `44B > TAS B > SA > 1K` | 83 |  |  |
| `66K` | `66K > TAS B > SA > 1K` | 68 | Tech trap |  |
| ↳ | `66K > TAS AA > SA` | 71 |  |  |
| `22_88A` | `22_88A > SA > 1K` | 73 |  |  |
| `33_66_99 B` | `66B > wrB+K > TAS B > SA` | 77 | also works with 3B (71 damage) |  |
| `A+G(2)` | `A+G(2) > SA > 1K` | 77 |  |  |
| `TAS K` | `TAS K > SA > 1K` |  |  |  |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `1K` | `1K > SA > 1K` | 57 |  |  |
| `44A` | `44A > TAS B > SA > 1K` | 70 | TAS B is hard to do |  |

##### aGI

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `6A+B (vs horizontal)` | `6A+B > 6BA > 2BK > SA > 1K` | 72 |  |  |
| `6A+B (vs kick)` | `6A+B > SA > 1K` | 61 |  |  |

##### Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `1K` | `1K > wrB+K > TAS B > SA > 1K` | 94 |  |  |
| `A+B` | `A+B LT > TAS B > SA > 1K` | 97 |  |  |
| `4A+B_44 A+B` | `4A+B LT > SA` | 58 |  |  |
| ↳ | `4A+B > 6BA > 2BK > SA > 1K` | 85 | Character specific, it doesn't work against some and it needs to be done as 4A+B > 666> 6BA > 2BK > SA > 1K against some |  |
| `4A+G > A_4A` | `4A+G > A_4A LT > G > SA > 1K` | 100 |  |  |
| `44B` | `44B > 22A+B > wrB+K > TAS B > SA > 1K` | 74 |  |  |
| `66A+B` | `66A+B > 22A+B > wrB+K > TAS B > SA > 1K` | 102 |  |  |
| `22_88A+B` | `22_88A+B > G > wr B+K > TAS B > SA > 1K` | 82 |  |  |
| `66A+G` | `66A+G LT > G > SA > 1K` | 83 |  |  |
| `AS K` | `AS K LT > SA` | 59 |  |  |
| `TAS B` | `TAS B > 6K > SA > 1K` | 80 |  |  |

#### REVERSAL EDGE COMBOS


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Win with A` | `A > 6B B:4_B` | 46 | To get Angel Step after RE A you need to press 6 during A animation |  |
| `Win with B` | `B > TAS B > TAS B` | 55 | You can swap TAS B with SA > 1K |  |
| `Win with K` | `K > TAS B > TAS B` | 46 | You need to do first TAS B very fast, you can swap TAS B with SA > 1K |  |

##### Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Win with A` | `A > 6BA > 2BK > TAS B` | 64 | You need to wait a bit after you press 6 during A animation (you get AS stance and you don't want that) before pressing 6BA, you can swap TAS B with SA > 1K |  |
| `Win with B` | `B > 88A+B > wrB+K > TAS B > TAS B` | 68 | 22A+B will always whiff, go for 88A+B, not reliable against Nightmare, you can swap TAS B with SA > 1K |  |
| `Win with K` | `K > 88A+B > wr B+K > TAS B > TAS B` | 67 | Hard to do, you can swap TAS B with SA > 1K |  |
| ↳ | `K > TAS B > TAS B` | 46 | You can swap TAS B with SA > 1K |  |

##### Lethal Hit and Soul Charge

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Win with B` | `B > 88A+B > wrB+K > 4A+BB > TAS B` | 77 | 22A+B will always whiff, go for 88A+B, not reliable against Nightmare |  |

#### UKEMI

> go for these if your opponent uses Ukemi way too often, for more info about Ukemi check "Game Mechanics" section


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `1[K]` | `1[K] u! TAS AA` | 72 | Staying on the ground dodges TAS AA first hit, use this one on people that like to do Ukemi a lot |  |
| `22_88A` | `22_88A u! TAS AA` | 72 | Staying on the ground dodges TAS AA first hit, use this one on people that like to do Ukemi a lot |  |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `6K` | `6K u! 1[K] u! TAS AA > wrB+K > AS B:4_B` | 120 | Tricky timing, you might not get AS B:4_B follow up (position dependant) |  |

#### WALL COMBOS


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Any Launcher (66B \| 3B \| 66K \| 44B \| AS B:B \| TAS B:B)` | `66B w! 6B+K w! 6BA 2BK > TAS B` | 108 | Easy to do and reliable | [link](https://www.youtube.com/watch?v=XYPVUQ288SI) |
| ↳ | `66B w! TAS AA > wrB+K > AS:B :B w! > 66K > TAS B > 4B` | 114 | Tight execution, there is also high chance that wrB+K will give you unintentional wall hit |  |
| `4(A)` | `4(A) > 2BB:B w! 6B+K w! 6BA > 2BK > TAS B` | 135 | Enemy spins during 4(A) stun if you will do 2BB at wrong moment you won't get :B it shouldn't be a problem |  |
| `4AB` | `4AB w! 66K > TAS AA > wrB+K > AS B:4` | 90 |  |  |
| ↳ | `4AB > 2BK` | 62 | Ring out if you are in corner and enemy lands on wall | [link](https://www.youtube.com/watch?v=QoYRkPd-fF8) |
| `2BK` | `2BK > AS B:B > 66K > TAS AA > 44B+K` | 98 | AS B:B will only work if you will hit enemy from the front, depending on the angle you might not get AS B:B followup |  |
| `A+B` | `A_B w! 6BA > 2BK w! 2BB` | 107 | If you get Lethat Hit go for the one below otherwise stick to this one (what will happen depends on the angle you will hit first attack with |  |
| ↳ | `A_B w! 6BA > 2BK > TAS B` | 113 |  |  |
| `4B+K` | `4B+K w! 6B+K w! 6BA > 2BK > TAS B` | 92 |  |  |
| `44kK_TAS K` | `4Kk w! TAS AA > wrB+K > AS:B :B w! 66k > TAS B > 4B` | 109 | wrB+K will give unintentional wall splat unless you will do TAS AA perfectly |  |
| `66A+B` | `66A+B w! 66K w! AS AA` | 82 | Tight execution go for this combo |  |
| ↳ | `66A+B w! 66K w! AS AA >wrB+K > AS B:4` | 96 | Depending on angle you hit first attack with you might get second wall splat if you do go for this |  |
| ↳ | `66A+B > AS B` | 63 | Easy to do |  |
| `44B+K` | `44B+K w! 66K w! TAS AA > 44B` | 82 | Tight execution, for +1 damage you can swap 44B with 44B+K but then combo is harder and if you won't do combo perfectly opponent can Ukemi Right |  |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `2BB` | `2BB:B w! 6B+K w! 6BA > 2BK > TAS B` | 118 |  |  |
| `6B+K` | `6B+K w! 6B+K w! 6BA > 2BK > TAS B` | 113 |  |  |
| `44A` | `44A w! 6B+K w! 6BA > 2BK > TAS B` | 91 |  |  |
| `TAS AA` | `TAS AA > wrB+K > AS:B :B w! 6B+K w! 6BA > 2BK (LH) > TAS B` | 128 | Works even if you will get CH only on 2nd hit |  |

##### Counter Hit Soul Attack Combo

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `6B+K` | `6B+K_44A_TAS AA` |  | Needs meter, Swap TAS B with 236A+B+K in any combo from Counter Hit section above |  |

##### Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `A+B LH w! TAS AA > wrB+K > AS:B :B w! 66K > TAS AA > 44B+K` | 133 |  |  |
|  | `AS K LH > 2BB:B w! 6B+K w! 6BA > 2BK LH > TAS B` | 116 | You need AS K LH (dodge high horizontal and hit with K) | [link](https://twitter.com/ragwosan/status/1053344461705498625) |

##### While Soul Charged

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Any Launcher (66B \| 3B \| 66K \| 44B \| AS B:B \| TAS B:B)` | `66B w! 6B+K 6BA 2BK TAS B` | 119 | Easy to do |  |
| `4(A)` | `4(A) 2BB:B 6B+K 6BA 2BK TAS B` | 172 | Stun, Without 4(A) its 144 damage |  |
| `AS B` | `AS B:B w! 2BB:B w! 6BA > 2BK > TAS B` | 154 | Character specific check note to see on who it works and on who it doesn't |  |

##### While Soul Charged and Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `2BB` | `2BB > 6B+K > 6BA > 2BK > TAS B` | 162 |  |  |

##### While Soul Charged and Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `AS K` | `AS K LH > 2BB:B w! 6B+K w! 6BA > 2BK > TAS B` | 116 | You need AS K LH (dodge high horizontal or throw and hit with K) | [link](https://twitter.com/ragwosan/status/1053342643843817472) |

#### GUARD CRUSH COMBOS


##### No requirements


##### Note: depending on what move you guard break with, you'll have different routes available to you, so we'll divide them up into fast recovery [like 66B] guard crush and slow recovery [like 6B+K] guard crush


##### Slow Recovery Guard Crush (e.g. 6B+K, 1[K], jump B and B+K)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> Sidestep Right > TAS AA > wrB+K > AS B:4` | 86 | If you won't sidestep wrB+K will miss. Better wall carry. Hard to do | [link](https://streamable.com/ulvfh) |
|  | `> 4[A] > 2BB:4` | 72 | Better in SC (113 damage) |  |

##### Fast Recovery Guard Crush (e.g. 66B, 4A+B, AS K)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> 33_99B > wrB+K > 22BAK` | 78 |  |  |

##### Needs Meter


##### Slow Recovery Guard Crush (e.g. 4B, 6B+K, 1[K], jump B and B+K)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> 4(A) > A+B+K` | 98 |  | [link](https://streamable.com/3h3wq) |

#### GUARD CRUSH WALL COMBOS


##### Slow Recovery Guard Crush (e.g. 4B, 6B+K, 1[K], jump B and B+K)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> 4[A] > 2BB:B > 6B+K > 6BA > 2BK > TAS B` | 136 |  | [link](https://streamable.com/j2ey8) |

##### Fast Recovery Guard Crush (e.g. 66B, 4A+B, AS K)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> 9A > 9A > 6BA > 2BK > TAS B` | 124 | Easier to do if your opponent has wall slightly to your right | [link](https://streamable.com/xmwk2) |
|  | `> 44K > 9A > 6BA > 2BK > TAS B` | 112 |  |  |
|  | `> 44K > TAS K > 6BA > 2BK > TAS B` | 110 | Good if you want your opponent to go left | [link](https://streamable.com/nkndc) |

##### Fast Recovery Guard Crush (e.g. 66B, 4A+B, AS K), Character specific (Check note)

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `> 44K > 4(A) > 2BB:B > 6BA > 2BK > TAS B` | 133 | Easier to do if your opponent has wall slightly to your left | [link](https://streamable.com/qly73) |

#### STAGE SPECIFIC


##### Astral Chaos: Tide of the Damned

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
| `Any Launcher (66B \| 3B \| 66K \| 44B \| AS B:B \| TAS B:B)` | `AS B:B > 6B+K > 6BA > 2BK` | 96 | Ring out, if stage barrier has been used once |  |
| `Almost Any Launcher (66B \| 3B \| 66K \| 44B)` | `66K > 6BA > 2BK` | 96 | Ring out, if stage barrier has been used twice |  |

> *Here you have old combos that are not as useful anymore (patch / balance changes etc.)*

#### COMBO ARCHIVE


##### In-game move list

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `3B ~ 236AA` | 51 | In-game move list combo |  |
|  | `33_66_99 B ~ 66A+B` | 56 | In-game move list combo |  |
|  | `3B ~ 4A+BB ~ 4B` | 70 | In-game move list combo, in Soul Charge |  |
|  | `33_66_99 K ~ A+B+K` | 76 | In-game move list combo |  |

##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `3B > wrB+K > TAS B > 4B` | 63 | Should work on everyone |  |
|  | `3B > TAS B > 4B` | 54 | Should work on everyone |  |
|  | `1[K] > 3K` | 40 | Guaranteed |  |
|  | `66B > TAS B > 4B` | 62 | Should work on everyone at 66B distance |  |
|  | `66B > wrB+K > TAS B > 4B` | 72 | if you have problems try 66B 2G B+K TAS B 4B you need to be very close to enemy | [link](https://twitter.com/JordanMizell/status/1053348311095107585) |
|  | `66K > TAS B > TAS B` | 60 |  |  |
|  | `44B > TAS B > 4B` | 66 |  | [link](https://www.youtube.com/watch?v=i_rTNolMqTo) |
|  | `66A+B > 4B` | 51 | You are fishing for LH on Run Counter (Back) but if you didn't get it just go for 4B (3B in this case may whiff on max 66A+B range) |  |
|  | `22_88A+B > [G] > TAS B > 4B` | 66 |  | [link](https://www.youtube.com/watch?v=jmw_fHRRKqg) |
|  | `22_88A+B > [G] > TAS B > TAS B` | 74 | Tight execution |  |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `1K > 3K` | 31 | Guaranteed |  |
|  | `44A > TAS B > 4B` | 63 | Tight execution window for TAS B |  |

##### Lethal Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `1[K] LT > TAS AA > 44B+K` | 73 | Tight execution |  |
|  | `44B LT > 22A+B > wrB+K > TAS B > 4B` | 67 | Most damage |  |
|  | `66A+B LT > 22A+B > wr B+K > TAS B > 4B` | 101 |  |  |
|  | `TAS B LT > 2BB:4_B` | 71 | If enemy is close |  |

##### Lethal Hit Soul Attack Combos

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `22_88_11_44_77 B+K LT > SA` | 70 |  |  |

#### ARCHIVE — WALL COMBOS


##### No requirements

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `1AA w! 6B+K w! > TAS AA > wrB+K > AS:B :4` | 130 | Doesn't work anymore |  |
|  | `66B w! TAS AA AS B:B w! 2BB` | 113 | Doesn't work anymore | [link](https://www.youtube.com/watch?v=JUQfjHq7zPM) |

##### Counter Hit

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `44A w! TAS AA > wrB+K > AS B:B w! 66K > TAS B > 4B` | 88 | Thanks to scaling last hit doesn't do any damage lol |  |

##### While Soul Charged

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `66B w! TAS AA AS B:B 2BB:4` | 140 | AS BB is really tricky to do, very position dependant | [link](https://www.youtube.com/watch?v=Kis_dbI6WNI) |
|  | `66B w! TAS AA AS B:B(exact!) 6BA 2BK TAS B` | 149 | AS BB exact you wont get lethal hit on 2BK if you didnt get it, do combo above | [link](https://www.youtube.com/watch?v=HPMRJeGY4EY) |
|  | `66B w! TAS AA > wrB+K > AS B:B > 2BB:4` | 141 |  |  |

#### ARCHIVE — UKEMI

> go for these if your opponent uses Ukemi way too often, for more info about Ukemi check "Game Mechanics" section


##### Ukemi Forward, Back or Right

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `66B > TAS B > TAS B` | 70 | After first TAS if enemy uses Ukemi back forward or right he will be hit by 2nd TAS B | [link](https://twitter.com/chronica_0/status/1052952459394437121) |

#### ARCHIVE — STAGE SPECIFIC


##### Astral Chaos: Tide of the Damned

| Starter | Combo | Dmg | Notes | Source |
|---|---|---|---|---|
|  | `3B w! 6B+K w! 6BA > 2BK` | 85 | Ring out, if stage barrier has been used once. You can be creative and replace 3B with anything else that will give you wall splat |  |
|  | `TAS B:B w! 6B+K w! 6BA > 2BK` | 91 | Original | [link](https://twitter.com/chronica_0/status/1054055423576223744) |

### Lethal Hits tab (verbatim) — 2020-04-05

Sheet header note: *"For best followups check tab 'Combos' and Lethal Hit section."* `IMP` = impact frame (my reading — matches 📊 `i` everywhere except `1(K)`, see the ⚑ table).

| Name | Input | Hits | Properties | IMP | Condition | Notes | Link |
|---|---|---|---|---|---|---|---|
| **LETHAL HIT ATTACKS** |  |  |  |  |  |  |  |
| Tornado Low Kick | `1(K)` | L | LH | 20 | Maximally delayed 1K hitting enemy after his GI | Tracking, Knockdown |  |
| Guardian Spear Kick | `2BK` | MH | LH | 16 | K lands on enemy back | Knockdown, Makes enemy face away |  |
|  | `wc BK` | MH | LH |  |  | Knockdown, Makes enemy face away |  |
| Elk Strike | `A+B` | M | BA LH | 38 | Break enemy Guard Impact or Reversal Edge with this move | Knockdown |  |
| Twin Step Grace | `4A+B` | MM | TC LH | 18 | Triggers on whiffed throw | Stun, KND, RO, TC[10~], NC, you need to be very close to hit grounded opponent |  |
| Guardian Upper | `11_44_77 B` | M | LH | 22 | Done after your successful level 3 GI (check "Game Mechanics" tab) | Launcher, Knockdown | [video](https://www.youtube.com/watch?v=7kfsrxnfTRU) |
| Lodestar Strike | `33_66_99 A+B` | H | LH | 18 | Run counter (back), does not ring out | Knockdown, Juggle |  |
| Olympus Shower | `22_88_11_44_77 B+K` | M | LH | 26 | Using this attack after sidestepping enemy vertical | Knockdown Ring Out | [video](https://www.youtube.com/watch?v=-WxeCs4MNWM) |
| Holy Arrow Kick | `AS K` | H | TC LH | 16 | Dodge high horizontal (not throw) with Angel Step and hit enemy with this attack | Stun, Knockdown, TC[2-6], Possible Combo | [video](https://www.youtube.com/watch?v=0YfXV9SNIc8) |
| Seraphim Echo | `TAS AB` | MM | BA LH | 20 | Hit enemy with B during enemy GI | Stun, Knockdown |  |
| Seraphim Strike | `TAS B` | M | LH | 16 | Dodge enemy high or mid horizontal and hit enemy with this attack | Stun, Knockdown | [video](https://www.youtube.com/watch?v=rbP299lh-3Q) |
| Heaven's Arch | `33_66_99 A+G` | H | TH LH | 18 | after using GI 5 times successfully (doesn't have to be in a row and count aGI buttons like 6A+B, 6A and 6B), if you will succeed you lose charges and you have to get 5 GIs again, you don't lose GI charges between rounds |  |  |
| Heaven to Hell | `4A+G, A_4A` | H | TH LH | 18 | after using GI 5 times successfully (doesn't have to be in a row and count aGI buttons like 6A+B, 6A and 6B), if you will succeed you lose charges and you have to get 5 GIs again, you don't lose GI charges between rounds | Makes enemy face away, facing away from opponent, KND |  |
| **while soul charged** |  |  |  |  |  |  |  |
| Seraphim Punisher | `TAS B` | M | SC LH | 16 | Dodge enemy high or mid horizontal and hit enemy with this attack | Stun, Knockdown | [video](https://www.youtube.com/watch?v=BJ7jlZqSI8w) |
| Twin Step Sword Rain | `11_44_77 A+B B` | MMM | SC BA TC LH | 18 | Triggers on whiffed throw | Stun, KND, RO |  |
| Twin Step Sword Rain | `4A+B B` | MMM | SC BA TC LH | 18 | Triggers on whiffed throw | Stun, KND, RO |  |
| **after reversal edge hits (B+G)** |  |  |  |  |  |  |  |
| Celestial Blade | `A` | H | LH |  | Initiate Reversal Edge and win in second clash with A | Stun, Knockdown |  |
| Celestial Blade ~ Angel Step | `A 6` | H | SS LH |  | Initiate Reversal Edge and win in second clash with A | Stun, Knockdown, goes into Angel Step Stance |  |
| Angel Vanguard | `B` | MM | BA LH |  | Initiate Reversal Edge and win in second clash with B | Launcher, Stun, Knockdown |  |
| Spiritual Spin Kick | `K` | M | LH |  | Initiate Reversal Edge and win in second clash with K | Stun, Knockdown |  |
