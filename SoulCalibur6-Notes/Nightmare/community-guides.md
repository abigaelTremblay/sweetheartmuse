# Nightmare — Community guide 📚

> 📚 **Everything in this file is third-party**, not my lab. ✅ = my lab, which wins on conflict (both kept). 📊 = [framedata.md](framedata.md) (supercombo wiki).
> **Source:** "Nightmare Season 2" (Google Sheet), linked from the supercombo wiki *Nightmare/Resources* page. Author(s) not named in the sheet (written in the first person: "ideas I do not have in my S1 list").
> https://docs.google.com/spreadsheets/d/1hFkOiOXTbntwS2DCx0RwpCGNAcvn_mYakDyFr0viKf0
> Tabs: **Move list** · **Standard Combo List** (235 rows) · **LH Combo List** · **Wall Combo List** (placeholder). Season 2 data → ⚑ older than the wiki's patch for some values (see [Move list vs framedata](#move-list-vs-framedata-generated)). Fetched 2026-11-20.
> Tables below are **generated verbatim** from the tabs; only the `↳` (same starter as above), backticks and `\|` escaping are formatting. Not merged into `framedata.md` (by rule).

Playing-side digest → [gameplan.md](gameplan.md). Defensive side (as Ivy) → [counter-matchup.md](counter-matchup.md).

---

## Sheet notation

| Sheet | Means |
|---|---|
| `>` | next move in the combo |
| `:` | justframe — `nss b:A` = the just-frame `NSS bA` (📊 48 dmg vs 38 non-JF) |
| `~` | slide / buffer the next input out of the previous one (`6~2A+B`, `G~3AA`, `6~236A+B+K`) |
| `[ ]` | hold — `[A]` = framedata `(A)`, `3[B]` = `3(B)`, `wr [B]` = `WR (B)` |
| `i` | instant (fastest input) — `iagA` = `agA` slid straight out of recovery |
| lowercase prefix | state: `fc` `wr` `bt` `gs` (Grim Stride) `nss` `nls` `nbs` `ntc` — framedata writes them `FC`/`WR`/`GS`/`NSS`… |
| `agA` / `abA` | slide inputs (framedata same). `gsB`, `gsKK` = `GS B`, `GS KK` written without space |
| `SA` | Soul Attack `236A+B+K` (METER, ends Soul Charge → "> sc") |
| `CA` | 🤔 seems to mean the Critical Edge (`A+B+K`) — ❓ |
| `armor boom` | the **Devastating Vengeance** release (`REVENGE 6A+B`) after an armor absorb |
| `w!` | wall splat · `JGL` juggle (= 📊 LNC) · `CRM` crumple · `UB` unblockable · `HT`/`LT` high/low throw · `TC`/`TJ` tech crouch / tech jump |
| `NC` / `NCC` | normal-hit combo / counter-hit combo (Move list notes) |
| `forceblock` | not a combo: the next hit is a guaranteed *block* (sets up pressure) |
| **c-NTC** | `y` = combo **gains** NTC · `x` = **spends** NTC · `n` / `-` = neither · `> sc` = goes into Soul Charge (SA) · `sc` = needs SC |
| **COMBO** (type) | `c` = true combo · `t` = **techtrap** (catches ukemi) · `d` = **deathtrap** (only vs no-ukemi: they stay down and eat it) · `(xBACK)` = fails vs back roll |
| 🎲 For-fun column | the sheet's second column set "COMBO (for fun/good to know)" — max-damage / setup variants |

---

## vs. my notes / framedata (2026-11-20)

| Topic | 📊 / my notes | 📚 Sheet | Verdict |
|---|---|---|---|
| `6B` armor window | 📊 10-22 | Move list 10-20 | ⚑ minor; sheet is S2 |
| `6K` | 📊 i16, -4, KND, armor (window not listed). ✅ (from counter-matchup lab) it's a high: crouch → punish | armor 10-20, **JGL** on hit → `6K > SA` 36 / `> 66B` 37 (d) | ⚑ hit state differs. Sheet's routes are both tiny → treat `6K` as a poke, not a launcher |
| `6BB` on block | 📊 -12 · ✅ (from counter-matchup lab) pushback too big to punish | -16 | ⚑ numbers differ; the lab says it doesn't matter (out of range) |
| `6A` on block | 📊 -16 | -12 | ⚑ wiki = worse case → assume -16 |
| `6A+B` armor | 📊 10-35 | 10-20 | ⚑ big difference: assume the shorter window until labbed |
| `3K` | 📊 -6 / +6 | -8 / +4 | ⚑ safe either way: the fastest SC6 attacks are i10, so -6 and -8 are both unpunishable |
| `1A6` | 📊 -12 / +14 (CH LNC) | 0 / **+26** | ⚑ big conflict. Plan with -12 |
| `66a6` / `66K6` (→ GS) | 📊 0 / -6 | +10 / +4 | ⚑ sheet much more generous. The Adept Style Lesson (📖) also sells them as pressure → lab |
| `NSS K` | 📊 i10, -10, CH STN | 16 dmg, **-14**, KND | ⚑ -14 = punishable by everyone. Plan with -14 |
| `NSS (A)` | 📊 -4 → stays in NSS | **-20?** (sheet's own `?`) | ⚑ the Master Style Lesson uses it as pressure → probably -4 is right |
| `NLS (B)` | 📊 +2 / STN | 0 / +14 | ⚑ both safe; fine either way |
| `A+B` | 📊 +8, LNC, LH vs GI | +3, "into NBS" | ⚑ both plus on block; `A+B > nbs B` 66 route matches the "into NBS" note |
| `A+G` / `4A+G` dmg | 📊 22 / 9 (first hit only?) | 55 / 50 | ⚑ wiki lists partial damage; sheet's totals are realistic for SC6 throws |
| `236A+G` | 📊 Lvl M | "LT, untechable mid throw" | consistent: mid-hitting throw that also catches crouchers (📖 Intro: unbreakable) |
| GS startup | 📊 `GS A` i18, `GS B` i22 | i28 / i32 | Not a conflict: sheet counts **from neutral including the GS entry** (+10 everywhere) |
| `GS b6` | 📊 -9 | `gs B6` **+8** | ⚑ big conflict. Sheet routes use `gs B6 > gs KK` (79) — check in lab |
| `ntc 66BB` | not in 📊 | listed in Move list | ⚑ missing from framedata (or sheet typo for `NTC 66KK`) |
| Soul Wave "only armor" | 📖 Overview: "Soul Wave is your only armor move" | armor listed on `6A`/`6B`/`6K`/`6A+B` | ⚑ Overview is wrong/outdated — 📊 + sheet + ✅ counter-lab all show armor on `6A`/`6B`/`6K` |
| `3(B) > NSS bA` | 📊 Combos page 70 (61 non-JF) | 61 / 68 JF / **85** `ntc nss b:AB` | consistent (sheet JF = 68 vs wiki 70) |
| `4A >` follow-ups | 📊 Combos page `4A > 4KK` 80 (NTC), `> GS 236A+G` 96 | `4A > 236A+G` **96**, `> 4KK` 80 | ✅ agree (sheet uses neutral `236A+G`, wiki writes GS) |

**Not in the sheet (so no 📚 answer):** neutral spacing, punishment by block value, sidestep coverage, what to do at disadvantage. Those come from the 📖/📊 side → [gameplan.md](gameplan.md).

---

## Curated: payoffs by situation

"Easiest" = the shortest `c` (true combo) route in the sheet; "Max" = the best listed damage, any type. NTC = whether it leaves me in Night Terror Charge.

| Situation | Easiest listed | Max listed |
|---|---|---|
| `4A` hit (BA, STN) | `4A > 4KK` **80**, gains NTC | `4A > 236A+G` **96** (no NTC) · 🎲 `ntc 66KK6 > gs B > 6[A] > nss B` 96 |
| `3B` / `FC 3B` launch (whiff punish) | `3B > 2B` 57 · `3B > SA` 62 (meter) | `fc 3B > 66A+B > iagA` **109** · `> 4A+B` 128 (deathtrap) |
| `3(B)` → NSS on hit | `3[B] > nss bA` 61 | `3[B] > ntc nss b:AB` **85** (spends NTC) |
| `66B` launch | `66B > 2A+B` 56, gains NTC | `66B > ntc gs A+B > 66B` 83 (spends NTC) |
| `66B6` (→ GS) hit | `66B6 > A+B` 50 · `> G~2A+B` 61 | `66B6 > G~3AA > ntc gs A+B > 66B` **140** (spends NTC) |
| `66A` hit | `66A > 66B` **60** (all distances) | `66A > 1A6 > ntc gs A+B > 66B` 113 |
| `WR (B)` hit (→ NSS) | `wr [B] > nss bA` 47 (55 JF) | CH `wr [B] > nss B > 66A+B` 80 |
| `44B` / `44B(B)` | `44B > 2A+B` 55 · `44BB > K` 64 | `44B[B] > nss bA` 75 |
| `CH K` (i14 jab) | `CH K > 1A6` 44 | `CH K > 1A6 > gs B` 81 (techtrap) |
| `6K` hit (armor poke) | `6K > SA` 36 | `6K > 66B` 37 (deathtrap) |
| `A+B` hit (BA) | `A+B > nbs B` 66 | LH: `A+B > nbs B > BB` **88** · `> nbs B > 6A > 1[K]` 109 (d) |
| `6A+B` Soul Wave hit | `6A+B > 66B` 47 (d) | `6A+B > SA` 52 |
| DV (`armor boom`) | `> 66B` 53 | `> SA` 58 |
| `66A+B` launch | `66A+B > AA` 83 | `66A+B > 3AA` 85 |
| `aB` hit | `aB > 2A` **40 guaranteed** | `aB > SA` 69 · `> 2A+B` 59 (deathtrap) · `> 236A+G` 53 (techtrap) |
| `GS B` hit | `gs B > agA` 70 | `gs B > iagA` 75 · `gs B6 > gs KK` 79 ⚑ (`GS b6` conflict above) |
| `GS K` hit | `gs K > 2A+B` 53 | `gs K > 66A+B` 63 |
| `CH GS A` (GI hit) | `ch gs A > 4KK` 69 | `ch gs [A] > nss K > 2A+B` 70 |
| `NSS B` hit | `nss B > 2A+B` 58 | `nss B > 66A+B` 71 |
| `NSS aB` / `NSS K` | `nss aB > 2A` 40 · `nss K > 2A+B` 50 | — |
| `CH NBS B` | `CH nbs B > BB` **89** | — |
| `NLS (B)` hit (→ NBS) | `nls [B] > nbs KK > 2A+B` 57 | — |
| `NTC 66KK6` hit | `ntc 66KK6 > gs B6 > gs B` 81 | `> gs cancel > wr [B] > nss B > 2A+B` 78 |
| `RE B` (RE1 win) | `RE1 B > nss B` 62 | `RE1 B > ntc nss A+B` 77 |
| Throws | `A+G > 2A+B` **95** (deathtrap) · `fc 1A+G > BT 2K` 44-47 · `fc 2A+G > SA` 41/46 | — |
| `(A)` near the edge | `[A] > nss K` 32 | — |
| `3AA` / `(3A)B` | `(3A)B > 2A+B` 63 | `3AA > 6~236A+B+K` 73 (hold 6 briefly → reliable vs all ukemi) |
| LH `1A` (vs ground roll) | `1A > gsB` 56 | `> 66A+B` 62 · `> A+B` 61 |
| LH `agA` (after a GI) | `run in > 2A+B` 47 | `> 66A+B > SA` 60 · `> 6A > 44A` 58 |

**Pattern:** `2A+B` is the universal **NTC-gaining ender** (low damage, sets up the next NTC loop); `66B` / `ntc gs A+B` are the damage enders that **spend** NTC. The sheet's routing choice is always "take NTC now or cash it in".

---

## Move list vs framedata (generated)

Generated diff: every sheet *Move list* value that differs from [framedata.md](framedata.md) after notation mapping. Damage differences where the per-hit sum matches are dropped. `↳` = same move as above. ⚑ = all of these. When a gameplan line depends on one of these, it cites the **wiki** value and links here.

| Move (framedata) | Sheet name | Field | 📊 wiki | 📚 sheet |
|---|---|---|---|---|
| `(A)` | `[A]` | Blk | 0 | -5 |
| ↳ |  | Hit | 10 | +8 |
| `aB` | `aB` | i | 20 | 19 |
| ↳ |  | Blk | -12 | -13 |
| ↳ |  | Hit | STN | KND |
| `abA` | `abA` | Dmg | 36 | 32 |
| `6A` | `6A` | Blk | -16 | -12 |
| `6(A)` | `6[A]` | Blk | -8 | -10 |
| ↳ |  | Hit | 4 | +2 |
| ↳ |  | Armor | — | 10-20 |
| `6AaG` | `6AaG` | Blk | -11 | -13 |
| ↳ |  | Hit | 1 | +3 |
| `3AA` | `3AA` | Dmg | 20,32 | 20,30 |
| `3AB` | `3AB` | Dmg | 20,30 | 20,32 |
| ↳ |  | Hit | STN | KND |
| `1A` | `1A` | Dmg | 28 | 32 |
| ↳ |  | CH | LNC | KND |
| `1(A)` | `1[A]` | Hit | LNC | KND |
| `1A6` | `1A6` | Blk | -12 | 0 |
| ↳ |  | Hit | 14 | +26 |
| ↳ |  | CH | LNC | KND |
| `1(A)6` | `1[A]6` | Blk | 14 | +26 |
| ↳ |  | Hit | LNC | KND |
| `66a6` | `66A6` | Blk | 0 | +10 |
| `22Aa6` | `22Aa6` | Blk | -14 | -4 |
| ↳ |  | Hit | -4 | 6 |
| ↳ |  | CH | -4 | +6 |
| `44A` | `44A` | i | 30 | 40 |
| `WR AA` | `wr AA` | Dmg | 20,30 | 20,31 |
| `WR Aa6` | `wr Aa6` | Blk | -12 | -2 |
| ↳ |  | Hit | 0 | +10 |
| `8A` | `wj A` | Blk | -10 | -12 |
| `BT A` | `bt A` | Blk | -7 | -12 |
| ↳ |  | Hit | 3 | -2 |
| `BT 2A` | `bt 2A` | Lvl | L | SL |
| ↳ |  | Blk | -6 | -13 |
| ↳ |  | Hit | 4 | -3 |
| `BB` | `BB` | Dmg | 30 | 30,38 |
| `Bb4` | `Bb4` | Blk | -6 | -8 |
| `6B` | `6B` | Hit | STN | KND |
| ↳ |  | Armor | 10-22 | 10-20 |
| `6BB` | `6BB` | Blk | -12 | -16 |
| `NTC 6BBB` | `ntc 6BBB` | Lvl | MMMMMM | MMMMM |
| ↳ |  | Dmg | 19,22,3,3,3,3,3,3,22 | 76 |
| `3(B)` | `3[B]` | Blk | -6 | -8 |
| `2(B)` | `2[B]` | Blk | 2 | -5 |
| ↳ |  | Hit | 14 | +7 |
| `66B` | `66B` | Dmg | 24 | 24,8 |
| `66B6` | `66B6` | Dmg | 24 | 24,8 |
| `66(B)` | `66[B]` | Dmg | 24 | 32,13 |
| ↳ |  | Blk | -20 | -30 |
| `22B` | `22B` | Dmg | 52 | 40 |
| `22(B)` | `22[B]` | Dmg | 52 | 40 |
| ↳ |  | Blk | -4 | -11 |
| `11B` | `11B` | i | 30 | 40 |
| `11(B)` | `11[B]` | i | 30 | 40 |
| ↳ |  | Blk | -10 | -13 |
| ↳ |  | Hit | 10 | +3 |
| `44B` | `44B` | Hit | STN | KND |
| `44BB` | `44BB` | Hit | LNC | KND |
| `44B(B)` | `44B[B]` | Blk | 6 | +4 |
| `FC (B)` | `fc 2[B]` | Blk | 2 | -5 |
| ↳ |  | Hit | 14 | +7 |
| `FC 3B` | `fc 3B` | Lvl | M | MM |
| ↳ |  | Blk | -12 | -14 |
| `WR (B)` | `wr [B]` | Blk | -2 | -4 |
| `8B` | `wj B` | Dmg | 29 | 32 |
| `BT B` | `bt B` | Blk | -10 | -13 |
| ↳ |  | Hit | 0 | -3 |
| `BT 2B` | `bt 2B` | Blk | -8 | -12 |
| ↳ |  | Hit | 2 | -2 |
| `6K` | `6K` | Hit | KND | JGL |
| ↳ |  | Armor | ✓ (frames not listed) | 10-20 |
| `3K` | `3K` | Dmg | 16 | 14 |
| ↳ |  | Blk | -6 | -8 |
| ↳ |  | Hit | 6 | +4 |
| `1(K)` | `1[K]` | Hit | KND | JGL |
| `4K` | `4K` | Blk | -10 | -4 |
| ↳ |  | Hit | 2 | 0 |
| ↳ |  | CH | 10 | 0 |
| `4KK` | `4KK` | Dmg | 18,24,22,7 | 18,54 |
| `66K6` | `66K6` | Blk | -6 | +4 |
| `NTC 66KK6` | `ntc 66KK6` | Blk | 10 | +20 |
| `22K` | `22K` | i | 40 | 50 |
| `44K` | `44K` | i | 30 | 57 |
| ↳ |  | Blk | — | -22 |
| `NTC WR K(B)` | `ntc wr K[B]` | Blk | -2 | -4 |
| ↳ |  | Hit | 18 | +12 |
| `8K` | `wj K` | Dmg | 24 | 22 |
| `BT K` | `bt K` | Blk | -8 | -17 |
| ↳ |  | Hit | 2 | -7 |
| `BT 2K` | `bt 2K` | i | 16 | 18 |
| ↳ |  | Blk | -14 | -20 |
| ↳ |  | Hit | -4 | -8 |
| `A+B` | `A+B` | Blk | 8 | +3 |
| `6A+B` | `6A+B` | Armor | 10-35 | 10-20 |
| `4A+B` | `4A+B` | Dmg | 56,18 | 75 |
| ↳ |  | Hit | LNC | KND |
| `66A+B` | `66A+B` | Lvl | MM | M |
| `BT A+B` | `bt A+B` | Blk | -14 | -17 |
| ↳ |  | Armor | ✓ (frames not listed) | 8-20 |
| `A+G` | `A+G` | Lvl | H | HT |
| ↳ |  | Dmg | 22 | 55 |
| `4A+G` | `4A+G` | Lvl | H | HT |
| ↳ |  | Dmg | 9 | 50 |
| `FC [2/3]A+G` | `fc 2A+G` | Lvl | L | LT |
| `FC 1A+G` | `fc 1A+G` | Lvl | L | LT |
| `236A+G` | `236A+G` | Lvl | M | LT |
| `METER A+B+K` | `A+B+K` | Lvl | MMM | M |
| `METER (A)+(B)+(K)` | `[A+B+K]` | Lvl | MMM | M |
| ↳ |  | Blk | — | KND |
| `GS A` | `gs A` | i | 18 | 28 |
| ↳ |  | Hit | 8 | +10 |
| ↳ |  | CH | 18 | STN |
| `NTC GS AA` | `ntc gs AA` | i | 18 | 28 |
| `GS aB` | `gs aB` | i | 22 | 32 |
| `NTC GS aBB` | `ntc gs aBB` | i | 22 | 32 |
| `GS B` | `gs B` | i | 22 | 32 |
| `GS b6` | `gs B6` | i | 22 | 32 |
| ↳ |  | Blk | -9 | +8 |
| `GS K` | `gs K` | i | 18 | 28 |
| ↳ |  | CH | STN | KND |
| `GS A+G` | `gs A+G` | Lvl | M | LT |
| ↳ |  | i | 12 | 14 |
| ↳ |  | Hit | 14 | KND |
| `NTC GS KK` | `ntc gs KK` | i | 18 | 28 |
| ↳ |  | Dmg | 12,7,18,6 | 22,43 |
| `NTC GS A+B` | `ntc gs A+B` | i | 22 | 33 |
| ↳ |  | Hit | KND | JGL |
| `NLS B` | `nls B` | i | 14 | 15 |
| ↳ |  | Dmg | 30,30 | 22,36 |
| `NLS (B)` | `nls [B]` | i | 14 | 15 |
| ↳ |  | Dmg | 30 | 22 |
| ↳ |  | Blk | 2 | 0 |
| ↳ |  | Hit | STN | +14 |
| `NLS K` | `nls K` | Dmg | 10,12 | 22,22 |
| `NTC NLS A+B` | `ntc nls A+B` | i | 26 | 25 |
| ↳ |  | Dmg | 10,10,36,36 | 93 |
| `NBS B` | `nbs B` | i | 26 | 25 |
| ↳ |  | Blk | -2 | -3 |
| ↳ |  | CH | LNC | KND |
| `NBS KK` | `nbs KK` | Blk | -8 | -10 |
| ↳ |  | Hit | 4 | -1 |
| ↳ |  | CH | STN | CRM |
| `NTC NBS A+B` | `ntc nbs A+B` | i | 33 | 31 |
| ↳ |  | Dmg | 20,22,22,21 | 84 |
| `NSS A` | `nss A` | Lvl | H | M |
| `NSS (A)` | `nss [A]` | Blk | -4 | -20? |
| ↳ |  | Hit | 14 | +12 |
| `NSS aB` | `nss aB` | Hit | KND | CRM |
| `NSS a(B)` | `nss a[B]` | Blk | -2 | 0 |
| ↳ |  | Hit | KND | CRM |
| `NSS bA` | `nss bA` | i | 14 | 15 |
| ↳ |  | Dmg | 48 | 38 |
| `NTC NSS bAB` | `ntc nss bAB` | i | 14 | 15 |
| ↳ |  | Dmg | 48,19 | 38,19 |
| `NSS K` | `nss K` | Blk | -10 | -14 |
| ↳ |  | CH | STN | KND |
| `NTC NSS A+B` | `ntc nss A+B` | i | — | 28 |
| ↳ |  | Blk | 4 | +2 |
| `RE A` | `RE A` | Lvl | H | - |
| `RE B` | `RE B` | Lvl | M | - |
| ↳ |  | Hit | STN | JGL |
| `RE K` | `RE K` | Lvl | M | - |

Not matched: `ntc 66BB` (sheet only — see table above).

---

## Sheet tables (verbatim)

### Standard Combo List

| Starter | Combo | Dmg | c-NTC | Type | Notes | 🎲 For-fun combo | Dmg | c-NTC | Type | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| `[A]` | `nss K` | 32 | n | c | near ring edge or from upclose |  |  |  |  |  |
| `aB` | `2A` | 40 | n | c | guaranteed | `4KK` | 79 | y | t | catch front and back ukemi |
| ↳ | `SA` | 69/59 | > sc | c/t/d | guaranteed, different damage for deathtrap and techtrap | `3K` | 43 | - | t | catch all ukemi for +4. safe on whiff |
| ↳ | `236A+G` | 53 | y | t | techtrap all ukemi. fully safe n whiff | `4BBB` | 63 | n | t | techtrap all except right ukemi. Buffer 4BB to confirm they teched. From medium range+ loses to backroll |
| ↳ | `2A+B` | 59 | y | d | deathtrap |  |  |  |  |  |
| `CH 1A6` | `gs B` | 57 | x | c |  |  |  |  |  |  |
| ↳ | `ntc gs KK` | 60 | y | c |  |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 75 | x | c | in ntc, can add 66BB for 2 more damage |  |  |  |  |  |
| `3AA` | `6~236A+B+K (SA)` | 73 | > sc | c | hold 6 for a short moment, then do the qcf motion. This should make the SA reliable against all ukemi options |  |  |  |  |  |
| `(3A)B` | `2A+B` | 63 | y | c |  |  |  |  |  |  |
| `4A` | `236A+G` | 96 | n | c | Raw damage option. From upclose, 60 + ntc (not worth it). From mid range+, works into back throw | `ntc 66KK6 > gs B > 6[A] > nss B` | 96 | n | c | max damage but not ntc nor bar |
| ↳ | `4KK` | 80 | y | c | ntc | `ntc 66KK6 > gs A+G (backthrow)` | 93 | x | c | style points, good oki |
| ↳ | `ntc 66KK6 > gs cancel > wr[B] > nss B > 2A+B` | 93 | y | c | ntc recycle, damage, bar |  |  |  |  |  |
| ↳ | `ntc 66KK6 > gs B6 > gs SA` | 95 | > sc | c | into SC combo with great oki |  |  |  |  |  |
| ↳ | `sc 66KK6 > gs B6 > sc gs A+B > 66B` | 112 | - | c | sc combo. can add 66BB for +1 dmg |  |  |  |  |  |
| ↳ | `sc 66KK6 > gs B6 > sc gs KK` | 103 | - | c | ringout/wallcarry combo |  |  |  |  |  |
| ↳ | `sc 66KK6 > gs B > 6[A] > nss B` | 96 | x | c | can finish with nss a[B] for added fake mixup after hit | `sc 66KK6 > gs B > 6[A] > nss gs B` | 98 | x | d | deathtrap |
| ↳ | `sc 66KK6 > gs B > 6[A] > sc nss A+B` | 113 | - | c | max damage, also, kidna good positioning | `sc 66KK6 > gs B > 6[A] > nss gs B > iagA` | 107 | x | t | catch all ukemi except left |
| ↳ | `sc 66KK6 > gs B > 6[A] > sc gs KK` | 107 | - | c | kinda ridiculous w! and ring out carry |  |  |  |  |  |
| `66A` | `66B` | 60 | n | c | works on all distances | `44A` | 80 | n | t | techteap any ukemi |
| ↳ | `1A6 > gs B` | 60 | n | c/d | deathtrap with gs B being forceblock |  |  |  |  |  |
| ↳ | `1A6 > gs B` | 97 | n | c/t | techtrap. no working on max range |  |  |  |  |  |
| ↳ | `1A6 > ntc gs KK` | 100 | y | c/t | techtrap, catch stayers (60)- ntc recycle, can w! or ringout |  |  |  |  |  |
| ↳ | `1A6 > ntc gs A+B > 66B` | 113 | n | c/t | techtrap. In sc, can add 66BB for 5 more dmg |  |  |  |  |  |
| ↳ | `44BB` | 75 | n | d | deathtrap. catch front ukemi |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 113 | x | d | deathtrap. catch all ukemi except left. In sc, can add 66BB for 7 more damage |  |  |  |  |  |
| ↳ | `CA` | 115 | y | d | deathtrap |  |  |  |  |  |
| `66A6` | `gs B` | 67 | n | c |  | `gs cancel > fc 3B > combo` | ... |  |  | traps front/back ukemi |
| ↳ | `gs B6 > gs SA` | 67+5 | > sc | c | SA is a frocedblock |  |  |  |  |  |
| ↳ | `ntc gs KK` | 78 | y | c |  |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 99 | n | c | in sc, can add 66BB for 8 more damage |  |  |  |  |  |
| ↳ | `gs SA` | 65 | > sc | c |  |  |  |  |  |  |
| `44A` | `66B` | 53 | n | c | in ntc, can add 66BB for 6 more damage |  |  |  |  |  |
| ↳ | `SA` | 53 | > sc | c |  |  |  |  |  |  |
| ↳ | `1A6 > gs B` | 70 | n | t (xBACK) | techtrap (whifs to back ukemi). 53 against stayer. |  |  |  |  |  |
| ↳ | `1A6 > ntc gs KK` | 70 | y | t (xBACK) | techtrap (whifs to back ukemi), catch stayers (53). Recycle ntc, can w! or ringout |  |  |  |  |  |
| ↳ | `1A6 > ntc gs A+B > 66B` | 76 | x | t (xBACK) | techtrap (whifs to back ukemi), catch stayers (53) with gs A+B being forceblock. in sc, 66BB adds 1 dmg |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 76 | x | d/t (xLEFT) | techtrap (whifs to left ukemi), catch stayers (77). in sc, can add 66BB for 4 more damage |  |  |  |  |  |
| `3B` | `2B / 2[B]` | 57 | > sc | c | can setup setups near wall | `BB` | 88 | n | ... | 54 against stayers (block 2nd) |
| ↳ | `1A` |  |  | t | CHECK |  |  |  |  |  |
| ↳ | `SA` | 62 | > sc | c |  |  |  |  |  |  |
| `3[B]` | `nss bA` | 61 | n | c |  | `ntc nss A+B` | 81 | x | c | use if you wann stay sticked to them |
| ↳ | `nss b:A` | 68 | n | c |  |  |  |  |  |  |
| ↳ | `ntc nss bAB` | 78 | x | c |  |  |  |  |  |  |
| ↳ | `ntc nss b:AB` | 85 | x | c |  |  |  |  |  |  |
| ↳ | `nss 236 > ntc gs KK` | 71 | y | c | ntc recycle. can w! or ringout |  |  |  |  |  |
| `fc 3B` | `66A+B` | 74 | n | c | may be char specific? |  |  |  |  |  |
| ↳ | `66A+B > 66B` | 100 | n | t | cantch all rolls, may be char specific? in ntc, can add 66BB for 7 more damage |  |  |  |  |  |
| ↳ | `66A+B > agA` | 106 | n | t | good for ringouts |  |  |  |  |  |
| ↳ | `66A+B > iagA` | 109 | n | t |  |  |  |  |  |  |
| ↳ | `66A+B > SA` | 109 | > sc | t | high SA splat |  |  |  |  |  |
| ↳ | `ntc gs KK` | 73 | y | c | ntc recycle |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 94 | x | c | in sc, can add 66BB for 7 more damage |  |  |  |  |  |
| ↳ | `1A6 > gs B` | 99 | n | t | techtrap, catch stayers (65) with gs B being forceblock |  |  |  |  |  |
| ↳ | `1A6 > ntc gs KK` | 99 | y | t | techtrap, catch stayers (65). Can w! or ringout |  |  |  |  |  |
| ↳ | `1A6 > ntc gs A+B > 66B` | 110 | x | t | techtrap, catch stayers (65). in sc, can add 66BB for 3 more damage |  |  |  |  |  |
| ↳ | `66 > 2A+B` | 72 | y | d | deathtrap. Catch front and left roll |  |  |  |  |  |
| ↳ | `CA` | 101 | x | d | deathtrap, loses to any ukemi |  |  |  |  |  |
| ↳ | `4A+B` | 128 | n | d | deathtrap, loses to right roll |  |  |  |  |  |
| ↳ | `4A+B > SA` | 146 | > sc | d | deathtrap if they stand up with G |  |  |  |  |  |
| `wr [B]` | `nss bA` | 47 | n | c |  |  |  |  |  |  |
| ↳ | `nss b:A` | 55 | n | c |  |  |  |  |  |  |
| ↳ | `ntc nss bAB` | 68 | x | c |  |  |  |  |  |  |
| ↳ | `ntc nss bA:B` | 76 | x | c |  |  |  |  |  |  |
| `CH wr [B]` | `nss B > 2A+B` | 71 | y | c |  | `nss 6B+K > ntc nbs A+B` | 108 | x | t | techtrap (all ukemi) |
| ↳ | `nss B > 66A+B` | 80 | n | c |  |  |  |  |  |  |
| ↳ | `nss B > 236 > ntc gs KK` | 74 | y | c | good for w! or ringout |  |  |  |  |  |
| ↳ | `nss B > wait > 1A6 > gs B` | 104 | n | t |  |  |  |  |  |  |
| ↳ | `nss B > wait > 1A6 > ntc gs A+B > 66B` | 115 | x | t | in sc, can add 66BB for 4 more damage |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `66B` | `2A+B` | 56 | y | c | ntc, simple | `2B+K > nls B` | 77 | n | t | techtrap, stylepoints |
| ↳ | `ntc gs A+B > 66B` | 83 | x | c | ntc spending combo, damage. in sc, can add 66BB for 6 more damage |  |  |  |  |  |
| ↳ | `wait > 1A6 > gs B` | 78 | n | t | techtrap, catch stayers (52) with gs B being forceblock |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs KK` | 78 | y | t | techtrap, catch stayers (52). Recycle ntc, can w! or ringout |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs A+B > 66B` | 90 | x | t | techtrap, catch stayers (52) with gs A+B being forceblock. in sc, can add 66BB for 2 more damage |  |  |  |  |  |
| ↳ | `4B+K > nss B` | 49 | n | c | techtrap. guarandteed part on stayers |  |  |  |  |  |
| ↳ | `4B+K > nss B > 2A+B` | 79 | y | t | techtrap (all ukemi) - ntc, bar |  |  |  |  |  |
| ↳ | `4B+K > nss B > 66A+B` | 89 | y | t | techtrap (all ukemi) - max damage |  |  |  |  |  |
| ↳ | `4B+K > nss B > ntc gs KK` | 87 | y | t | techtrap (all ukemi) - ntc recycle |  |  |  |  |  |
| ↳ | `very small delay > 44B[B] > nss b:A` | 106 | n | t/d | techtrap (all ukemi except left). deathtrap (66 dmg, no nss b:A followup ofc) |  |  |  |  |  |
| ↳ | `6~4A+B` | 114 | n | d | deathtrap. taping 6 is required to catch right roll |  |  |  |  |  |
| ↳ | `6~4A+B > SA` | 132 | > sc | d | deathtrap if they stand up with G |  |  |  |  |  |
| `66B6` | `A+B` | 50 | y | c | ntc, simple |  |  |  |  |  |
| ↳ | `G~2A+B` | 61 | y | c | bar, ntc |  |  |  |  |  |
| ↳ | `G~3AK` | 98 | n | t | techtrap (all ukemi) - damage, bar, ntc. Loses to roll and stayers |  |  |  |  |  |
| ↳ | `G~3AB > 2A+B` | 100 | y | t | techtrap (all ukemi) - damage, bar, ntc. Loses to roll, safe to stayers. Stricted timing then 3AK |  |  |  |  |  |
| ↳ | `G~3AA > ntc gs A+B > 66B` | 140 | x | t | techtrap (watch 3AA hitting in 1st half ot blade to make gsA+B guaranteed followup. in sc, can add 66BB for 10 more damage |  |  |  |  |  |
| ↳ | `G~3AA > 6~236A+B+K (SA)` | 93 | > sc | t | techtrap into NTC. hold 6 for a short moment, then do the qcf motion. Make the SA reliable against all ukemi |  |  |  |  |  |
| ↳ | `CA` | 94 | y | d/c | deathtrap (with perfect timing, combos on all ukemi) |  |  |  |  |  |
| `ntc 66BB` | `66B` | 66 | n | c |  |  |  |  |  |  |
| ↳ | `iagA` | 69 | n | c | 65 dmg as non-justframe |  |  |  |  |  |
| ↳ | `sc 66BB` | 83 | sc | c | actually good damage out of 66BB for once |  |  |  |  |  |
| ↳ | `SA` | 67 | > sc | c | high air splat |  |  |  |  |  |
| `44B` | `2A+B` | 55 | y | c | ntc, bar | `ntc gs KK` | y | t | 60.0 | techtrap. stayers can block for 6 chip dmg and +10 situation |
| ↳ | `22_88~3AA` | 71 | n | t | techtrap (all ukemi). Easy timing if you use buffered 88_22 (side do not matter). Can use 3AK (89). Can use 3AB (70) but will NOT knockdown |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `44BB` | `K` | 64 | n | c |  |  |  |  |  |  |
| ↳ | `SA` | 72 | > sc | c |  |  |  |  |  |  |
| `44B[B]` | `nss bA` | 75 | n | c |  | `ntc gsKK` | y/x | d | 61/98 | deathtrap. against ukemi, is forceblock into +10 situation |
| ↳ | `nss b:A` | 80 | n | c |  |  |  |  |  |  |
| ↳ | `ntc nss b:AB` | 88 | x | c |  |  |  |  |  |  |
| `CH K` | `1A6` | 44 | n | c | guaranteed (gs B is forceblock) | `gs ... A+G` | 46 | y | t | techtrap (all ukemi). Delay gs A+G as much as possible |
| ↳ | `ntc gs KK` | 61 | y | c | guaranteed, ntc recycle, can w! or ringout |  |  |  |  |  |
| ↳ | `SA` | 49 | > sc | c | guaranteed |  |  |  |  |  |
| ↳ | `1A6 > gs B` | 81 | n | t | techtrap (all ukemi) |  |  |  |  |  |
| ↳ | `1A6 > ntc gs KK` | 84 | y | t | techtrap (all ukemi) - ntc recycle, good for w! or ringout |  |  |  |  |  |
| ↳ | `1A6 > ntc gs A+B > 66B` | 96 | x | t | techtrap (all ukemi) - max dmg. in sc, can add 66BB for 8 more damage |  |  |  |  |  |
| ↳ | `66~2A+B` | 57 | y | d | deathtrap. Loses to all ukemi (front/back ukemi block, left/right whiff) |  |  |  |  |  |
| ↳ | `44BB` | 59 | n | d | deathtrap. Also forceblock against back ukemi and combo against front ukemi (92) |  |  |  |  |  |
| ↳ | `1[K]` | 55 | n | d | deathtrap. If they roll, only UB hit. if they wakeup, any 1[K] combo as followup |  |  |  |  |  |
| `6K` | `SA` | 36 | > sc | c | guaranteed | `66B > 2A+B` | 56 | n | t | techtrap (all ukemi except right). Input 66B like 66~B (extremely small delay) to make it work. Can also use 66A+B for 61 dmg |
| ↳ | `66B` | 37 | n | d | deathtrap. in sc, can add 66BB for 6 more damage |  |  |  |  |  |
| ↳ | `66B` | 44 | n | t | techtrap (all ukemi except right). in sc, can add 66BB for 11 more damage |  |  |  |  |  |
| `1[K]` | `6~2A+B` | 54 | y | c | guaranteed. Tap 6 to ensure consistency |  |  |  |  |  |
| ↳ | `1A6` | 48 | n | c | guaranteed (gs B is force block) |  |  |  |  |  |
| ↳ | `1A6 > gs B` | 73 | n | t | techtrap (all ukemi) |  |  |  |  |  |
| ↳ | `1A6 > ntc gs KK` | 70 | y | t | techtrap (all ukemi) - ntc recycle, good for w! or ringout |  |  |  |  |  |
| ↳ | `1A6 > ntc gs A+B > 66BB` | 83 | x | t | techtrap (all ukemi) - max dmg. In sc, can add 66BB for 2 more damage |  |  |  |  |  |
| ↳ | `4A+B` | 112 | n | d | deathtrap (catch all rolls) |  |  |  |  |  |
| ↳ | `6~4A+B > SA` | 133 | > sc | d | deathtrap if they stand up with G |  |  |  |  |  |
| `ntc wr k[B]` | `nss K > 2A+B` | 57 | y | c | ntc, bar | `nss K > SA` | 56 | > sc | c |  |
| ↳ | `nss bA` | 55 | n | c |  | `8 ~ 3AA > 6~236A+B+K (SA)` | 72 | > sc | t | trap against all ukemi. seems 8 step on both sides is only one working. Tap 6 before SA to realign |
| ↳ | `nss b:A` | 62 | n | c | damage. can w! or ringout |  |  |  |  |  |
| ↳ | `sc nss bAB` | 70 | sc | c |  |  |  |  |  |  |
| ↳ | `sc nss b:AB` | 77 | sc | c |  |  |  |  |  |  |
| ↳ | `nss K > 8 ~ 3AB > 2A+B` | 76 | y | t | trap against all ukemi. seems 8 step on both sides is only one working. Kinda strict timing |  |  |  |  |  |
| ↳ | `nss K > 8 ~ 3AA > gs A+B > 66B` | 100 | sc | t | trap against all ukemi. seems 8 step on both sides is only one working. gs A+B works after all ukemi except backroll (can be visually confirmed). in sc, can add 66BB for 3 more damage |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `ntc 66KK6` | `gs cancel > wr [B] > nss B > 2A+B` | 78 | y | c | ntc recycle, bar | `gs 6B > sc gs KK` | 90 | sc | c | good w! or ringout carry |
| ↳ | `wr [B] > 2B+K > nls K` | 62 | x | c | w! or ringout purposes | `gs cancel > wr [B] > sc gs KK` | 75 | sc | c | good w! or ringout carry |
| ↳ | `gs B6 > gs B` | 81 | x | c | easy (high) damage, good ringout carry | `gs cancel > wr [B] > nss B > sc gs KK` | 87 | sc | c | good w! or ringout carry (one of best we got) |
| ↳ | `gs B6 > sc gs A+B > 66B` | 103 | sc | c | max damage sc. ntc 66BB for 4 more damage | `gs cancel > wr [B] > nss B > SA` | 81 | > sc | c | high splat, but 66KK will not launch (stagger used) |
| ↳ | `gs B6 > gs SA` | 84 | > sc | c | high air SA hit | `gs B > iagA` | 85 | x | c | max damage, kinda hard |
| ↳ | `gs cancel > wr [B] > nss B > wait > 1A6` | 76 | x | c | guaranteed (gs B is forcebloxk) |  |  |  |  |  |
| ↳ | `gs cancel > wr [B] > nss B > wait > 1A6 > gs B` | 95 | n | t | techtrap (all ukemi) |  |  |  |  |  |
| ↳ | `gs cancel > wr [B] > nss B > wait > 1A6 > sc gs KK` | 105 | y | t | techtrap (all ukemi) - good for w! or ringout |  |  |  |  |  |
| ↳ | `gs cancel > wr [B] > nss B > wait > 1A6 > ntc gs A+B > 66B` | 109 | x | t | techtrap (all ukemi) - max dmg- in sc, can add 66BB for 1 more damage |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `A+B` | `nbs B` | 66 | n | c |  | `nbs A` | 64 | x | c | some weird positioning, maybe there will be some use for it |
| `6A+B` | `SA` | 52 | > sc | c | works against all ukemi |  |  |  |  |  |
| ↳ | `66B` | 47 | y | d | deathtrap. in sc, can add 66BB for 6 more damage |  |  |  |  |  |
| ↳ | `66B > ntc gs A+B > 66B` | 95 | x | t (x RIGHT) | techtrap (all ukemi except right). Any 66B combo will work (and you have ntc from boom). very small delay on 66~B needed to jgl opponent. in sc, can add 66BB for 3 more damage |  |  |  |  |  |
| `66A+B` | `AA` | 83 | n | c | easy mode (almost) max damage | `2[B] > nls B` | 100 | x | - | can be aircontrolled but usually, it works |
| ↳ | `3AA` | 85 | n | c | max damage | `4KK` | 90 | y | - | can be aircontrolled but usually, it works |
| ↳ | `SA` | 80 | > sc | c | high air SA hit |  |  |  |  |  |
| `fc 2A+G` | `SA` | 41/46 | > sc | c/t/d | guaranteed, different damage for deathtrap and techtrap |  |  |  |  |  |
| ↳ | `66B` | 42 | n | d | deathtrap. in sc, can add 66BB for 4 more damage |  |  |  |  |  |
| ↳ | `no techtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `fc 1A+G` | `BT 2K` | 44 | n | c |  |  |  |  |  |  |
| ↳ | `G~SA` | 62 | > sc | c | guaranteed |  |  |  |  |  |
| ↳ | `G~gs B` | 64 | n | d | deathtrap (80 against rolls) |  |  |  |  |  |
| ↳ | `ntc gs KK` | 72 | y | d | deathtrap - ntc recycle, good for w! or ringout |  |  |  |  |  |
| ↳ | `ntc gs KK` | 30+6 | y | t? | forceblock on ukemi (6 chip damage, +10 on block) |  |  |  |  |  |
| `ch gs A` | `4KK` | 69 | y | c | easy mode, ntc | `ntc 66KK6 > gs B > iagA` | 89 | n | c | max dmage, kinda hard |
| ↳ | `[A] > nss K > 2A+B` | 70 | y | c | max damage, bar build, ntc. Kinda strict timing,m works on all distances except max | `sc 66KK6 > gs B > gs KK` | 94 | sc | c | good w! or ringout carry |
| ↳ | `ntc 66KK6 > gs cancel > wr [B] > nss B > 2A+B` | 85 | y | c | ntc recycle, meter built | `ntc 66KK6 > gs B6 > gs SA` | 87 | > sc | c | high air SA hit |
| ↳ | `sc 66KK6 > gs B > gs A+B > 66B` | 109 | sc | c | max damage sc. ntc 66BB for 4 more damage |  |  |  |  |  |
| ↳ | `[A] > nss K > 8 ~ 3AA` | 81 | n | t | trap against all ukemi. seems 8 step on both sides is only one working. Kinda strict timing |  |  |  |  |  |
| ↳ | `[A] > nss K > 8 ~ 3AA > gs A+B > 66B` | 123 | x | t | trap against all ukemi. seems 8 step on both sides is only one working. gs A+B works after all ukemi except backroll (can be visually confirmed) |  |  |  |  |  |
| ↳ | `ntc 66KK6 > gs cancel > wr [B] > nss B > 1A6 LH...` | 83-113 | y | t | see traps for 66KK6 | `K > (see CH K traps)` | 55-101 | - | t/d | CH K traps are fully viable here |
| `gs B` | `aga` | 70 | n | c |  | `6K` | 60 | n | c | easy mode combo |
| ↳ | `iagA` | 75 | n | c |  |  |  |  |  |  |
| ↳ | `SA` | 49 | > sc | c | high air hit |  |  |  |  |  |
| `gs B6` | `gs B` | 73 | n | c |  | `gs cancel > fc 1A+G_2A+G` | 42 | n | c | 8 |
| ↳ | `gs KK` | 79 | y | c | ntc recycle |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 115 | x | c | max damage. in sc, can add 66BB for 13 more damage |  |  |  |  |  |
| ↳ | `SA` | 74 | > sc | c | high air hit |  |  |  |  |  |
| `gs K` | `2A+B` | 53 | y | c | ntc, bar | `SA` | 53 | > sc | c | high air hit |
| ↳ | `66A+B` | 63 | n | c | max damage | `8~3AA > gs A+B > 66B` | 114 | x | t | works on all ukemi burt after back gs A+B will miss (can be visually confirmed during AA) |
| ↳ | `gs KK` | 54 | y | c | ntc recycle |  |  |  |  |  |
| ↳ | `ntc gs A+B > 66B` | 77 | x | c | max damage. in sc, can add 66BB for 7 more damage |  |  |  |  |  |
| ↳ | `2B+K > nls B` | 74 | n | t | techtrap (all ukemi). nls [B] wil work too for nbsKK 2A+B combo against all ukemi except right |  |  |  |  |  |
| ↳ | `wait > 1A6` | 46 | n | c | guaranteed (gs B is force block) |  |  |  |  |  |
| ↳ | `wait > 1A6 > gs B` | 79 | n | t | techtrap (all ukemi) |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs KK` | 79 | y | t | techtrap (all ukemi) - ntc recycle, good for w! or ringout |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs A+B > 66B` | 90 | x | t | techtrap (all ukemi) - max dmg. in sc, can add 66BB for 3 more damage |  |  |  |  |  |
| ↳ | `4B+K > nss B` | 43 | n | c | guaranteed |  |  |  |  |  |
| ↳ | `4B+K > nss B > 2A+B` | 72 | y | t | techtrap (all ukemi) - ntc, bar build |  |  |  |  |  |
| ↳ | `4B+K > nss B > 66A+B` | 80 | n | t | techtrap (all ukemi) - max damae |  |  |  |  |  |
| ↳ | `4B+K > nss B > ntc gs KK` | 74 | x | t | techtrap (all ukemi) - ntc recycle, can w! or ring out |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `CH nbs A` | `2A+B` | 72 | y | c |  | `SA` | 65 | > sc | c |  |
| `CH nbs [A]` | `nss B` | 57 | n | c |  |  |  |  |  |  |
| ↳ | `ntc nss A+B` | 91 | x | c |  |  |  |  |  |  |
| `CH nbs B` | `BB` | 89 | n | c | easy mode combo | `SA` | 71 | > sc | c | high air hit |
| ↳ | `6[A] > 2B+K > nls K` | 72 | n | c | easy pickup for w! or ring out |  |  |  |  |  |
| ↳ | `6[A] > ntc nss A+B` | 105 | x | c | max damage |  |  |  |  |  |
| `CH nsb (K)K` | `2A+B` | 52 | y | c |  |  |  |  |  |  |
| ↳ | `ntc gs KK` | 53 | y | c | ntc recycle. can w! or ring out |  |  |  |  |  |
| `nls [A]` | `nss K` |  | c | c | works only near edge or wall. can w! or ring out |  |  |  |  |  |
| `nls [B]` | `nbs KK > 2A+B` | 57 | y | c | ntc, bar build |  |  |  |  |  |
| ↳ | `nbs KK > ntc gs KK` | 57 | y | c | ntc recycle. can w! or ring out |  |  |  |  |  |
| ↳ | `small delay > nbs A` | 36 | n | t | techtrap (all ukemi) - guaranteed part. use at tip range where nbs KK will whiff (but works on all distances) |  |  |  |  |  |
| ↳ | `small delay > nbs A > 2A+B` | 62 | y | t | techtrap (all ukemi) - use at tip range where nbs KK will whiff (but works on all distances) |  |  |  |  |  |
| ↳ | `nbs KK > gs K` | 53 | n | c | techtrap (all ukemi) - guaranteed part on stayers |  |  |  |  |  |
| ↳ | `nbs KK > gs K > 2A+B` | 65 | y | t | techtrap (all ukemi) - ntc, bar |  |  |  |  |  |
| ↳ | `nbs KK > gs K > 66A+B` | 69 | n | t | techtrap (all ukemi) - damage |  |  |  |  |  |
| ↳ | `nbs KK > gs K > ntc gs KK` | 66 | y | t | tehtrap (all ukemi) - ntc recycle. can w! or ring out |  |  |  |  |  |
| ↳ | `nbs KK > gs K > ntc gs A+B > 66B` | 80 | x | t | tehtrap (all ukemi) - max damage. in sc, can add 66BB for 4 more damage |  |  |  |  |  |
| `nss [A]` | `nss K` | 34 | n | c | works on all distances. can w! or ring out | `nss b:A` | 62 | n | c | absolute tip range only |
| `nss a[B]` | `nbs B` | 48 | n | c |  |  |  |  |  |  |
| `nss B` | `2A+B` | 58 | y | c | ntc, bar build |  |  |  |  |  |
| ↳ | `66A+B` | 71 | n | c | damage |  |  |  |  |  |
| ↳ | `ntc gs KK` | 68 | y | c | ntc recycle. can w! or ring out |  |  |  |  |  |
| ↳ | `wait > 1A6` | 75 | n | c | guaranteed (gs B is force block) |  |  |  |  |  |
| ↳ | `wait > 1A6 > gs B` | 87 | n | t | techtrap (all ukemi) |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs KK` | 91 | y | t | techtrap (all ukemi) - ntc recycle, good for w! or ringout |  |  |  |  |  |
| ↳ | `wait > 1A6 > ntc gs A+B > 66B` | 103 | x | t | techtrap (all ukemi) - max dmg. in sc, can add 66BB for 4 more damage |  |  |  |  |  |
| ↳ | `44BB` |  | x | d | deathtrap. catch all ukemi except left ?? |  |  |  |  |  |
| `nss aB` | `2A` | 40 | n | c |  |  |  |  |  |  |
| ↳ | `3AA` | 62 | n | t | techtrap (all ukemi).  gs A+B works after all ukemi except backroll (can be visually confirmed) |  |  |  |  |  |
| ↳ | `no deathtrap at all...?` |  |  |  |  |  |  |  |  |  |
| `nss K` | `2A+B` | 50 | y | c |  | `SA` | 50 | > sc | c |  |
| ↳ | `ntc gs KK` | 54 | y | c | ntc recycle. can w! or ringout |  |  |  |  |  |
| `fc 1A+G` | `BT 2K` | 47 | n | c |  | `G~3AA` | 83 | n | t | techtrap against front and side ukemi. justframe input required |
| ↳ | `G~SA` | 62/67 | > sc | c/t/d | guaranteed, different damage for deathtrap and techtrap |  |  |  |  |  |
| ↳ | `G~66B` | 56 | n | d | deathtrap, but punishable on block/whiff. in sc, can add 66BB for 4 more damage | `G~66B` | a LOT | - | t | basically impossible to time (frame-perfect input required) |
| ↳ | `G~ntc gs KK` | 72 | y | d | deathtrap. forceblock against ukemi (6 chip dmg & +10 situation) |  |  |  |  |  |
| `fc 2A+G` | `SA` | 41/49 | > sc | c/t/d | guaranteed, different damage for deathtrap and techtrap |  |  |  |  |  |
| ↳ | `66B` | 42 | n | d | deathtrap. left/rightu ukemi avodis, front/back ukemi blocks (for free punish). in ntc, can add 66BB for 4 more damage |  |  |  |  |  |
| ↳ | `66A+B` | 52 | n | d | deathtrap. left/rightu ukemi avodis, front/back ukemi blocks |  |  |  |  |  |
| ↳ | `ntc gs KK` | - | x | - | forceblock against G anf dront/side ukemi. Whiff on back ukemi. Catch stayers |  |  |  |  |  |
| `RE1 B` | `nss B` | 62 | n | c |  | `gs B > ...` | - | n | t | techtrap (loses to left ukemi). for followup, use any gs B or gs B6 combo above |
| ↳ | `ntc gs KK` | 67 | y | c | ntc recycle. can w! or ring out | `ntc gs A+B > 66B` | 85 | x | t | techtrap (loses to left ukemi). in sc, can add 66BB for 4 more damage |
| ↳ | `ntc nss A+B` | 77 | x | c | max dmg |  |  |  |  |  |
| `armor boom` | `SA` | 58 | > sc | c/t/d | works against all ukemi, but very hard timing agains left ukemi |  |  |  |  |  |
| ↳ | `66B` | 53 | y | d | deathtrap. can add 66BB for 9 more damage |  |  |  |  |  |
| ↳ | `66B > ntc gs A+B > 66B` | 102 | x | t | techtrap (all except right ukemi). Any 66B combo will work (and you have ntc from boom) |  |  |  |  |  |
| `A+G` | `2A+B` | 95 | y | d | deathtrap, catch any roll or stayers |  |  |  |  |  |
| ↳ | `2A` | 71 | n | d/mixup |  |  |  |  |  |  |
| ↳ | `1K` | 70 | n | d/mixup | leaves opponent sideturned |  |  |  |  |  |
| ↳ | `44BB` | combo | n | d/mixup | mid mixup |  |  |  |  |  |
| ↳ | `gsB` | combo | n | d/mixup | mid mixup |  |  |  |  |  |
| ↳ | `small delay > throw` | 110 | n | mixup | throw is meaty |  |  |  |  |  |

### LH Combo List

| Starter | Combo | Dmg | c-NTC | Type | Notes | 🎲 For-fun combo | Dmg | c-NTC | Type | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | `nbs B > BB` | 88 | - | c |  | `nbs B > 6[A] > gsB` | 86 | - | d/t | deathtrap |
| ↳ | `nbs B > 6~2A+B` | 81 | y | c | the 6 must be absolutely minimal. hard to do but consistent on close/mid range | `nbs B > 6[A] > gsB6 > gsB / gsSA / ntc gsKK` | 109 | - | d/t | all ukemi except left |
| ↳ | `nbs B > 6[A] > ntc nss A+B` | 96 | x | c |  | `nbs B > 6[A] > gsB > iagA` | 111 | - | d/t | all ukemi except left |
| ↳ | `nbs B > 6A > 66~2A+B` | 86 | y | d | deathtrap. Also catch front/back ukemi | `nbs B > 6A > gs...A+G` | 85 | y | t | catch all ukemi. delay A+G as much as possible |
| ↳ | `nbs B > 6A > 44A` | 94 | - | t | techtrap against all ukemi. 1A techtrap all ukemi but back post this trap. 66B guaranteed for +2 dmg |  |  |  |  |  |
| ↳ | `nbs B > 6A > 1[K]` | 109 | - | d | deathtrap. can not be rolled | `nbs B > 6A > 1A6 > gsB` | 83 | - | d/t | deathtrap. gsB is forceblock |
| ↳ | `nbs B > 6A > 1[K] > 6~2A+B` | 127 | y | d | deathtrap. if they stand into 1[K] by holding G | `nbs B > 6A > 1A6 > gsB` | 132 | - | d/t | techtrap against all ukemi. Can go for any LH 1A6 combo. Can go up to 165 in SC |
| `1A` | `A+B` | 61 | - | c |  |  |  |  |  |  |
| ↳ | `66A+B` | 62 | - | c |  |  |  |  |  |  |
| ↳ | `gsB` | 56 | - | c |  |  |  |  |  |  |
| ↳ | `ntc gs KK` | 62 | y | c |  |  |  |  |  |  |
| ↳ | `ntc gsA+B > 66B` | 75 | x | c |  |  |  |  |  |  |
| ↳ | `SA` | 60 | > sc | c | low splat |  |  |  |  |  |
| `NSS a(B)` | `gsB6 > NTC GS A+B > 66B` |  |  |  |  |  |  |  |  |  |
| `agA` | `6A > dash in > 2A+B` | 53 | - | d | deathtrap. max bar and charge |  |  |  |  |  |
| ↳ | `6A > 1A6 > gsB` | 49 | - | d | deathtrap. gsB is forceblock |  |  |  |  |  |
| ↳ | `6A > 44A` | 58 | - | t | techtrap against all ukemi. 1A techtrap all ukemi but back post this trap. 66B guaranteed for +2 dmg |  |  |  |  |  |
| ↳ | `6[A] > ntc nss A+B` | 62 | x | c |  |  |  |  |  |  |
| ↳ | `run in > 2A+B` | 47 | y | c |  |  |  |  |  |  |
| ↳ | `66A+B > 66B` | 59 | - | c | character and GI-level specific (need to do 66A+B asap or dash in a little) |  |  |  |  |  |
| ↳ | `66A+B > SA` | 60 | > sc | c | high splat |  |  |  |  |  |
| `wr B` | `b[A] B 3K > 44B as trap?` |  |  |  |  |  |  |  |  |  |

### Wall Combo List

The tab is explicitly a placeholder ("PLACEHOLDER SO FAR, TO GAHTER IDEAS I DO NOT HAVE IN MY S1 LIST"). Rows kept verbatim (2 columns: starter / follow-up idea).

| Starter / idea | Follow-up |
|---|---|
| PLACEHOLDER SO FAR, TO GAHTER IDEAS I DO NOT HAVE IN MY S1 LIST |  |
| nla (a) > nss K w! >> | 2A+G (72, ntc + bar build) |
| ↳ | gs A+G (75, ntc + oki) |
| 1A+G w! | 1G - FC 3B - UB is deathtrap/meaty? |
| ↳ | wr(b) nssB 2A+B |
| ↳ | wr(b) nssB iagA/iabA 2A+B |
| ↳ | 1[A] LH |
| NLS [A] - NSS K w! - 236 A+G  / NLS [A] - NSS K w! - TT NSS B - iagA w! - 2A+B  / NLS [A] - NSS K w! - TT GS B - iagA w! - 2A+B  / NLS [A] - NSS K w! - TT NSS B - 66A+B - iagA w! - 2A+B |  |
| re A w! | 1[A] LH |
