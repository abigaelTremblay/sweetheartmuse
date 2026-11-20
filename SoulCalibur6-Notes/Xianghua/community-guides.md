# Xianghua — 📚 Community guides (third-party, NOT my lab)

> **Everything in this file is 📚 third-party.** Nothing here is ✅ until I test it.
> Where it disagrees with my ✅ lab notes, **my lab wins** until retested — both are recorded.
> Fetched 2026-10-14. Raw values kept verbatim; patch/version not stated by either source.

| Source | Author | Era | Link |
|---|---|---|---|
| **Guide** — "SOULCALIBUR VI Season 2 Xianghua Guide" | Jacky15x | Season 2 | [Google Doc](https://docs.google.com/document/d/16eqnLIvw1QiJ9a3Ru4ZwkcyDiJYyQESaen2-U4Q3wSE) |
| **Sheet** — Xianghua combo list | Kayane, YinCresent, feetiemaomao, Aysko, Xianghua Discord | unknown; ukemi tab self-marked **"NOT UPDATED!!"** | [Google Sheet](https://docs.google.com/spreadsheets/d/1jGWIun_vbrJOvZpLnGq0gpsJ6GZvXDujs8jZXUSeI3s) |

**Notation in these sources ≠ mine:**

| Theirs | Mine | Example |
|---|---|---|
| `[A]` hold | `(A)` | `A[A]` = `A(A)` |
| `.` (sheet) | next input in the **same** string | `6B.B` = `6BB` |
| `~` | next move in a combo | |
| `_` | alternatives | `2_3A+G` = `2A+G` or `3A+G` |
| lowercase (`a`, `b+k`) | slide / tap | |
| `2_3A+G`, `1A+GB+K` | **crouch throws** | |
| `HL` | Hou Lee (`B+K` spin) | |
| `BHH` / `LBHH` / `RBHH` | aGI stances: Bea Her Hua (horiz.) / Laughing / Retreating (vertical) | |
| `QS` | Quake Stun (the damaging `2B+K` hit) | |
| `iFC` | instant FC: `2G`/`3G` then FC move after 5f (sheet: `[3]gB` = iFC 3B) | |
| `RCC` | from crouch, tap `2/4/6/8` → neutral → standing move after 1f | |
| "Reverse Impact" | GI/RE counter-play after being GI'd | ❓ term ≠ Resist Impact (Q21) |

Sheet legend facts: **"All combos with throws can be throw escaped."** CH damage
tested with attack counter. GC damage tested with `3B` to GC.

---

# ⚠️ VS MY NOTES

### ❌ Contradictions

| Topic | My notes | 📚 Says | Status |
|---|---|---|---|
| **`A(A)` vs RE** | ✅ `A(A)`→`SXS A+B` too early **vs a full-duration RE hold** | Guide lists `A[A]`, `a[K]`, `FC 3[A]`, `WR [A]`, `SC 6K[B]` as SXS entries that evade RE with `SXS A+B`. Omits `BB[B]` | ✅ **Resolved 2026-10-14 — both right.** Early release (typical) → `A(A)` works; full hold → I'm in a 50/50 (`SXS A+B` now vs `2 ~ PXS` → `PXS A+B`) |
| **`4A+B` coverage** | SITUATIONAL row: "vertical `B` → `4A+B`" | Guide + wiki: `4A+B` = **horizontal** H/M; **`6A+B` = vertical** H/M. Both exclude kicks/non-weapon | **My own aGI table already says horizontal** — the SITUATIONAL row is internally inconsistent. Fixed with a pointer |
| **`6K(A)` aGI type** | aGI table lists `6K(A)` under **vertical** (from wiki "GI vs vertical") | Guide: `6K[A]`/`6K[A+B]` enter **BHH**, which "aGIs i12-or-faster **horizontal**" block-punishes. Wiki also says BHH = horizontal | ❓ source conflict → Q58 |
| **`SXS K+G`** | ❌ Dismissed: "useless taunt, i51, 1 dmg" | Guide: `SXS K+G` and **`SXS 6K+G`** both +10 hit / +0 blk, **Soul Gauge** on completion; `6K+G` better (mid, faster). Combo `~ AA` 19–20 | Different value judgement. My test was `K+G` only; **`6K+G` untested** → Q59 |
| **`66B[B]` follow-ups** | ✅ "no juggle"; `6BB` best = **72**; standing moves whiff over the collapse | Sheet: `66B[B]` hit → `6B.B` **70** · `bK` **65** · **`2_3A+G` = 92** (crouch throw) · `1A+G.B+K` routes | **Doesn't contradict "no juggle"** — a throw isn't a juggle. But "6BB best" may not hold. ⚠️ throw = breakable → Q56 |
| **`3B` enders** | `3B+KK` default (57) ✅; "drops at max range" | Sheet: `3B ~ 3B+K.K` = 55 **"use at tip range"**; `3B+K ~ 6B.B` 63 tip; **close range → `66B+K`** 54 | Opposite range advice. Damage 55 vs my 57 ✅ → Q60 |
| **LHH/RHH naming** | Glossary (wiki): `44B+K` = **Laughing** | Guide/sheet: raw `11_44_77B+K` = **Retreating** (RBHH); Laughing = the `B4` branches | Name only; both vertical. Glossary note added |
| **`BBK` "self-covering"** | `mixup-loops.md` §1 | Steppable + punishable after blocked `BB` | ✅ Confirmed: beats stand guard, loses to step |

### ✅ Agreements (independent confirmation)

| Topic | Agrees with |
|---|---|
| `BBK` +4 hit, **recovers FC** | ✅ BBK ends crouching |
| `6BA` −2 hit, FC · `3A` −2 hit, FC | ✅ FC routes |
| `3AK` guaranteed **only on CH**; can be crouched on NH | frame-trap framing |
| `66B` −2 blk; `66BB` vs `66B[B]` = mixup; `66B[B]` steppable | ✅ mixup, not ranking |
| `PXS BB` 2nd hit delayable/hit-confirmable, punishable on block | ✅ Q9 |
| `44[A]` +2 blk | ✅ |
| `4A` aGI horizontal H/M | ✅ aGI table |
| `3B` = i18 punish | ✅ punish table |
| `1A` LH on side roll → `6BB` (sheet: 53) | ✅ oki table |
| `FC 3A` +0 hit | ✅ |

### 📚 Informs open questions (not answers)

| Q | What the 📚 says |
|---|---|
| **33** `BBK` after blocked `BB` | ✅ **Confirmed 2026-10-14:** low lands vs a standing block; whole `BBK` steppable |
| **35** `6AA` after blocked `6A` | "`6AA` is guaranteed when `6A` connects **on CH**" → implies not guaranteed otherwise |
| **34** `66ABB` | "`66ABA` safe on block vs most; can GC." `66AB` "**recovers into FC**" (my ✅: `66ABB` ends standing — different move) |
| **11** `3A2`/`6B2` vs mids | PXS evades **highs, horizontal mids, thrusting vertical mids**. My listed i14 punishers (`B`, `3K`, `2B`) are non-thrust verticals → consistent with "they still punish" |
| **27** `SXS B+K` vs mid horizontals | `SXS/PXS B+K` → BHH aGIs horizontals "like `2A`"; wiki `[GI][12-28]` vs horizontal H/M |
| **8** `2B+K` damage version | Sheet calls the damaging hit **`2B+K QS`** (quake stun) and lists combos; access condition still not stated |
| **21** Resist Impact | Guide never names it. Its "Reverse Impact" is the post-GI game |
| **19/40** crouch throws | Xia's own `2_3A+G`/`1A+GB+K` are i10 and **only catch crouchers** → evidence low throws exist that crouching does not beat |
| **31/32** damage model | More 2-hit data points: `3B ~ 6K.A` 46 · `WR B ~ 66K` 46 · `4K ~ 66K` 26 · `4K ~ 3B` 29. ⚠️ unknown patch; my `3B→6KA` = 47 ✅ |
| **10** `3AK` → `1A` | Sheet ukemi tab: `3A.K CH` follow-ups vs each ukemi direction (outdated) |

---

# 📚 GUIDE DIGEST (Jacky15x)

### Punish list (block)

| i | Moves |
|---|---|
| 10 | `AA`, `SC AB`, `1A+GB+K`*, `2_3A+G`* |
| 12 | `2A`, `4B`, CE ‖ `FC A`, `WR K` |
| 14 | `6A`, `BB`, `k6`, `66K` |
| 16 | `6KA`, `6KA+B`, `SC 6KBB`, `4K`, `66AB`, SA ‖ `WR B`, `FC 3K` |
| 18 | `6BB`, `3B`, `SC 66B+KB` ‖ `FC 3B` |
| 20 | `3B+KK`, `66BB` |

\* only vs moves that recover crouching (e.g. **every character's `2K`**).

### Move notes not in my files

| Move | 📚 Claim |
|---|---|
| `66AB` | 1st hit horizontal high, 2nd safe; **recovers FC**. `66ABA`/`66ABB` mid/low mixup; `66ABaG`/`66ABbG` feints |
| `66BB` | Guaranteed after `66B` (hit); **heavily punishable on whiff** |
| `66K` | Linear mid, fast, short, safe |
| `22_88A` | −2 blk, turns them around on hit |
| `WR AA` / `WR A` | +4 / **+2 hit**, safe; stays crouched (evades highs). `WR A` **leaves her FC** |
| `WR KB` | Commit if `WR K` will CH; stops them acting after blocked `WR K` |
| `FC 3AA` | Guaranteed on **CH**; hit-confirmable |
| `FC 3AB` | More damage than `FC 3AA` but **can be crouched** |
| `1K` | +2 hit, pushback |
| `1kAA` | Mid mixup vs `1K`; 2nd hit hit-confirmable |
| `1A` | +4 hit, **recovers FC** |
| `1aG` | Feint → **BT** |
| `8B+K` / `8b+kG` | Long low / feint → **FC** |
| `B+K` (Hou Lee) | Evades highs throughout, **recovers FC**. `B+KB` −2; `B+K[B]` slow BA |
| `1B+K` | Mid, evades highs **and verticals**, safe |
| `44B` | Backstep, makes short moves whiff |
| `7_8_9B/K` | Jump: evade lows **and throws** |
| `2K` / `FC K` | Recover FC, −4 hit (wiki: `2K` −4 hit ✅ matches) |
| `6B2` | Not good on NH; +4 on CH; punishes GI attempts |
| `8KK` / `22K` → PXS | "+ on block" → occasional PXS mixup |
| CE | i12 — "fastest in the game" |
| `WD A+B` | "crybaby" — interrupts oki |

### Throws

| Input | Break | Notes |
|---|---|---|
| `A+G` | neutral | no ukemi |
| `4A+G` | back | ukemi possible |
| `214A+G` | back (command) | +6 if broken, restores guard. `66K` oki after |
| `1A+GB+K` (JF: `B+K` as feet land) | crouch | crouchers only |
| `2_3A+G` | crouch | crouchers only; W! / RO forward |
| Side / back throws | — | back throws breakable only by Astaroth/Voldo |

### Stances

**SXS** — feint stance; entering builds Soul Gauge. In SC, gains aGI vs high/mid weapon attacks.
**PXS** — evades highs, horizontal mids, thrust vertical mids.

| Move | 📚 Claim |
|---|---|
| `A[A]` | +4 hit → SXS; mix with `AAA`/`AAB` |
| `a[K]` | +2 hit → SXS |
| `SXS A` | CH at tip → `6BB ~ BT B+K ~ 6KA` (85) |
| `SXS [B]` | **BA, +12 blk, forces crouch** → `WR K` / crouch throw / CE guaranteed |
| `SXS K` | LH on whiffed high |
| `SXS A+G_4A+G` | +14 hit, +6 broken; break dir depends on input |
| `SXS/PXS` crouch throws | catch `2A`/`2K` stance interrupts |
| `SXS A+B` | LH on whiffed RE |
| `SXS a+b6` | horizontal high, −2 blk, combos on NH; LH on whiffed GI |
| `PXS AA` | 1st hit "invisible" horizontal low; 2nd mid, +2 hit, FC; 2nd whiffs on grounded |
| `PXS BB` | 2nd hit delayable, hit-confirm, punishable |
| `SXS/PXS 4K+G` | punishable taunt, fast whiff recovery |
| `SXS/PXS K+G`, `6K+G` | +10 hit / +0 blk; gauge on completion; `6K+G` = mid, faster |
| `SXS/PXS B+K` | → BHH, aGIs horizontals like `2A` |
| `PXS G` | → FC |

**BHH** (horizontal H/M aGI, **incl. kicks**) — entries `FC 3A[A]`, `6K[A]`, `6K[A+B]`, `22_88B+K`, `SXS/PXS B+K`.
`BHH A` high · `BHH B` mid → RE on hit, −2 · `BHH K` lows, W!/RO, hits slow risers · `BHH A+B` BA, LH vs GI/RE · `BHH A+B6` LH after aGI (timing).

**LBHH / RBHH** (vertical H/M aGI, **incl. kicks**) — no stance moves; parry just stuns.
`AAB4`, `6B4`, `33_66_99B4`, `33_66_99BB4`, `11_44_77B4` (→ `3B` guaranteed on parry for `AAB4`/`44B4`).
`11_44_77B+K` raw RBHH: **≥ +16** after parry → `4K` / `6KA` guaranteed.

### aGI coverage (📚)

| Move | Covers | Excludes |
|---|---|---|
| `4A` | horizontal H/M | |
| `2A+B` | **all lows** | |
| `4A+B` | **horizontal** H/M | kicks, non-weapon |
| `6A+B` | **vertical** H/M (1st hit is a horizontal mid) | kicks, non-weapon |
| BHH | horizontal H/M | — includes kicks |
| LBHH / RBHH | vertical H/M | — includes kicks |

### Post-GI (I GI'd them)

Stun window: **28f Lv3 GI · 16f Lv2 GI.**

| Option | When |
|---|---|
| `A+B` | they attempt Reverse Impact (GI/RE) → LH |
| `A+B6` | Lv3 GI, they don't respond → LH |
| `a+b2`/`A+B2` | → PXS; react: `PXS A+B` vs RE, `PXS BB`/`PXS a+b6` vs GI |
| `4K` | Lv2; W!/RO; safe-ish vs GI, safe vs RE |
| CE | Lv2 / Lv3 |
| `44[A]` | Lv3; catches step + early GI; safe vs RE, +2 blk |

### RE

| Option | Follow-up |
|---|---|
| `RE A` (LH) | `6BB ~ BT B+K ~ 6KA` / `9KK2 ~ PXS BB` |
| `RE AA` low KND · `RE AaG` → BT · `RE AB` mid launch | |
| `RE K` | `4B` / CE; LH → long routes |
| `RE KB+K` | → Hou Lee; `HL B` can't be interrupted if `RE K` hit |

**Their RE:** sidestep the RE strike → `22_88A+B`. Moves that still sidestep it after being absorbed:
`6A` `FC 3A` `WR A` `7_8_9A` `BT A` `BT 2A` `B` `2B` `4B` `WR B` `7_8_9B` `BT B` `BT 2B` `K` `3K` `4K` `BT K` `22_88A` `11_44_77A` `11_44_77[A]` `33_66_99B` `22_88K` `SC AAB` `SC 3AA`.
SXS entries for `SXS A+B`: `A[A]` `a[K]` `FC 3[A]` `WR [A]` `SC 6K[B]` (⚠️ my ✅: `A(A)` too early; `BB(B)` works).

### Okizeme (📚)

| Option | Claim |
|---|---|
| **`66K`** | Safe on block; stops **every** wakeup option (roll, GI, SC…) after `214A+G`, `6KA`/`6KA+B`, `bK` enders. Default when unsure |
| `6B2` | Replace `6BB` ender → PXS; `PXS AA`/`PXS BB` both hit grounded (AA 2nd hit whiffs) |
| `1A` | LH vs side roll → `6BB` |

### Wall

| W! height | Follow-up |
|---|---|
| low | `6BB` / crouch throw |
| medium | `3B W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6BB`/`bK` |
| high | `B+KB W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6BB`/`bK` |

Sheet: **"CE is guaranteed after W! with any move"**; `1A+G.B+K` / `2_3A+G` usable after any W!.

### Guard crush

Few BAs, all evadable. BA GC%: `B+K[B]` 15% · `2B+K` 15% · `FC 3B+K` 15% (+ others in source).
Best midscreen post-GC: `6[B+K] ~ CE` (sheet: 59; `GC ~ 44[A] ~ …` 74 after GC with `bK`/`FC 3B`/`22_88K`/`6A+B`).

---

# 📚 SHEET — combo tables (verbatim)

> Generated from the sheet export. Damage `—` = blank in source. Do not sum into my damage model without checking hit counts.


## Combo List


### Normal Hit Combo

| Input | Damage | Notes |
|---|---|---|
| `11_44_77[A] ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 58 |  |
| `11_44_77[A] ~ 3B ~ 6K.A_A+B` | 53 |  |
| `11_44_77[A] ~ 9K.K.2 ~ PXS B.B` | 64 |  |
| `11_44_77[A] ~ 9K.K.2 ~ PXS K ~ CE` | 71 |  |
| `11_44_77[A] ~ SA.A ~ 6B.B` | — |  |
| `3B ~ 6K.A_A+B` | 46 |  |
| `3B ~ 3B+K.K` | 55 | Use when 3B hits at tip range |
| `3B ~ 3B+K ~ 6B.B` | 63 | Use when 3B hits at tip range |
| `3B ~ 66B+K` | 54 | Use when 3B hits at close range |
| `3B ~ CE` | 80 |  |
| `FC 3B ~ 3B+K.K` | 57 |  |
| `FC 3B ~ 3B+K ~ 6B.B` | 60 |  |
| `FC 3B ~ 66A+B` | 49 | Use to ring out |
| `FC 3B ~ 66[A+B] ~ SXS K ~ bK` | 57 |  |
| `FC 3B ~ 66[A+B] ~ SXS K ~ 6B.B` | 60 |  |
| `FC 3B ~ CE` | 76 |  |
| `WR B ~ 66K` | 46 |  |
| `22_88B ~ 6K.A_A+B` | 45 |  |
| `22_88B ~ 66B+K` | 52 | Use when 22_88B hits at close range |
| `22_88B ~ CE` | 73 |  |
| `4K ~ 66K` | 26 |  |
| `4K ~ 3B` | 29 |  |
| `22_88K ~ bK` | 54 |  |
| `22_88K ~ 6B.B` | 55 |  |
| `22_88K.2 ~ PXS B.B` | — |  |
| `22_88K.2 ~ PXS K ~ CE` | 80 |  |
| `1_2_3A+B ~ bK` | 39 |  |
| `1_2_3A+B ~ 6B.B` | 41 |  |
| `1_2_3A+B ~ 1A+G.B+K ~ 6K.A_A+B` | — |  |
| `1_2_3A+B ~ 1A+G.B+K ~ CE` | — |  |
| `1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A_A+B` | — |  |
| `1_2_3A+B ~ 1A+G.B+K JF ~ CE` | — |  |
| `1_2_3A+B ~ 2_3A+G` | 65 |  |
| `1_2_3A+B ~ CE` | 77 |  |
| `4A+B ~ 66K` | 50 |  |
| `22_88A+B ~ 3B+K.K` | 57 |  |
| `22_88A+B ~ 3B+K ~ 6B.B` | 69 |  |
| `22_88A+B ~ CE` | 87 |  |
| `2B+K QS ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 53 |  |
| `2B+K QS ~ 6B.B ~ CE` | 66 |  |
| `2B+K QS ~ 3B ~ 6K.A_A+B` | 40 |  |
| `2B+K QS ~ 3B ~ CE` | 64 |  |
| `2B+K QS ~ CE` | 62 |  |
| `4B+K ~ bK` | 72 |  |
| `4B+K ~ 6B.B` | 74 |  |
| `FC 3B+K ~ bK` | 45 |  |
| `FC 3B+K ~ 6B.B` | 51 |  |
| `FC 3B+K ~ CE` | 84 |  |
| `BT B+K ~ 6K.A_A+B` | 45 |  |
| `BT B+K ~ 1A+G.B+K` | — |  |
| `BT B+K ~ 1A+G.B+K JF` | — | Input B+K right before feet touches the ground for JF |
| `BT B+K ~ 2_3A+G` | 65 | Can be used to ring out / Returns to WD state |
| `BT B+K ~ CE` | 77 |  |
| `BT B+K ~ SA.A ~ 6B.B` | — |  |
| `BT 2B+K ~ 1A+G.B+K ~ 6K.A_A+B` | — |  |
| `BT 2B+K ~ 1A+G.B+K ~ CE` | — |  |
| `BT 2B+K ~ 1A+G.B+K JF ~ 6K.A_A+B` | — | Input B+K right before feet touches the ground for JF |
| `BT 2B+K ~ 1A+G.B+K JF ~ CE` | — | Input B+K right before feet touches the ground for JF |
| `BT 2B+K ~ 2_3A+G` | 60 | Can be used to ring out / Returns to WD state |
| `1A+G.B+K ~ 6K.A_A+B` | 54 | Use when opponent is crouching or attempting ukemi |
| `1A+G.B+K ~ CE` | 82 | Use when opponent is crouching or attempting ukemi |
| `1A+G.B+K ~ SA.A ~ 6B.B` | — | Use when opponent is crouching or attempting ukemi |
| `1A+G.B+K JF ~ 6K.A_A+B` | 59 | Use when opponent is crouching or attempting ukemi |
| `1A+G.B+K JF ~ CE` | 88 | Use when opponent is crouching or attempting ukemi |
| `1A+G.B+K JF ~ SA.A ~ 6B.B` | — | Use when opponent is crouching or attempting ukemi |

### Counter Hit Combo

| Input | Damage | Notes |
|---|---|---|
| `3A.K CH ~ bK` | 46 | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 6B.B` | 49 | Second hit of 3A.K only guaranteed on CH |
| `4A.A CH ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 59 | Guaranteed when only the second hit of 4A.A hits on CH |
| `4A.A CH ~ SA.A ~ 6B.B` | 61 |  |
| `11_44_77A CH ~ bK` | 39 |  |
| `11_44_77A CH ~ 6B.B` | 46 |  |
| `6B.B CH ~ BT B+K ~ 6K.A_A+B` | 57 |  |
| `6B.B CH ~ CE` | 69 |  |
| `1B CH ~ bK` | 32 |  |
| `1B CH ~ 6B.B` | 38 |  |
| `1B CH ~ 1A+G.B+K ~ 6K.A_A+B` | 53 |  |
| `1B CH ~ 1A+G.B+K JF ~ 6K.A_A+B` | 60 |  |
| `1B CH ~ 2_3A+G` | 60 |  |
| `33_66_99B.B CH ~ bK` | 54 |  |
| `33_66_99B.B CH ~ 6B.B` | 58 |  |
| `33_66_99B.B CH ~ 1A+G.B+K ~ 6K.A_A+B` | — |  |
| `33_66_99B.B CH ~ 1A+G.B+K JF ~ 6K.A_A+B` | — | Input B+K right before feet touches the ground for JF |
| `33_66_99B.B CH ~ 2_3A+G` | 75 | Can be used to ring out / Returns to WD state |
| `FC 3K.B.6 CH ~ bK` | 67 | Use when first hit of FC3K.B.6 hits on CH |
| `FC 3K.B.6 CH ~ 6B.B` | 72 | Use when first hit of FC3K.B.6 hits on CH |
| `11_44_77A+B CH ~ bK` | 44 |  |
| `11_44_77A+B CH ~ 6B.B` | 51 |  |
| `11_44_77A+B CH ~ CE` | 92 |  |
| `6[B+K] CH ~ 6K.A_A+B` | 77 | Second hit of 6[B+K] only guaranteed on CH |
| `6[B+K] CH ~ CE` | 111 | Second hit of 6[B+K] only guaranteed on CH |

### Mixup Combo

| Input | Damage | Notes |
|---|---|---|
| `FC 3A.B ~ 6B.B` | 72 | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 1A+G.B+K ~ 6K.A_A+B` | 91 | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 1A+G.B+K ~ SA.A ~ 6B.B` | — | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 1A+G.B+K JF ~ 6K.A_A+B` | 100 | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 1A+G.B+K JF ~ SA.A ~ 6B.B` | — | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 2_3A+G` | 100 | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ CE` | 113 | Use when second hit of FC 3A.B connects |
| `33_66_99B.[B] ~ bK` | 65 | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 6B.B` | 70 | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 1A+G.B+K ~ 6K.A_A+B` | — | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 1A+G.B+K ~ SA.A ~ 6B.B` | — | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 1A+G.B+K JF ~ 6K.A_A+B` | — | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 1A+G.B+K JF ~ SA.A ~ 6B.B` | — | Use when second hit of 6B.[B] connects |
| `33_66_99B.[B] ~ 2_3A+G` | 92 | Use when second hit of 6B.[B] connects / Returns to WD state |
| `7_8_9K.K.2 ~ PXS B.B` | — | Use when third hit of 7_8_9K.K.2 connects |
| `7_8_9K.K.2 ~ PXS K ~ CE` | 91 | Use when third hit of 7_8_9K.K.2 connects |

### Special Stance Combo

| Input | Damage | Notes |
|---|---|---|
| `SXS A CH ~ A.A.B` | 62 |  |
| `SXS A CH ~ A.[A]` | 47 | Returns to SXS |
| `SXS A CH ~ 6B.B` | 53 |  |
| `SXS A CH ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 85 | Use when SXS A hits at tip range |
| `SXS A CH ~ 1A+G.B+K ~ 6K.A_A+B` | — |  |
| `SXS A CH ~ 1A+G.B+K ~ SA.A ~ 6B.B` | — |  |
| `SXS A CH ~ 1A+G.B+K JF ~ 6K.A_A+B` | — |  |
| `SXS A CH ~ 1A+G.B+K JF ~ SA.A ~ 6B.B` | — |  |
| `SXS A CH ~ 2_3A+G` | 81 |  |
| `SXS A CH ~ CE` | 94 |  |
| `SXS A CH ~ SA.A ~ 6B.B` | — |  |
| `SXS [B] ~ WR K` | 10 | Use when SXS [B] is guarded |
| `SXS [B] ~ WR [K]` | 10 | Use when SXS [B] is guarded / Returns to SXS |
| `SXS [B] ~ 1A+G.B+K ~ 6K.A_A+B` | 32 | Use when SXS [B] is guarded |
| `SXS [B] ~ 1A+G.B+K ~ SA.A ~ 6B.B` | — | Use when SXS [B] is guarded |
| `SXS [B] ~ 1A+G.B+K JF ~ 6K.A_A+B` | 38 | Use when SXS [B] is guarded / Input B+K right before feet touches the ground for JF |
| `SXS [B] ~ 1A+G.B+K JF ~ SA.A ~ 6B.B` | — | Use when SXS [B] is guarded / Input B+K right before feet touches the ground for JF |
| `SXS [B] ~ 2_3A+G` | 38 | Use when SXS [B] is guarded / Can be used to ring out / Returns to WD state |
| `SXS [B] ~ CE` | 45 | Use when SXS [B] is guarded |
| `SXS K ~ 3B` | 32 | Use when opponent is in WD state |
| `SXS K ~ CE` | 66 | Use when opponent is in WD state |
| `SXS a+b6 ~ 66K` | 51 |  |
| `SXS A+G_4A+G ~ 4B` | 37 |  |
| `SXS A+G_4A+G ~ 66K` | 39 |  |
| `SXS A+G_4A+G ~ k6` | 44 | Whiffs against Nightmare |
| `SXS A+G_4A+G ~ CE` | 85 |  |
| `SXS K+G ~ A.A` | 19 |  |
| `SXS K+G ~ A.[A]` | 19 | Returns to SXS |
| `SXS 6K+G ~ A.A` | 20 |  |
| `SXS 6K+G ~ A.[A]` | 20 | Returns to SXS |
| `BHH A ~ 66K` | 42 |  |
| `LBHH aGI ~ 3B ~ 6K.A_A+B` | 51 |  |
| `LBHH aGI ~ iFC 3B ~ 66[A+B] ~ SXS K ~ 6B.B` | 65 | iFC 3B performed by inputting [3]gB |
| `RBHH aGI ~ 6K.A_A+B` | 34 |  |
| `RBHH aGI ~ CE` | 78 |  |

### Soul Charge Combo

| Input | Damage | Notes |
|---|---|---|
| `SC A.A.B.K ~ 1A+G.B+K ~ 6K.B.B` | 59 | Use when SC A.A.B.K is guarded |
| `SC A.A.B.K ~ 1A+G.B+K ~ 6K.[B]` | 49 | Use when SC A.A.B.K is guarded |
| `SC A.A.B.K ~ 1A+G.B+K ~ 6K.B.B` | 52 | Use when SC A.A.B.K is guarded |
| `SC A.A.B.K ~ 1A+G.B+K ~ 6K.[B]` | 42 | Use when SC A.A.B.K is guarded |
| `SC A.A.B.K ~ 2_3A+G` | 37 | Use when SC A.A.B.K is guarded |
| `SC A.A.B.K QS ~ 6[B+K] ~ 66A+B.B ~ bK.B` | 89 |  |
| `SC A.A.B.K QS ~ 6[B+K] ~ 66A+B.B ~ 6B.B` | 86 |  |
| `SC A.B ~ bK.B` | 50 | Returns to BT state |
| `SC A.B ~ 6B.B` | 47 |  |
| `SC A.B ~ 1A+G.B+K ~ 6K.B.B` | — |  |
| `SC A.B ~ 1A+G.B+K ~ 6K.[B]` | — | Returns to SXS |
| `SC A.B ~ 1A+G.B+K JF ~ 6K.B.B` | — |  |
| `SC A.B ~ 1A+G.B+K JF ~ 6K.[B]` | — | Returns to SXS |
| `SC A.B ~ 2_3A+G` | — |  |
| `SC 3A.A CH ~ FC 3K.B.6 ~ bK.B` | 74 | Second hit of SC 3A.A only guaranteed on CH / Returns to BT state |
| `SC 3A.A CH ~ FC 3K.B.6 ~ 6B.B` | 73 | Second hit of SC 3A.A only guaranteed on CH |
| `SC 3A.A CH ~ 6K.B.B` | 67 |  |
| `SC 3A.A CH ~ 6K.[B]` | 57 | Returns to SXS |
| `SC 11_44_99[A] ~ A.A.B.B ~ 1A+G.B+K ~ 6K.B.B` | — |  |
| `SC 11_44_99[A] ~ A.A.B.B ~ 1A+G.B+K ~ 6K.[B]` | — | Returns to SXS |
| `SC 11_44_99[A] ~ A.A.B.B ~ 1A+G.B+K JF ~ 6K.B.B` | — |  |
| `SC 11_44_99[A] ~ A.A.B.B ~ 1A+G.B+K JF ~ 6K.[B]` | — | Returns to SXS |
| `SC 11_44_99[A] ~ A.A.B.B ~ 2_3A+G` | 94 | Can be used to ring out / Returns to WD state |
| `SC 11_44_99[A] ~ 6B.B ~ BT B+K ~ 6K.B.B` | 86 |  |
| `SC 11_44_99[A] ~ 6K.B.B` | 72 |  |
| `SC 11_44_99[A] ~ 6B.B ~ BT B+K ~ 6K.B.B` | 59 |  |
| `SC 3B ~ 6K.B.B` | 63 |  |
| `SC 3B ~ 66B+K.B` | 80 |  |
| `SC FC 3B ~ 66A+B.B ~ bK.B` | 89 | Returns to BT state |
| `SC FC 3B ~ 66A+B.B ~ 6B.B` | 84 |  |
| `SC 22_88B ~ 6K.B.B` | 62 |  |
| `SC 22_88B ~ 66B+K.B` | 76 |  |
| `SC 22_88K ~ bK.B` | 65 |  |
| `SC 22_88A+B ~ 6K.B.B` | 72 |  |
| `SC 22_88A+B ~ 66B+K.B` | 91 |  |
| `SC BT B+K ~ 6K.B.B` | 68 |  |
| `SC BT B+K ~ 6K.[B]` | 54 |  |
| `SC BT 2B+K ~ 1A+G.B+K ~ 6K.B.B` | — |  |
| `SC BT 2B+K ~ 1A+G.B+K ~ 6K.[B]` | — | Returns to SXS |
| `SC BT 2B+K ~ 1A+G.B+K JF ~ 6K.B.B` | — | Input B+K right before feet touches the ground for JF |
| `SC BT 2B+K ~ 1A+G.B+K JF ~ 6K.[B]` | — | Input B+K right before feet touches the ground for JF / Returns to SXS |
| `SC SXS A CH ~ A.A.B.B ~ 1A+G.B+K ~ 6K.B.B` | 117 |  |
| `SC SXS A CH ~ A.A.B.B ~ 1A+G.B+K ~ 6K.[B]` | 106 | Returns to SXS |
| `SC SXS A CH ~ A.A.B.B ~ 1A+G.B+K JF ~ 6K.B.B` | 123 |  |
| `SC SXS A CH ~ A.A.B.B ~ 1A+G.B+K JF ~ 6K.[B]` | 112 | Returns to SXS |
| `SC SXS A CH ~ A.A.B.B ~ 2_3A+G` | 101 | Can be used to ring out / Returns to WD state |
| `SC SXS B ~ ...` | ... | Refer to SXS [B] combo |
| `SC SXS A+G_4A+G.B ~ 6B.B` | 71 |  |
| `SC SXS K+G ~ A.B` | 31 | Follow up with SC A.B combo |
| `SC SXS 6K+G ~ A.B` | 33 | Follow up with SC A.B combo |

### Lethal Hit Combo

| Input | Damage | Notes |
|---|---|---|
| `1A LH ~ 6B.B` | 53 | LH triggers upon hitting a downed opponent rolling to the side |
| `FC 3K.B LH ~ 6B.B` | 81 | LH triggers upon hitting a jumping opponent / LH occurs on the first hit of FC3K.B |
| `A+B LH ~ 6 ~ iFC 3K.B.6 ~ 6B.B` | 91 | LH triggers upon impact counter |
| `A+B LH ~ 66[A+B] ~ SXS K ~ 6B.B` | 78 | LH triggers upon impact counter |
| `A+B.6 LH ~ 6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon hitting an opponent knocked off balance with GI (Level 3 GI only) |
| `A+B.6 LH ~ 6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 62 | LH triggers upon hitting an opponent knocked off balance with GI (Level 3 GI only) |
| `A+B.6 LH ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 58 | LH triggers upon hitting an opponent knocked off balance with GI (Level 3 GI only) |
| `6A+B LH ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 81 | LH triggers upon successful aGI (vs. high, middle vertical attacks only) |
| `6A+B LH ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon successful aGI (vs. high, middle vertical attacks only) |
| `1_2_3A+B LH ~ 6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon successful aGI (vs. low attacks only) |
| `1_2_3A+B LH ~ 6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 94 | LH triggers upon successful aGI (vs. low attacks only) |
| `1_2_3A+B LH ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 85 | LH triggers upon successful aGI (vs. low attacks only) |
| `4A+B LH ~ 6K.A_A+B` | 56 | LH triggers upon successful aGI (vs. high, middle horizontal attacks only) |
| `33_66_99B.[B] LH ~ 6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon impact counter |
| `33_66_99B.[B] LH ~ 6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 106 | LH triggers upon impact counter |
| `33_66_99B.[B] LH ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 97 | LH triggers upon impact counter |
| `BHH A+B LH ~ 6 ~ iFC 3K.B.6 ~ 6B.B` | 104 | LH triggers upon impact counter |
| `BHH A+B LH ~ 66[A+B] ~ SXS K ~ 6B.B` | 87 | LH triggers upon impact counter |
| `BHH A+B.6 LH ~ 6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon hitting an opponent knocked off balance with aGI (Level 3 GI only) |
| `SXS K LH ~ 6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon hitting an opponent who whiffed a high attack |
| `SXS K LH ~ 6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 90 | LH triggers upon hitting an opponent who whiffed a high attack |
| `SXS K LH ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 81 | LH triggers upon hitting an opponent who whiffed a high attack |
| `SXS A+B LH ~  6[B+K] ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon hitting an opponent who whiffed a RE |
| `SXS A+B LH ~  6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 119 | LH triggers upon hitting an opponent who whiffed a RE |
| `SXS A+B LH ~  6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 109 | LH triggers upon hitting an opponent who whiffed a RE |
| `SXS a+b6 LH ~ 4A.A ~ 3B ~ 6K.A_A+B` | 100 | LH triggers upon hitting an opponent who whiffed a GI |

### Reversal Edge Combo

| Input | Damage | Notes |
|---|---|---|
| `RE A.B ~ 6B.B` | 44 | Use when second hit of RE A.B connects |
| `RE A.B ~ 6K.A_A+B` | 43 | Use when second hit of RE A.B connects |
| `RE A.B ~ CE` | 76 | Use when second hit of RE A.B connects |
| `RE K ~ 4B` | 32 |  |
| `RE K ~ CE` | 62 |  |
| `RE A LH ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 81 | LH triggers upon second strike (only for defending character) |
| `RE A LH ~ 6B.B ~ CE` | 93 | LH triggers upon second strike (only for defending character) |
| `RE A LH ~ 9K.K.2 ~ PXS B.B` | — | LH triggers upon second strike (only for defending character) |
| `RE B LH ~ 6K.A_A+B` | 64 | LH triggers upon second strike (only for defending character) |
| `RE B LH ~ 66[A+B] ~ SXS K ~ 6B.B` | 78 | LH triggers upon second strike (only for defending character) |
| `RE B LH ~ CE` | 89 | LH triggers upon second strike (only for defending character) |
| `RE K LH ~ 6[B+K] ~ iFC 3K.B.6 ~ 6B.B` | 69 | LH triggers upon second strike (only for defending character) |
| `RE K LH ~ 6[B+K] ~ 9K.K.2 ~ PXS K ~ CE` | 64 | LH triggers upon second strike (only for defending character) |

### Guard Crush Combo

| Input | Damage | Notes |
|---|---|---|
| `GC ~ 44[A] ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 74 | Can be used after GC with bK, FC 3B, 22_88K, and 6A+B |
| `GC ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 40 |  |
| `GC ~ 66B.B ~ 6B.B` | 42 |  |
| `GC ~ 66B.B ~ 1A+G.B+K ~ 6K.A_A+B` | 53 |  |
| `GC ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A_A+B` | 57 | Input B+K right before feet touches the ground for JF |
| `GC ~ 66B.B ~ 2_3A+G` | 56 | Can be used to ring out / Returns to WD state |
| `GC ~ 3B W! ...` | ... | Refer to 3B W! combo / Can be used if GC occurs near a wall |
| `GC ~ iFC 3B W! ...` | ... | Refer to FC 3B W! combo / Can be used if GC occurs near a wall |
| `GC ~ B+K ~ HL B W! ...` | ... | Refer to B+K ~ HL B W! combo / Can be used if GC occurs near a wall |
| `GC ~ 6[B+K] ~ 6K.A_A+B` | 59 | Most damaging GC combo / Cannot be used after GC with WR K.B |
| `GC ~ CE` | 59 |  |
| `6[B+K] GC ~ 9K.K.2 ~ PXS K ~ 3B` | 66 | GC will occur on the first hit of 6[B+K] |
| `6[B+K] GC ~ 9K.K.2 ~ PXS K ~ CE` | 85 | GC will occur on the first hit of 6[B+K] |

### Wall Combo

| Input | Damage | Notes |
|---|---|---|
| `3B W! ~ 3B W! ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 79 |  |
| `3B W! ~ 3B W! ~ 1A+G.B+K ~ 6K.A_A+B` | 77 | 1A+G.B+K can be used after W! with any move |
| `3B W! ~ 3B W! ~ 1A+G.B+K JF ~ 6K.A_A+B` | 83 | 1A+G.B+K can be used after W! with any move |
| `3B W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 91 |  |
| `3B W! ~ 2_3A+G W!` | 88 | 2_3A+G can be used after W! with any move |
| `3B W! ~ CE` | 85 | CE is guaranteed after W! with any move |
| `FC 3B W! ~ 3B W! ~ 6B.B ~ BT B+K ~ 6K.A_A+B` | 81 |  |
| `FC 3B W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 88 |  |
| `FC 3B W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ CE` | 108 |  |
| `B+K ~ HL B W! ~ 6[B+K] ~ 66[A+B] ~ SXS K ~ 6B.B` | 116 |  |
| `SC FC 3B W! ~ 6[B+K] ~ 66A+B.B ~ bK.B` | 120 | Returns to BT state |
| `SC FC 3B W! ~ 6[B+K] ~ 66A+B.B ~ 6B.B` | 118 |  |

## Ukemi Trap Combo List


### UKEMI TRAP COMBO (NOT UPDATED!!)

> ⚠️ Source marks this tab outdated. ◯ hits · △ may hit/whiff · ╳ whiffs — per ukemi direction after the first part.

| Input | Damage | Forward Ukemi | Back Ukemi | Right Ukemi | Left Ukemi | Notes |
|---|---|---|---|---|---|---|
| `3A.K CH ~ 4A.A` | 63 | ◯ | ◯ | ◯ | ◯ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ FC 3A.A` | 66 | ◯ | ◯ | ◯ | ◯ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 3B ~ 6K.A` | 71 | ◯ | ╳ | ╳ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 86 | ◯ | ◯ | ╳ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ FC 3K.B.6` | 73 | ◯ | ◯ | ╳ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 1_2_3A+B ~ 6B.B` | 65 | ◯ | ◯ | ◯ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 77 | ◯ | ◯ | ◯ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 82 | ◯ | ◯ | ◯ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 1_2_3A+B ~ 2_3A+G` | 82 | ◯ | ◯ | ◯ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 1_2_3A+B ~ CE` | 90 | ◯ | ◯ | ◯ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `3A.K CH ~ 3B+K.K` | 68 | ◯ | ╳ | ╳ | ╳ | Second hit of 3A.K only guaranteed on CH |
| `FC 3A.B ~ 3A.K ~ 6B.B` | 89 | ◯ | ╳ | ◯ | ◯ | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 66B.B ~ 6B.B` | 99 | ◯ | ◯ | ╳ | ╳ | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 111 | ◯ | ◯ | ╳ | ╳ | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 116 | ◯ | ◯ | ╳ | ╳ | Use when second hit of FC 3A.B connects |
| `FC 3A.B ~ 66B.B ~ 2_3A+G` | 114 | ◯ | ◯ | ╳ | ╳ | Use when second hit of FC 3A.B connects |
| `WR B ~ 3A.K ~ 6B.B` | 73 | ◯ | ╳ | ◯ | ◯ |  |
| `WR B ~ 6B.B` | 56 | ◯ | ◯ | ◯ | ╳ |  |
| `WR B ~ 66B.B ~ 6B.B` | 83 | ◯ | ◯ | ╳ | ╳ |  |
| `WR B ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 95 | ◯ | ◯ | ╳ | ╳ |  |
| `WR B ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 100 | ◯ | ◯ | ╳ | ╳ |  |
| `WR B ~ 66B.B ~ 2_3A+G` | 98 | ◯ | ◯ | ╳ | ╳ |  |
| `WR B ~ 3B ~ 6K.A` | 75 | ◯ | ╳ | ╳ | ╳ |  |
| `WR B ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 92 | ◯ | ╳ | ╳ | ╳ |  |
| `WR B ~ 6A+B` | 66 | ◯ | △ | ◯ | ◯ | Catches back ukemi at close range |
| `WR B ~ 3B+K.K` | 51 | ◯ | ╳ | ╳ | ╳ |  |
| `WR B ~ 66 ~ 1A+G.B+K ~ 6K.A` | 75 | ◯ | ╳ | ◯ | ◯ |  |
| `WR B ~ 66 ~ 1A+G.B+K JF ~ 6K.A` | 84 | ◯ | ╳ | ◯ | ◯ |  |
| `WR B ~ 66 ~ 2_3A+G` | 84 | ◯ | ╳ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 3A.K ~ 6B.B` | 68 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 2A` | 49 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 4A.A ~ 6B.B ~ BT B+K ~ 6K.A` | 82 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 4A.A ~ 3B ~ 6K.A` | 81 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ FC 3A.A` | 66 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 22_88A` | 56 | ◯ | △ | ◯ | ◯ | Catches back ukemi at close range |
| `33_66_99B.B CH ~ 3B ~ 6K.A` | 70 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 81 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 66B` | 53 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 6A+B` | 65 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 1_2_3A+B ~ 6B.B` | 67 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 78 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 83 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 1_2_3A+B ~ 2_3A+G` | 81 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 1_2_3A+B ~ CE` | 89 | ◯ | ◯ | ╳ | ╳ |  |
| `33_66_99B.B CH ~ 1A+G.B+K ~ 6K.A` | 71 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 1A+G.B+K JF ~ 6K.A` | 77 | ◯ | ◯ | ◯ | ◯ |  |
| `33_66_99B.B CH ~ 2_3A+G` | 75 | ◯ | ◯ | ◯ | ◯ |  |
| `4K ~ 6B.B` | 33 | ◯ | ◯ | ◯ | ╳ |  |
| `4K ~ 3B ~ 6K.A` | 53 | ◯ | ╳ | ╳ | ╳ |  |
| `4K ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 70 | ◯ | ╳ | ╳ | ╳ |  |
| `4K ~ 66B.B` | 48 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 4A.A` | 85 | ◯ | ╳ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 1_2_3A+B ~ 6B.B` | 89 | ◯ | ╳ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 102 | ◯ | ╳ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 108 | ◯ | ╳ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 1_2_3A+B ~ 2_3A+G` | 108 | ◯ | ╳ | ╳ | ╳ |  |
| `FC 3K.B.6 CH ~ 1_2_3A+B ~ CE` | 118 | ◯ | ╳ | ╳ | ╳ |  |
| `WR K.B CH ~ 6B.B ~ BT B+K ~ 6K.A` | 100 | ◯ | ╳ | ╳ | ╳ |  |
| `WR K.B CH ~ 66B` | 62 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `7_8_9K.K ~ 3A.K ~ 6B.B` | 80 | ◯ | ◯ | ◯ | ◯ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 2A` | 52 | ◯ | ◯ | ◯ | ◯ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 22_88A` | 63 | ◯ | ╳ | ◯ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 3B ~ 6K.A` | 83 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 100 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 66B.B ~ 6B.B` | 91 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 103 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 118 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 66B.B ~ 2_3A+G` | 106 | ◯ | ◯ | ╳ | ╳ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 6A+B` | 74 | ◯ | ◯ | ◯ | ◯ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 1_2_3A+B ~ 6B.B` | 80 | ◯ | ◯ | ◯ | △ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 94 | ◯ | ◯ | ◯ | △ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 101 | ◯ | ◯ | ◯ | △ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 1_2_3A+B ~ 2_3A+G` | 99 | ◯ | ◯ | ◯ | △ | Use when third hit of 7_8_9K.K connects |
| `7_8_9K.K ~ 1_2_3A+B ~ CE` | 112 | ◯ | ◯ | ◯ | △ | Use when third hit of 7_8_9K.K connects |
| `22_88K ~ 3A.K ~ 6B.B` | 70 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 2A` | 42 | ◯ | ◯ | ◯ | ◯ |  |
| `22_88K ~ 22_88A` | 52 | ◯ | ╳ | ◯ | ╳ |  |
| `22_88K ~ 3B ~ 6K.A` | 71 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 91 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ 66B.B ~ 6B.B` | 79 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 92 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 98 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ 66B.B ~ 2_3A+G` | 94 | ◯ | ◯ | ╳ | ╳ |  |
| `22_88K ~ 6A+B` | 65 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 1_2_3A+B ~ 6B.B` | 71 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 85 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 92 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 1_2_3A+B ~ 2_3A+G` | 88 | ◯ | ◯ | ◯ | △ |  |
| `22_88K ~ 1_2_3A+B ~ CE` | 101 | ◯ | ◯ | ◯ | △ |  |
| `1_2_3A+B ~ 3A.K ~ 6B.B` | 54 | ◯ | ◯ | ◯ | △ |  |
| `1_2_3A+B ~ 4A.A ~ 6B.B ~ BT B+K ~ 6K.A` | 74 | ◯ | ◯ | ◯ | ◯ |  |
| `1_2_3A+B ~ 66B.B ~ 6B.B` | 63 | ◯ | ◯ | ╳ | ╳ |  |
| `1_2_3A+B ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 74 | ◯ | ◯ | ╳ | ╳ |  |
| `1_2_3A+B ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 78 | ◯ | ◯ | ╳ | ╳ |  |
| `1_2_3A+B ~ 66B.B ~ 2_3A+G` | 76 | ◯ | ◯ | ╳ | ╳ |  |
| `1_2_3A+B ~ 6A+B` | 49 | ◯ | ◯ | ◯ | ◯ |  |
| `1_2_3A+B ~ 1_2_3A+B` | 38 | ◯ | ◯ | ◯ | △ |  |
| `1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 57 | ◯ | ◯ | ◯ | ◯ |  |
| `1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 65 | ◯ | ◯ | ◯ | ◯ |  |
| `1_2_3A+B ~ 2_3A+G` | 65 | ◯ | ◯ | ◯ | ◯ |  |
| `4A+B ~ 6B.B ~ BT B+K ~ 6K.A` | 92 | ◯ | ◯ | ◯ | ╳ |  |
| `4A+B ~ 66B.B ~ 6B.B` | 87 | ◯ | ◯ | ╳ | ╳ |  |
| `4A+B ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 99 | ◯ | ◯ | ╳ | ╳ |  |
| `4A+B ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 104 | ◯ | ◯ | ╳ | ╳ |  |
| `4A+B ~ 66B.B ~ 2_3A+G` | 102 | ◯ | ◯ | ╳ | ╳ |  |
| `2B+K ~ 2A` | 46 | ◯ | △ | ◯ | ◯ | Catches back ukemi at close range |
| `2B+K ~ 1A+G.B+K ~ 6K.A` | 77 | ◯ | ◯ | ◯ | ◯ |  |
| `2B+K ~ 1A+G.B+K JF ~ 6K.A` | 86 | ◯ | ◯ | ◯ | ◯ |  |
| `2B+K ~ 2_3A+G` | 86 | ◯ | ◯ | ◯ | ◯ |  |
| `FC 3B+K ~ 66B.B ~ 6B.B` | 70 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 79 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 83 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ 66B.B ~ 2_3A+G` | 81 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ 3B ~ 6K.A` | 65 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ FC 3B ~ 66[A+B] ~ SXS K ~ 6K.A` | 78 | ◯ | ◯ | ╳ | ╳ |  |
| `FC 3B+K ~ 6A+B` | 58 | ◯ | ◯ | ◯ | ◯ |  |
| `FC 3B+K ~ 1_2_3A+B ~ 6B.B` | 61 | ◯ | ◯ | △ | ╳ |  |
| `FC 3B+K ~ 1_2_3A+B ~ 1A+G.B+K ~ 6K.A` | 73 | ◯ | ◯ | △ | ╳ |  |
| `FC 3B+K ~ 1_2_3A+B ~ 1A+G.B+K JF ~ 6K.A` | 78 | ◯ | ◯ | △ | ╳ |  |
| `FC 3B+K ~ 2A+B ~ 2_3A+G` | 76 | ◯ | ◯ | △ | ╳ |  |
| `SXS a+b6 ~ 6B.B` | 69 | △ | ◯ | ╳ | ╳ | Second hit of 6B.B not guaranteed against front ukemi |
| `BHH A ~ bK` | 47 | ◯ | ╳ | ╳ | ╳ |  |
| `BHH A ~ 6B.B ~ BT B+K ~ 6K.A` | 79 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `BHH A ~ 3B ~ 6K.A` | 66 | ◯ | ╳ | ╳ | ╳ |  |
| `BHH A ~ 66B.B ~ 6B.B` | 74 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `BHH A ~ 66B.B ~ 1A+G.B+K ~ 6K.A` | 86 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `BHH A ~ 66B.B ~ 1A+G.B+K JF ~ 6K.A` | 91 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `BHH A ~ 66B.B ~ 2_3A+G` | 89 | ◯ | △ | ╳ | ╳ | Catches back ukemi at close range |
| `BHH K ~ 1A+G.B+K ~ 6K.A` | 76 | ◯ | ◯ | ◯ | ◯ |  |
| `BHH K ~ 1A+G.B+K JF ~ 6K.A` | 87 | ◯ | ◯ | ◯ | ◯ |  |
| `BHH K ~ 2_3A+G` | 72 | ◯ | ◯ | ◯ | ◯ |  |
