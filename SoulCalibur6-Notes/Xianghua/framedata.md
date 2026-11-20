# Xianghua — Normalized Frame Data

> **Generated** from the SuperCombo MediaWiki API. Regenerate per `../99-data-sources.md`.
> Lab-confirmed corrections (marked ✅) take precedence over this table.

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

Inputs in this file are written **with their access requirement as a prefix**.
An input with **no prefix is usable from neutral standing**. Anything else is gated.

| Written | Means |
|---|---|
| `BB` | from neutral standing |
| `SXS/PXS (B)` | from **either** Xia Sheng stance |
| `PXS BB` | **PXS only** — NOT available in SXS |
| `SC SXS B` | requires Soul Charge **and** SXS |
| `FC 3K` | full crouch only |

⚠️ Never quote a gated move without its prefix. `(B)` alone is meaningless —
`SXS/PXS (B)` (i46, +12 blk) and `SC SXS (B)` (i46, UA) are different moves.

## Xia Sheng access model

```
SXS (Silent)  ──  SXS/PXS 2 (hold to extend)  ──▶  PXS (Playful)
   │                                                  │
   └── 13 shared moves ◀──────────────────────────────┘
                                                      │
                                          + 5 PXS-ONLY moves
```

**PXS is a superset of SXS: 18 moves vs 13.**
- `SXS/PXS A+G` works in **both** stances.
- `PXS BB` (57 dmg launcher) and `PXS A` (the **low**) are **PXS-exclusive**.
- ⚠️ `B` is **overloaded**: `SXS/PXS B` is i28/-10, but `PXS B` is i20/-12. In PXS you get the faster one.
- You can shift SXS → PXS with `SXS/PXS 2`.

### PXS-exclusive (5)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `PXS A` | Serene Echo | L | 18 | 14 | -18 | -2 | -2 | 1 | Tech Crouch[7-14] |
| `PXS AA` | Serene Echo | LM | 18 | 14,16 | -14 | 2 | 2 | 3 |  |
| `PXS (A)` | Serene Echo | L | 18 | 14 | -14 | -2 | -2 | 1 | [SS] into SXS |
| `PXS B` | Burning Lotus Blade | M | 20 | 18 | -12 | -2 | -2 | 2 | Tech Crouch[7-19] |
| `PXS BB` | Burning Lotus Blade | M | 20 | 57 | -14 | LNC | LNC | 2 |  |

### Shared SXS + PXS (13)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SXS/PXS B+K` | Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][12-28] vs horizontal H M |
| `SXS/PXS 2` | Playful Xia Sheng |  |  |  |  |  |  |  | Can be held to extend. [SS] into PXS |
| `SXS/PXS K` | Rising Cloud | M | 14 | 16 | -6 | 8 | 8 | 9 | [LH] on whiffed highs. Tech Crouch |
| `SXS/PXS A+G` | Wind Chime | H | 18 | 25 |  | 14 |  |  | [TH] |
| `SXS/PXS 4A+G` | Wind Chime | H | 18 | 25 |  | 14 |  |  | [TH] |
| `SXS/PXS A` | Splitting Mist | H | 18 | 26 | -2 | 8 | STN | 4 |  |
| `SXS/PXS 4K+G` | Summer Delight | H | 21 | 1 | -10 | -10 | -10 | 0 |  |
| `SXS/PXS 6K+G` | Summer Blessing | MM | 25 | 1,1 | 0 | 10 | 10 | 0 |  |
| `SXS/PXS A+B6` | Dawn Blade | H | 26 | 38 | -2 | KND | KND | 9 | [LH] on whiffed GI |
| `SXS/PXS B` | Waterfall | M | 28 | 35 | -10 | STN | STN | 9 |  |
| `SXS/PXS A+B` | Great Wall | M | 30 | 38 | -16 | KND | KND | 9 | [LH] on counter hitting or whiff punishing a reversal edge |
| `SXS/PXS (B)` | Waterfall | M | 46 | 45 | 12 | STN | STN | 15 |  |
| `SXS/PXS K+G` | Summer Smile | H | 51 | 1 | 0 | 10 | 10 | 0 |  |


## Notation
| Token | Means | Trap |
|---|---|---|
| `A` `B` `K` `G` | horizontal / vertical / kick / guard | **`A` is HORIZONTAL, `B` is VERTICAL** — decides which GI catches it |
| `+` | **simultaneous press** | ⚠️ **NOT a follow-up.** `66B+K` is a *sibling* of `66B`. Never prefix-match across `+`. |
| `(X)` | **hold** | ⚠️ **Hold ≠ stance.** Only `[SS]` in Notes means a stance change. `44(A)` is just an extra hit. |
| lowercase `a` `b` `k` | **SLIDE INPUT** — tap, then slide within 1-2 frames | ⚠️ Execution cost. A failed slide gives a **different move**, not a whiff. |
| `2` suffix | crouch-shift | usually → PXS |
| `4` suffix | backstep | always a GI read, always -38 to -46 |
| `66` / `44` / `22` | any fwd / any back / `2`or`8` | wiki writes `(3)_(6)_(9)` etc. |

## Fields
| Col | Meaning |
|---|---|
| Lvl | attack **height** H/M/L/SL/SM, one letter per hit. NOT move level. |
| i | impact (startup) frames |
| Blk / Hit / CH | advantage on block / hit / counter hit. `KND` `STN` `LNC` are states, not numbers |
| GD | guard damage (`burst`) |

### ⚠️ Fields that DO NOT EXIST
pushback · range · tracking · **recovery** · hitboxes · move level · **sidestep data** · Lethal Hit conditions (except where written in Notes)

### ⚠️ Gating
**118 of 220 moves are neutral.** `cat=GaugeAttacks` = **Soul Charge only** even when `stance` is blank.
The `stance` field is single-valued and **lossy** — `cat` is authoritative.

⚠️ **`METER` vs `SC`:** `cat=GaugeAttacks` only means *costs meter*. `METER 4A+B+K`
**is** Soul Charge (it cannot require Soul Charge) and `METER 236A+B+K` is the
Critical Edge — both usable from **neutral**. Only moves with `stance=SC` need the
Soul Charge *state*. The wiki tags all of them `SC`; that is unreliable.

---

# PART 1 — NEUTRAL (no stance, no meter)

## HorizontalAttacks  (22)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `1AG` | Yann Divide | L |  |  |  |  |  |  | Facing Away |
| `A` | Beautiful Melody | H | 10 | 8 | -10 | 0 | 0 | 1 |  |
| `A(A)` | Beautiful Rhythm | HH | 10 | 8,10 | -6 | 4 | 4 | 2 | [SS] into SXS |
| `AA` | Beautiful Melody | HH | 10 | 8,10 | -10 | 0 | 0 | 2 | Normal Hit Combo |
| `AAA` | Beautiful Melody | HHM | 10 | 8,10,18 | -8 | 4 | 8 | 2 |  |
| `AAB` | Beautiful Rhythm | HHM | 10 | 8,10,18 | -14 | 4 | 4 | 5 | Counter Hit Combo |
| `AAB4` | Beautiful Rhythm ~ Laughing Bea Her Hua | HHM | 10 | 8,10,18 | -38 | -20 | -20 | 5 | [GI] vs vertical H M. [SS] into BHH |
| `2A` | Rhythm Halt | SL | 12 | 10 | -6 | 6 | 6 | 1 |  |
| `6A` | Lian Hua Water Rhythm | H | 14 | 18 | -4 | 8 | 8 | 1 |  |
| `6AA` | Lian Hua Water Rhythm | HL | 14 | 18,18 | -8 | 4 | 4 | 2 | Tech Crouch |
| `3A` | Angry Shui Shian | LH | 22 | 16 | -18 | -2 | 2 | 1 |  |
| `3A2` | Angry Shui Shian ~ Playful Xia Sheng | L | 22 | 16 | -15 | 1 | 5 | 1 | [SS] into PXS |
| `3AK` | Angry Shui Shian | LH | 22 | 16,18 | -2 | KND | KND | 2 | Tech Crouch |
| `a(K)` | Feng Yun | MM | 22 | 12,10 | -6 | 2 | STN | 5 | [SS] into SXS |
| `aK` | Feng Yun | MM | 22 | 12,10 | -8 | 0 | STN | 5 |  |
| `aKB` | Feng Yun | MML | 22 | 22,28 | -14 | KND | KND | 5 |  |
| `aKK` | Feng Yun | MMM | 22 | 22,24 | -12 | 4 | 4 | 5 |  |
| `9A` | Sparrow Spin Blade | H | 24 | 28 | -6 | 6 | 6 | 1 | Tech Jump Leaves BT on hit |
| `1A` | Yann Divide | L | 28 | 22 | -16 | 4 | 4 | 4 | [LH] on hitting an opponent while they are side rolling |
| `4(A)` | Sweet Harmony | H | 28 | 18 | -20 | -6 | -6 | 4 | [SS] into SXS |
| `4A` | Sweet Harmony | M | 28 | 18 | -10 | 4 | 4 | 4 | [GI] 6-20 vs horizontal H M |
| `4AA` | Sweet Harmony | MH | 28 | 18,14 | -6 | 4 | STN | 1 |  |

## VerticalAttacks  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `4B` | Advancing Rhythm | H | 12 | 15 | -8 | 4 | 4 | 2 |  |
| `4BA` | Advancing Rhythm | HM | 12 | 15,20 | -10 | 4 | 4 | 2 |  |
| `4BB` | Pointing Thrust | L | 12 | 15,15 | -12 | 2 | 2 | 5 | Tech Crouch |
| `B` | Emperor's Lament | M | 14 | 12 | -6 | 0 | 0 | 2 |  |
| `BB` | Emperor's Lament | MM | 14 | 12,12 | -8 | 2 | 2 | 2 |  |
| `BB(B)` | Emperor's Lament | MMM | 14 | 12,12,12 | -6 | 4 | 4 | 1 | [SS] into SXS |
| `BBB` | Emperor's Lament | MMMM | 14 | 12,12,12,14 | -6 | 4 | 4 | 3 |  |
| `2B` | Rhythm Break | M | 16 | 18 | -6 | 2 | 2 | 2 |  |
| `3B` | Lian Hua Upper | M | 18 | 24 | -12 | LNC | LNC | 9 |  |
| `6B` | Rippling Chant | M | 18 | 18 | -10 | -2 | 10 | 2 |  |
| `6B2` | Still Water ~ Playful Xia Sheng | M | 18 | 16 | -16 | -6 | 4 | 2 | [SS] into PXS |
| `6B4` | Still Water ~ Laughing Bea Her Hua | M | 18 | 16 | -46 | -36 | -24 | 2 | [SS] into BHH. [GI] vs vertical H M |
| `6BA` | Rippling Chant | ML | 18 | 18,12 | -10 | -2 | -2 | 2 | Tech Crouch |
| `6BB` | Still Water | M | 18 | 18,17 | -6 | KND | LNC | 7 | Tech Crouch |
| `BBK` | Lapis Chime | L | 20 | 12,12,16 | -8 | 4 | 10 | 1 | Tech Crouch |
| `bK` | Crescent Flow | MM | 20 | 24 | -12 | -2 | -2 | 9 |  |
| `9B` | Sparrow Flutter Blade | M | 22 | 32 | -8 | 2 | 2 | 2 | Tech Jump |
| `1B` | Wild Spin | L | 30 | 16 | -18 | -2 | STN | 2 | Tech Crouch[6-56] |
| `bA` | Wei Guang Blade | M | 32 | 24 | -10 | KND | KND | 4 |  |

## KickAttacks  (18)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `K` | Yuen Kick | H | 12 | 14 | -8 | 2 | 2 | 2 |  |
| `3K` | Chicken Kick | M | 14 | 14 | -8 | 4 | 4 | 2 |  |
| `k6` | Heh Kick | H | 14 | 24 | -16 | KND | KND | 1 | Tech Crouch[4-10] |
| `2K` | Woan Shyong Nibble | L | 16 | 12 | -14 | -4 | -4 | 1 |  |
| `4K` | Shan Kick | H | 16 | 16 | -2 | KND | KND | 4 |  |
| `6K` | Swallow's Blade | M | 16 | 14 | -12 | 4 | 4 | 2 |  |
| `6K(A)` | Swallow's Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `6K(A)+(B)` | Swallow's Reverse Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `6KA` | Swallow's Blade | MH | 16 | 14,20 | -12 | 4 | 4 | 2 | Flings airborne target to the left. Tech Jump |
| `6KA+B` | Swallow's Reverse Blade | MH | 16 | 14,20 | -12 | 4 | 4 | 2 | Flings airborne target to the right. Tech Jump |
| `9K` | Star Kick | MM | 18 | 24 | -12 | 8 | 8 | 4 | Tech Jump |
| `9KK` | Star Kick | MMM | 18 | 24,18 | 2 | STN | STN | 10 | Tech Jump |
| `9KK2` | Star Kick ~ Playful Xia Sheng | MMM | 18 | 24,18 | -5 | STN | STN | 10 | [SS] into PXS |
| `1K` | Circle Breaker | L | 24 | 20 | -16 | 2 | KND | 2 |  |
| `1kA` | Circle Breaker Feint Divide | M | 28 | 18 | -10 | 0 | 0 | 4 | Tech Crouch[16-42] |
| `1kAA` | Circle Breaker Feint Divide | MMM | 28 | 18,12,10 | -8 | 4 | STN | 3 | Tech Crouch. Tech Jump |
| `1kAAB` | Circle Breaker Feint Divide | MMML | 28 | 18,12,10,29 | -18 | KND | KND | 5 | Tech Crouch |
| `1kAAK` | Circle Breaker Feint Double Feng Yun | MMMM | 28 | 18,12,10,26 | -16 | 0 | 0 | 5 |  |

## MultiAttacks  (17)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `2(B)+(K)` | Quake Step ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS |
| `8(B)+(K)` | Shiang Gyh Kwei Feint ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS |
| `A+B2` | Hou Ling Thorn ~ Playful Xia Sheng |  |  |  |  |  |  |  | [SS] into PXS. Tech Crouch |
| `B+K` | Hou Lee |  |  |  |  |  |  |  | [SS] |
| `3B+K` | Great Wall | M | 20 | 22 | -14 | 4 | 4 | 9 | Tech Crouch[10-45] |
| `3B+KK` | Great Wall Chime | MM | 20 | 22,27 | -12 | KND | KND | 6 |  |
| `6(B)+(K)` | Muu Jiann | MM | 22 | 16,34 | -10 | LNC | LNC | 20 |  |
| `6A+B` | Twin Mei Hua | MM | 22 | 16,20 | -16 | STN | STN | 8 | [GI][4-12] vs vertical H M. [LH] on successful [GI]. Tech Cr… |
| `6B+K` | Muu Jiann | MM | 22 | 16,23 | -16 | KND | KND | 14 |  |
| `1B+K` | Hwu Dye | M | 24 | 24 | -8 | 4 | 4 | 2 | Tech Crouch |
| `4A+B` | Muu Jiann Retreat | MM | 26 | 18,20 | -12 | STN | STN | 14 | [GI][4-10] vs horizontal H M. [LH] on successful [GI]. |
| `2A+B` | Fluttering Lan Se Ren | M | 28 | 20 | -12 | STN | STN | 12 | [GI][4-8] vs L. LH on successful [GI]. |
| `A+B6` | Hou Ling Thorn | H | 28 | 30 | -4 | KND | KND | 9 | [LH] on an opponent knocked off balance by a GI |
| `8B+K` | Shiang Gyh Kwei Feint | L | 38 | 28 | -12 | 4 | 4 | 15 | Tech Crouch. Tech Jump |
| `2B+K` | Quake Step | SM | 40 | 36 | 4 | KND | KND | 15 |  |
| `A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | [LH] on impact counter Tech Crouch[6-24] |
| `4B+K` | Muu Ling | M | 60 | 50 | STN | STN | STN | 0 | [UA] |

## RunAttacks  (34)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `22B+K` | Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][6-20] vs horizontal H M |
| `44A+BG` | Reverse Shui Shan |  |  |  |  |  |  |  | [SS] into downes state |
| `44B+K` | Laughing Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][7-21] vs vertical H M |
| `66K` | Woan Shyong Swing | M | 14 | 18 | -8 | 4 | 4 | 1 |  |
| `66A` | Fragrant Dream | H | 16 | 18 | -10 | 0 | 0 | 1 |  |
| `66AB` | Fragrant Dream | HM | 16 | 18,12 | -8 | 6 | 6 | 2 | Tech Crouch |
| `66AB(A)` | Fragrant Dream ~ Silent Xia Sheng | HM | 16 | 18,12 | -28 | -14 | -14 | 2 | [SS] into SXS |
| `66AB(B)` | Fragrant Fantasy ~ Silent Xia Sheng | HM | 16 | 18,12 | -33 | -19 | -19 | 2 | [SS] into SXS |
| `66ABA` | Fragrant Dream | HMM | 16 | 18,12,32 | -10 | KND | KND | 5 | Tech Jump |
| `66ABaG` | Fragrant Dream ~ Crouching | HM | 16 | 18,12 | -22 | -8 | -8 | 2 | [SS] into crouch |
| `66ABB` | Fragrant Fantasy | HML | 16 | 18,12,18 | -12 | 4 | KND | 10 | Tech Jump. Tech Crouch |
| `66ABbG` | Fragrant Fantasy ~ Crouching | HM | 16 | 18,12 | -23 | -9 | -9 | 2 | [SS] into crouch |
| `66B+K` | Hou Lee Hua | M | 18 | 40 | -22 | KND | KND | 9 | Damage increases at close range. Tech Crouch[4-11] |
| `22B` | Playful Slice | MM | 20 | 14,11 | -8 | LNC | LNC | 9 |  |
| `66(A)+(B)` | San Jaan | MM | 20 | 10,10 | -8 | 6 | 6 | 4 | [SS] into SXS |
| `66(B)` | Playful Rhythm | M | 20 | 16 | -21 | -9 | STN | 5 | [SS] into SXS |
| `66A+B` | San Jaan | MMM | 20 | 10,10,23 | -12 | KND | KND | 9 |  |
| `66B` | Playful Rhythm | M | 20 | 16 | -2 | 6 | STN | 5 |  |
| `66B(B)` | Playful Rhythm | MM | 20 | 16,36 | 6 | STN | STN | 12 | [BA] |
| `66B4` | Playful Rhythm ~ Laughing Bea Her Hua | M | 20 | 16 | -44 | -32 | STN | 5 | [SS] into BHH. [GI] vs vertical H M [LH] on impact counter |
| `66BB` | Playful Rhythm | MM | 20 | 16,24 | -14 | 4 | STN | 5 |  |
| `66BB4` | Playful Rhythm ~ Laughing Bea Her Hua | MM | 20 | 16,24 | -45 | -27 | STN | 5 | [SS] into BHH. [GI] vs vertical H M |
| `22A` | Storming Lian Hua | M | 22 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[3-8] |
| `22A+B` | Lian Hua Cannon | M | 24 | 30 | -16 | LNC | LNC | 9 | Tech Crouch[8-20] |
| `44A` | Lan Hua | M | 24 | 20 | -8 | 0 | STN | 4 | Tech Crouch[8-26] |
| `44A+B` | Reverse Shui Shan | M | 28 | 24 | -14 | 2 | STN | 4 | Tech Crouch[6-51] |
| `44B` | Vengeful Lian Hua | M | 32 | 36 | -20 | KND | STN | 15 |  |
| `44B4` | Vengeful Lian Hua ~ Silent Xia Sheng | M | 32 | 36 | -47 | KND | KND | 15 | [SS] into BHH. [GI] vs vertical H M |
| `22K` | Mei Hua Kick | M | 36 | 30 | 2 | STN | STN | 15 |  |
| `22K2` | Mei Hua Kick ~ Silent Xia Sheng | M | 36 | 30 | -5 | STN | STN | 15 | [SS] into SXS. Tech Jump |
| `44(A)` | Lan Hua | MH | 38 | 20,10 | 2 | 18 | 18 | 5 | Tech Crouch[8-26] |
| `44K` | Lian Hua Kicks | L | 38 | 20 | -10 | KND | KND | 4 | Tech Crouch[26-56] |
| `44K2K` | Lian Hua Sweeps | LL | 38 | 20,17 | -16 | KND | KND | 1 | Tech Crouch |
| `44KK` | Lian Hua Kicks | LMM | 38 | 20,8,7 | -6 | 6 | 6 | 6 | Tech Crouch. Tech Jump |

## Throws  (6)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `1A+G` | Lo Tsai Shaur | M | 10 | 5 |  |  |  |  | [TH] |
| `1A+GB+K` | Lo Tsai Shaur ~ Reverse Chicken Kick | MM | 10 | 5 |  | 16 |  |  | Just frame input for higher damage |
| `2A+G` | Shui Long Sheang | M | 10 | 50 |  |  |  |  | [TH] |
| `214A+G` | Water Banquet | H | 18 | 40 |  |  |  |  | [TH] +8f on break. +15% Guard Stamina. |
| `4A+G` | Long Ling Sheang | H | 18 | 45 |  |  |  |  | [TH] |
| `A+G` | Yuen Chuei Shaur | H | 18 | 50 |  |  |  |  | [TH] |

## ReversalEdgeAttacks  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Dawn Break | M | 46 | 30 | -2 |  |  | 16 | [RE] |
| `(B)+(G)` | Dawn Break | M | 66 | 40 |  |  |  | 20 | [BA]. [RE] |

---

# PART 2 — OTHER GATED

## SC  (28)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6, 50F recovery, 5… |
| `SC AAB` | Wind Blossom Song | HHM | 10 | 8,10,10,9 | -4 | 8 | 8 | 9 |  |
| `SC AABB` | Wind Blossom Song | HHMM | 10 | 8,10,10,9,24 | -12 | 4 | 10 | 5 |  |
| `SC AABK` | Qing Quake Step | HHL | 10 | 8,10,10,9,39 | 10 | STN | STN | 10 | Melee hit of Quake is +10 on block |
| `SC AABK` | Qing Quake Step | HHL | 10 |  | -4 | STN | STN | 10 | Quake is -4 on block |
| `SC AB` | Dazzling Song | HM | 10 | 8,21 | -24 | STN | STN | 9 | Tech Crouch |
| `SC 66KK` | Drunken Woan Shyong Swing | ML | 12 | 18,21 | -16 | 2 | LNC | 5 |  |
| `SC A+B+K` | Sublimating Blade | M | 12 | 75 | -20 |  |  | 8 |  |
| `SC 66KA` | Woan Shyong Feint Divide | MM | 14 | 18,18 | -10 | 0 | 0 | 2 | Tech Crouch |
| `SC 66KAA` | Woan Shyong Feint Divide | MMMM | 14 | 18,18,12,11 | -8 | 4 | STN | 3 | Tech Crouch. Tech Jump |
| `SC 66KAAB` | Woan Shyong Feint Divide | MMMML | 14 | 18,18,12,11,30 | -18 | KND | KND | 5 | Tech Crouch |
| `SC 66KAAK` | Woan Shyong Feint Kick | MMMMM | 14 | 18,18,12,11,26 | -16 | 0 | 0 | 5 | Tech Jump. Tech Crouch |
| `SC 6AK` | Red Moon Chime | HL | 14 | 18,21 | -14 | KND | KND | 2 | Tech Crouch |
| `SC 6AK2K` | Lian Hua Pagoda Sweeps | HLL | 14 | 18,21,18 | -16 | KND | KND | 2 | Tech Crouch[1-35] |
| `SC 6AKK` | Red Moon Chime | HLMM | 14 | 18,21,8 | -6 | 6 | 6 | 9 | Tech Crouch. Tech Jump |
| `METER 236A+B+K` | Windswept Blossom | M | 16 | 23 | -12 | 4 | 4 | 9 |  |
| `METER 236A+B+KA` | Windswept Blossom | MM | 16 | 23,17 | -2 | 8 | STN | 3 |  |
| `METER 236A+B+Ka2` | Windswept Blossom ~ Playful Xia Sheng | M | 16 | 23 | -10 | 6 | 6 | 9 | [SS] into PXS |
| `METER 236A+B+KaG` | Windswept Blossom | M | 16 | 23 | -10 | 6 | 6 | 9 |  |
| `SC 6K(B)` | Shining Swallow ~ Silent Xia Sheng | MM | 16 | 14,18 | -4 | 10 | 10 | 7 | [SS] into SXS |
| `SC 6KB` | Shining Swallow | MM | 16 | 14,18 | -14 | 0 | 0 | 7 |  |
| `SC 6KBB` | Shining Swallow | MMM | 16 | 14,18,21 | -12 | KND | KND | 10 |  |
| `SC 66B+K` | Scintillating Waterfall | M | 18 | 42 | -10 | KND | KND | 15 | Damage increases at close range. Tech Crouch |
| `SC 66B+KB` | Scintillating Waterfall | MM | 18 | 42,19 | -12 | STN | STN | 10 | Tech Crouch |
| `SC 66B+KbG` | Scintillating Waterfall | M | 18 | 42 | -10 | KND | KND | 15 | Tech Crouch |
| `SC 66A+BB` | Radiant Ring | MMMM | 20 | 10,10,24,55 | 8 | KND | KND | 25 |  |
| `SC bKB` | Flower Dance | MMM | 20 | 25,21 | -20 | LNC | LNC | 10 |  |
| `SC 3AA` | Shining Blossom | LM | 22 | 16,18 | -4 | 16 | 16 | 2 | Tech Crouch |

## SC SXS  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SC SXS 4A+GB` | Twisting Lotus Flower | M | 18 | 56 |  |  |  |  | [TH] |
| `SC SXS A+GB` | Twisting Lotus Flower | M | 18 | 56 |  |  |  |  | [TH] |
| `SC SXS B` | Heavenly Waterfall | M | 28 | 47 | 12 | STN | STN | 15 |  |
| `SC SXS (B)` | Heavenly Waterfall | M | 46 | 62 | STN | STN | STN |  | [UA] |

## FC  (15)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `FC 3(B)+(K)` | Mei Guei Hue Feint ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS |
| `FC 2A` | Chai Hua Slice | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch |
| `FC 2B` | Rhythm Break | M | 16 | 18 | -6 | 2 | 2 | 2 | Tech Crouch |
| `FC 2K` | Woan Shyong Nibble | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch |
| `FC 3K` | Rising Hou Ling Thorn | M | 16 | 26 | -18 | 6 | LNC | 9 | [LH] on hitting a jumping opponent |
| `FC 3KB` | Rising Hou Ling Thorn | MH | 16 | 26,40 | 10 | KND | KND | 12 |  |
| `FC 3KB2` | Rising Hou Ling Thorn ~ Playful Xia Sheng | M | 16 | 26 |  |  |  |  | [SS] into SXS |
| `FC 3KB6` | Rising Shun Ling Thorn | MH | 16 | 26,30 | -4 | KND | KND | 12 |  |
| `FC 3B` | Mei Guei Hua | M | 18 | 26 | -8 | LNC | LNC | 9 |  |
| `FC 3A(A)` | Mei Hua Twilight | H | 19 | 24,18 | -20 | -4 | -4 | 2 | [SS] into BHH. [GI] vs horizontal H M. Tech Jump |
| `FC 3(A)` | Mei Hua Twilight | LH | 24 | 10,14 | -6 | 0 | 0 | 1 | Tech Crouch. [SS] into SXS |
| `FC 3A` | Mei Hua Twilight | LH | 24 | 10,14 | -10 | 0 | 0 | 1 | Tech Crouch |
| `FC 3AA` | Mei Hua Twilight | LHH | 24 | 24,18 | -12 | 4 | 4 | 2 | Tech Jump |
| `FC 3AB` | Mei Hua Divide | H | 29 | 24,26 | -8 | STN | STN | 11 |  |
| `FC 3B+K` | Mei Guei Hue Feint | L | 52 | 32 | 8 | STN | STN | 15 |  |

### ✅ Lab notes 2026-10-14 — FC (raw rows above unchanged)

| Input | Lab observation | Conflicts with raw? |
|---|---|---|
| `FC 2A` | `SL` → blocked by a **standing** guard | No — consistent with `SL` |
| `FC 2B` | Inferior to `FC 2A` in practice | — |
| `FC 2K` | Poor | — |
| `FC 3A` | If the low hits a **standing** guard, the high also hits. Moves her forward (resets pushback). +0 on hit | No |
| `FC 3AA` | 3rd hit is **blockable separately** | — |
| `FC 3(A)`~`SXS K` | Trades/bounces with an i14 move — same as `A(A)` | — |
| `FC 3(A)`~`SXS A+G` | **Interruptible by a jab** | — |
| `FC 3A(A)` | GI vs jab — hard to anticipate | — |
| `FC 3AB` | ⚠️ Can **whiff from the side** depending on posture (whiffed vs Xianghua, hit vs Nightmare). From the front the 3rd hit is blockable, **but beats an i10 jab** after `FC 3A` hits | ⚠️ **Yes — listed `i29` is misleading** for the follow-up timing (string-impact ambiguity) |
| `FC 3B` | Same launcher as `3B`, -8 instead of -12, mid | No |
| `FC 3K` / `FC 3KB6` | `FC 3K` backsteps + TCs highs; -18 on block. `FC 3KB6` = quick charge, 6% guard dmg; `FC 3KB` = 12% guard dmg; both KND. Good **only if `FC 3K` lands** | — |
| `FC 3KB2`~SXS | Slow | — |
| `FC 3B+K` | Slow, telegraphed guard-break low, STN, +8 | No |

## WR  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `WR (K)` | Advancing Tiger Thrust ~ Silent Xia Sheng | M | 12 | 16 | -21 | -11 | -1 | 2 | [SS] into SXS |
| `WR K` | Advancing Tiger Thrust | M | 12 | 16 | -10 | 0 | 10 | 2 | Tech Crouch |
| `WR KB` | Advancing Tiger Thrust | MM | 12 | 16,25 | -14 | STN | STN | 7 |  |
| `WR B` | Shiang Ryh Kwei | MM | 16 | 34 | -2 | STN | STN | 9 | Tech Crouch |
| `WR (A)` | Muu Jiann Rhythm | M | 20 | 16 | -10 | 0 | 0 | 1 | [SS] into SXS |
| `WR A` | Muu Jiann Rhythm | M | 20 | 16 | -8 | 2 | 2 | 1 |  |
| `WR AA` | Muu Jiann Rhythm | MM | 20 | 16,20 | -8 | 4 | 4 | 3 |  |

### ✅ Lab notes 2026-10-14 — WR

| Input | Lab observation |
|---|---|
| `WR B` | -2 blk, STN → frame-trap setups. Default WR button |
| `WR K` family | i12 but **all unsafe**; not much more damage than `WR B` |
| `WR AA` | i20, -8 / +4 — competes with `WR B` |

## BT  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Spinning Jian Slice | H | 12 | 12 | -4 | 6 | 6 | 1 |  |
| `BT 2A` | Spinning Rhythm Halt | SL | 16 | 14 | -6 | 4 | 4 | 1 | Tech Crouch |
| `BT K` | Spinning Yuen Kick | H | 16 | 18 | -4 | 6 | 6 | 2 |  |
| `BT 2B` | Spinning Rhythm Break | M | 18 | 20 | -8 | 2 | 2 | 2 | Tech Crouch |
| `BT 2K` | Spinning Woan Shyong Nibble | L | 18 | 18 | -14 | -4 | -4 | 1 | Tech Crouch |
| `BT B` | Spinning Hua Bann | M | 18 | 18 | -6 | 4 | 4 | 2 |  |
| `BT B+K` | Reverse Chicken Kick | M | 18 | 20 | -6 | 16 | 16 | 9 | Tech Jump |
| `BT 2B+K` | Circle Breaker | L | 22 | 20 | -10 | 10 | 10 | 9 |  |

## BHH  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `BHH A+B2` | Hou Ling Thorn ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS. Tech Crouch |
| `BHH A` | Ma Chiueh | H | 13 | 24 | -10 | STN | STN | 1 |  |
| `BHH B` | Jade Break | M | 16 | 25 | -2 |  |  | 4 | [RE] |
| `BHH K` | Feint Wheel Kick | LM | 24 | 22,16 | -8 | KND | KND | 9 | Tech Crouch |
| `BHH K8_2` | Feint Wheel Kick ~ Sidestep | L | 24 | 22 | -18 | KND | KND | 9 | TS |
| `BHH A+B6` | Hou Ling Thorn | H | 28 | 30 | -4 | KND | KND | 9 | [LH] on an opponent knocked off balance by a GI |
| `BHH A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | Tech Crouch[6-24] [LH] on impact counter |

## RE  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `RE A` | Palace Rhythm | H |  | 20 | -8 | -7 |  | 33 |  |
| `RE AA` | Palace Rhythm | HL |  | 20,22 | -4 | KND | KND | 33 | [LH] on hit in RE round 2 as the initiator. Tech Crouch |
| `RE AaG` | Palace Rhythm | H |  | 20 | -12 | -11 |  | 33 |  |
| `RE AB` | Jewel Song | HM |  | 20,20 | -4 | LNC | LNC | 34 |  |
| `RE B` | Auspicious Strike | M |  | 36 |  | KND |  | 50 | [LH] on hit in RE round 2 as the initiator. Facing away |
| `RE K` | Lin Yuen Kick | M |  | 24 | -6 | 12 |  | 33 | [LH] on hit in RE round 2 as the initiator. Facing away |
| `RE KB+K` | Lin Yuen Kick ~ Hou Lee | M |  | 24 | 12 | 30 | 30 | 33 | [SS] into HL |

## HL  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `HL B` | Lower Great Wall Punishment | M | 34 | 45 | -2 | KND | KND | 9 | Tech Crouch |
| `HL (B)` | Lower Great Wall | M | 56 | 55 | 8 | KND | KND | 15 | Tech Crouch [BA] |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding | L | 22 | 22 | -22 | KND | KND | 9 |  |

## WD  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `WD A+B` | Guei | L | 6 | 5 | -30 | -20 | -20 | 2 | Active for 25f. Safety depends on what frame it hits. |

## quake  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `quake 2B+K` | Quake Step | L | 44 | 0 | -14 | STN | STN | 0 |  |

## Positional throws  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `BACK THROW A+G` | Yuh Luen Shaur | H | 18 | 70 |  |  |  |  | [TH] |
| `LEFT SIDE THROW A+G` | Tien E Shang | H | 18 | 62 |  |  |  |  | [TH] |
| `RIGHT SIDE THROW A+G` | Yng Dyi Yann | H | 18 | 60 |  |  |  |  | [TH] |


---

# PART 3 — DERIVED INDEXES

## Plus or neutral on BLOCK (neutral only)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | [LH] on impact counter Tech Crouch[6-24] |
| `66B(B)` | Playful Rhythm | MM | 20 | 16,36 | 6 | STN | STN | 12 | [BA] |
| `2B+K` | Quake Step | SM | 40 | 36 | 4 | KND | KND | 15 |  |
| `9KK` | Star Kick | MMM | 18 | 24,18 | 2 | STN | STN | 10 | Tech Jump |
| `44(A)` | Lan Hua | MH | 38 | 20,10 | 2 | 18 | 18 | 5 | Tech Crouch[8-26] |
| `22K` | Mei Hua Kick | M | 36 | 30 | 2 | STN | STN | 15 |  |

## Safe (blk ≥ -8) AND fast (i ≤ 16) — neutral only

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `AAA` | Beautiful Melody | HHM | 10 | 8,10,18 | -8 | 4 | 8 | 2 |  |
| `A(A)` | Beautiful Rhythm | HH | 10 | 8,10 | -6 | 4 | 4 | 2 | [SS] into SXS |
| `2A` | Rhythm Halt | SL | 12 | 10 | -6 | 6 | 6 | 1 |  |
| `4B` | Advancing Rhythm | H | 12 | 15 | -8 | 4 | 4 | 2 |  |
| `K` | Yuen Kick | H | 12 | 14 | -8 | 2 | 2 | 2 |  |
| `6A` | Lian Hua Water Rhythm | H | 14 | 18 | -4 | 8 | 8 | 1 |  |
| `6AA` | Lian Hua Water Rhythm | HL | 14 | 18,18 | -8 | 4 | 4 | 2 | Tech Crouch |
| `B` | Emperor's Lament | M | 14 | 12 | -6 | 0 | 0 | 2 |  |
| `BB` | Emperor's Lament | MM | 14 | 12,12 | -8 | 2 | 2 | 2 |  |
| `BBB` | Emperor's Lament | MMMM | 14 | 12,12,12,14 | -6 | 4 | 4 | 3 |  |
| `BB(B)` | Emperor's Lament | MMM | 14 | 12,12,12 | -6 | 4 | 4 | 1 | [SS] into SXS |
| `3K` | Chicken Kick | M | 14 | 14 | -8 | 4 | 4 | 2 |  |
| `66K` | Woan Shyong Swing | M | 14 | 18 | -8 | 4 | 4 | 1 |  |
| `2B` | Rhythm Break | M | 16 | 18 | -6 | 2 | 2 | 2 |  |
| `4K` | Shan Kick | H | 16 | 16 | -2 | KND | KND | 4 |  |
| `66AB` | Fragrant Dream | HM | 16 | 18,12 | -8 | 6 | 6 | 2 | Tech Crouch |

## All LOWS (neutral only)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `1AG` | Yann Divide | L |  |  |  |  |  |  | Facing Away |
| `4BB` | Pointing Thrust | L | 12 | 15,15 | -12 | 2 | 2 | 5 | Tech Crouch |
| `2A` | Rhythm Halt | SL | 12 | 10 | -6 | 6 | 6 | 1 |  |
| `6AA` | Lian Hua Water Rhythm | HL | 14 | 18,18 | -8 | 4 | 4 | 2 | Tech Crouch |
| `66ABB` | Fragrant Fantasy | HML | 16 | 18,12,18 | -12 | 4 | KND | 10 | Tech Jump. Tech Crouch |
| `2K` | Woan Shyong Nibble | L | 16 | 12 | -14 | -4 | -4 | 1 |  |
| `6BA` | Rippling Chant | ML | 18 | 18,12 | -10 | -2 | -2 | 2 | Tech Crouch |
| `BBK` | Lapis Chime | L | 20 | 12,12,16 | -8 | 4 | 10 | 1 | Tech Crouch |
| `aKB` | Feng Yun | MML | 22 | 22,28 | -14 | KND | KND | 5 |  |
| `3A2` | Angry Shui Shian ~ Playful Xia Sheng | L | 22 | 16 | -15 | 1 | 5 | 1 | [SS] into PXS |
| `3AK` | Angry Shui Shian | LH | 22 | 16,18 | -2 | KND | KND | 2 | Tech Crouch |
| `3A` | Angry Shui Shian | LH | 22 | 16 | -18 | -2 | 2 | 1 |  |
| `1K` | Circle Breaker | L | 24 | 20 | -16 | 2 | KND | 2 |  |
| `1kAAB` | Circle Breaker Feint Divide | MMML | 28 | 18,12,10,29 | -18 | KND | KND | 5 | Tech Crouch |
| `1A` | Yann Divide | L | 28 | 22 | -16 | 4 | 4 | 4 | [LH] on hitting an opponent while they are side rolling |
| `1B` | Wild Spin | L | 30 | 16 | -18 | -2 | STN | 2 | Tech Crouch[6-56] |
| `44KK` | Lian Hua Kicks | LMM | 38 | 20,8,7 | -6 | 6 | 6 | 6 | Tech Crouch. Tech Jump |
| `8B+K` | Shiang Gyh Kwei Feint | L | 38 | 28 | -12 | 4 | 4 | 15 | Tech Crouch. Tech Jump |
| `44K` | Lian Hua Kicks | L | 38 | 20 | -10 | KND | KND | 4 | Tech Crouch[26-56] |
| `44K2K` | Lian Hua Sweeps | LL | 38 | 20,17 | -16 | KND | KND | 1 | Tech Crouch |

## Stance entries (neutral only) — ranked by block advantage

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `2(B)+(K)` | Quake Step ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS |
| `44A+BG` | Reverse Shui Shan |  |  |  |  |  |  |  | [SS] into downes state |
| `8(B)+(K)` | Shiang Gyh Kwei Feint ~ Silent Xia Sheng |  |  |  |  |  |  |  | [SS] into SXS |
| `22B+K` | Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][6-20] vs horizontal H M |
| `B+K` | Hou Lee |  |  |  |  |  |  |  | [SS] |
| `A+B2` | Hou Ling Thorn ~ Playful Xia Sheng |  |  |  |  |  |  |  | [SS] into PXS. Tech Crouch |
| `44B+K` | Laughing Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][7-21] vs vertical H M |
| `9KK2` | Star Kick ~ Playful Xia Sheng | MMM | 18 | 24,18 | -5 | STN | STN | 10 | [SS] into PXS |
| `22K2` | Mei Hua Kick ~ Silent Xia Sheng | M | 36 | 30 | -5 | STN | STN | 15 | [SS] into SXS. Tech Jump |
| `BB(B)` | Emperor's Lament | MMM | 14 | 12,12,12 | -6 | 4 | 4 | 1 | [SS] into SXS |
| `a(K)` | Feng Yun | MM | 22 | 12,10 | -6 | 2 | STN | 5 | [SS] into SXS |
| `A(A)` | Beautiful Rhythm | HH | 10 | 8,10 | -6 | 4 | 4 | 2 | [SS] into SXS |
| `66(A)+(B)` | San Jaan | MM | 20 | 10,10 | -8 | 6 | 6 | 4 | [SS] into SXS |
| `3A2` | Angry Shui Shian ~ Playful Xia Sheng | L | 22 | 16 | -15 | 1 | 5 | 1 | [SS] into PXS |
| `6B2` | Still Water ~ Playful Xia Sheng | M | 18 | 16 | -16 | -6 | 4 | 2 | [SS] into PXS |
| `6K(A)` | Swallow's Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `6K(A)+(B)` | Swallow's Reverse Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `4(A)` | Sweet Harmony | H | 28 | 18 | -20 | -6 | -6 | 4 | [SS] into SXS |
| `66(B)` | Playful Rhythm | M | 20 | 16 | -21 | -9 | STN | 5 | [SS] into SXS |
| `66ABaG` | Fragrant Dream ~ Crouching | HM | 16 | 18,12 | -22 | -8 | -8 | 2 | [SS] into crouch |
| `66ABbG` | Fragrant Fantasy ~ Crouching | HM | 16 | 18,12 | -23 | -9 | -9 | 2 | [SS] into crouch |
| `66AB(A)` | Fragrant Dream ~ Silent Xia Sheng | HM | 16 | 18,12 | -28 | -14 | -14 | 2 | [SS] into SXS |
| `66AB(B)` | Fragrant Fantasy ~ Silent Xia Sheng | HM | 16 | 18,12 | -33 | -19 | -19 | 2 | [SS] into SXS |
| `AAB4` | Beautiful Rhythm ~ Laughing Bea Her Hua | HHM | 10 | 8,10,18 | -38 | -20 | -20 | 5 | [GI] vs vertical H M. [SS] into BHH |
| `66B4` | Playful Rhythm ~ Laughing Bea Her Hua | M | 20 | 16 | -44 | -32 | STN | 5 | [SS] into BHH. [GI] vs vertical H M [LH] on impact counter |
| `66BB4` | Playful Rhythm ~ Laughing Bea Her Hua | MM | 20 | 16,24 | -45 | -27 | STN | 5 | [SS] into BHH. [GI] vs vertical H M |
| `6B4` | Still Water ~ Laughing Bea Her Hua | M | 18 | 16 | -46 | -36 | -24 | 2 | [SS] into BHH. [GI] vs vertical H M |
| `44B4` | Vengeful Lian Hua ~ Silent Xia Sheng | M | 32 | 36 | -47 | KND | KND | 15 | [SS] into BHH. [GI] vs vertical H M |

## Launchers / knockdowns / stuns (neutral only)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `k6` | Heh Kick | H | 14 | 24 | -16 | KND | KND | 1 | Tech Crouch[4-10] |
| `4K` | Shan Kick | H | 16 | 16 | -2 | KND | KND | 4 |  |
| `66ABA` | Fragrant Dream | HMM | 16 | 18,12,32 | -10 | KND | KND | 5 | Tech Jump |
| `66B+K` | Hou Lee Hua | M | 18 | 40 | -22 | KND | KND | 9 | Damage increases at close range. Tech Crouch[4-11] |
| `6BB` | Still Water | M | 18 | 18,17 | -6 | KND | LNC | 7 | Tech Crouch |
| `3B` | Lian Hua Upper | M | 18 | 24 | -12 | LNC | LNC | 9 |  |
| `9KK` | Star Kick | MMM | 18 | 24,18 | 2 | STN | STN | 10 | Tech Jump |
| `9KK2` | Star Kick ~ Playful Xia Sheng | MMM | 18 | 24,18 | -5 | STN | STN | 10 | [SS] into PXS |
| `66A+B` | San Jaan | MMM | 20 | 10,10,23 | -12 | KND | KND | 9 |  |
| `22B` | Playful Slice | MM | 20 | 14,11 | -8 | LNC | LNC | 9 |  |
| `66B(B)` | Playful Rhythm | MM | 20 | 16,36 | 6 | STN | STN | 12 | [BA] |
| `3B+KK` | Great Wall Chime | MM | 20 | 22,27 | -12 | KND | KND | 6 |  |
| `6(B)+(K)` | Muu Jiann | MM | 22 | 16,34 | -10 | LNC | LNC | 20 |  |
| `6B+K` | Muu Jiann | MM | 22 | 16,23 | -16 | KND | KND | 14 |  |
| `aKB` | Feng Yun | MML | 22 | 22,28 | -14 | KND | KND | 5 |  |
| `6A+B` | Twin Mei Hua | MM | 22 | 16,20 | -16 | STN | STN | 8 | [GI][4-12] vs vertical H M. [LH] on successful [GI]. Tech Cr… |
| `3AK` | Angry Shui Shian | LH | 22 | 16,18 | -2 | KND | KND | 2 | Tech Crouch |
| `22A+B` | Lian Hua Cannon | M | 24 | 30 | -16 | LNC | LNC | 9 | Tech Crouch[8-20] |
| `4A+B` | Muu Jiann Retreat | MM | 26 | 18,20 | -12 | STN | STN | 14 | [GI][4-10] vs horizontal H M. [LH] on successful [GI]. |
| `1kAAB` | Circle Breaker Feint Divide | MMML | 28 | 18,12,10,29 | -18 | KND | KND | 5 | Tech Crouch |
| `2A+B` | Fluttering Lan Se Ren | M | 28 | 20 | -12 | STN | STN | 12 | [GI][4-8] vs L. LH on successful [GI]. |
| `A+B6` | Hou Ling Thorn | H | 28 | 30 | -4 | KND | KND | 9 | [LH] on an opponent knocked off balance by a GI |
| `44B` | Vengeful Lian Hua | M | 32 | 36 | -20 | KND | STN | 15 |  |
| `44B4` | Vengeful Lian Hua ~ Silent Xia Sheng | M | 32 | 36 | -47 | KND | KND | 15 | [SS] into BHH. [GI] vs vertical H M |
| `bA` | Wei Guang Blade | M | 32 | 24 | -10 | KND | KND | 4 |  |
| `22K` | Mei Hua Kick | M | 36 | 30 | 2 | STN | STN | 15 |  |
| `22K2` | Mei Hua Kick ~ Silent Xia Sheng | M | 36 | 30 | -5 | STN | STN | 15 | [SS] into SXS. Tech Jump |
| `44K` | Lian Hua Kicks | L | 38 | 20 | -10 | KND | KND | 4 | Tech Crouch[26-56] |
| `44K2K` | Lian Hua Sweeps | LL | 38 | 20,17 | -16 | KND | KND | 1 | Tech Crouch |
| `2B+K` | Quake Step | SM | 40 | 36 | 4 | KND | KND | 15 |  |
| `A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | [LH] on impact counter Tech Crouch[6-24] |
| `4B+K` | Muu Ling | M | 60 | 50 | STN | STN | STN | 0 | [UA] |

## Lethal Hit moves (ALL, gated included)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `66B4` | Playful Rhythm ~ Laughing Bea Her Hua | M | 20 | 16 | -44 | -32 | STN | 5 | [SS] into BHH. [GI] vs vertical H M [LH] on impact counter |
| `6A+B` | Twin Mei Hua | MM | 22 | 16,20 | -16 | STN | STN | 8 | [GI][4-12] vs vertical H M. [LH] on successful [GI]. Tech Cr… |
| `4A+B` | Muu Jiann Retreat | MM | 26 | 18,20 | -12 | STN | STN | 14 | [GI][4-10] vs horizontal H M. [LH] on successful [GI]. |
| `1A` | Yann Divide | L | 28 | 22 | -16 | 4 | 4 | 4 | [LH] on hitting an opponent while they are side rolling |
| `A+B6` | Hou Ling Thorn | H | 28 | 30 | -4 | KND | KND | 9 | [LH] on an opponent knocked off balance by a GI |
| `2A+B` | Fluttering Lan Se Ren | M | 28 | 20 | -12 | STN | STN | 12 | [GI][4-8] vs L. LH on successful [GI]. |
| `A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | [LH] on impact counter Tech Crouch[6-24] |
| `BHH A+B6` | Hou Ling Thorn | H | 28 | 30 | -4 | KND | KND | 9 | [LH] on an opponent knocked off balance by a GI |
| `BHH A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | Tech Crouch[6-24] [LH] on impact counter |
| `FC 3K` | Rising Hou Ling Thorn | M | 16 | 26 | -18 | 6 | LNC | 9 | [LH] on hitting a jumping opponent |
| `RE AA` | Palace Rhythm | HL |  | 20,22 | -4 | KND | KND | 33 | [LH] on hit in RE round 2 as the initiator. Tech Crouch |
| `RE B` | Auspicious Strike | M |  | 36 |  | KND |  | 50 | [LH] on hit in RE round 2 as the initiator. Facing away |
| `RE K` | Lin Yuen Kick | M |  | 24 | -6 | 12 |  | 33 | [LH] on hit in RE round 2 as the initiator. Facing away |
| `SXS/PXS K` | Rising Cloud | M | 14 | 16 | -6 | 8 | 8 | 9 | [LH] on whiffed highs. Tech Crouch |
| `SXS/PXS A+B6` | Dawn Blade | H | 26 | 38 | -2 | KND | KND | 9 | [LH] on whiffed GI |
| `SXS/PXS A+B` | Great Wall | M | 30 | 38 | -16 | KND | KND | 9 | [LH] on counter hitting or whiff punishing a reversal edge |


## Guard Impact moves — ⚠️ check WHAT each one covers

| Covers | Moves |
|---|---|
| **vertical H/M** (`B` attacks) | `AAB4`, `6B4`, `6K(A)`, `66B4`, `66BB4`, `44B4`, `44B+K`[7-21], `6A+B`[4-12] |
| **horizontal H/M** (`A` attacks — incl. **jabs**) | **`4A`**[6-20], `4A+B`[4-10], `22B+K`[6-20], `FC 3A(A)`, `SXS/PXS B+K`[12-28] |
| **LOWS** | `2A+B`[4-8] |

- The `4`-suffix backstep branches are **all vertical-only** → they do **NOT** catch an i10 `A` jab.
- **`4A` is the anti-jab GI.**
- Bracketed numbers are the **active GI window** in frames.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `22B+K` | Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][6-20] vs horizontal H M |
| `2A+B` | Fluttering Lan Se Ren | M | 28 | 20 | -12 | STN | STN | 12 | [GI][4-8] vs L. LH on successful [GI]. |
| `44B+K` | Laughing Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][7-21] vs vertical H M |
| `44B4` | Vengeful Lian Hua ~ Silent Xia Sheng | M | 32 | 36 | -47 | KND | KND | 15 | [SS] into BHH. [GI] vs vertical H M |
| `4A` | Sweet Harmony | M | 28 | 18 | -10 | 4 | 4 | 4 | [GI] 6-20 vs horizontal H M |
| `4A+B` | Muu Jiann Retreat | MM | 26 | 18,20 | -12 | STN | STN | 14 | [GI][4-10] vs horizontal H M. [LH] on successful [GI]. |
| `66B4` | Playful Rhythm ~ Laughing Bea Her Hua | M | 20 | 16 | -44 | -32 | STN | 5 | [SS] into BHH. [GI] vs vertical H M [LH] on impact counter |
| `66BB4` | Playful Rhythm ~ Laughing Bea Her Hua | MM | 20 | 16,24 | -45 | -27 | STN | 5 | [SS] into BHH. [GI] vs vertical H M |
| `6A+B` | Twin Mei Hua | MM | 22 | 16,20 | -16 | STN | STN | 8 | [GI][4-12] vs vertical H M. [LH] on successful [GI]. Tech Cr… |
| `6B4` | Still Water ~ Laughing Bea Her Hua | M | 18 | 16 | -46 | -36 | -24 | 2 | [SS] into BHH. [GI] vs vertical H M |
| `6K(A)` | Swallow's Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `6K(A)+(B)` | Swallow's Reverse Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `AAB4` | Beautiful Rhythm ~ Laughing Bea Her Hua | HHM | 10 | 8,10,18 | -38 | -20 | -20 | 5 | [GI] vs vertical H M. [SS] into BHH |
| `FC 3A(A)` | Mei Hua Twilight | H | 19 | 24,18 | -20 | -4 | -4 | 2 | [SS] into BHH. [GI] vs horizontal H M. Tech Jump |
| `SXS/PXS B+K` | Bea Her Hua |  |  |  |  |  |  |  | [SS] into BHH. [GI][12-28] vs horizontal H M |

## Break Attacks / Unblockables

> Per glossary: `BA` and `UA` **cannot be countered by GI or RE**. Only `RI` (Resist Impact) parries them.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `(B)+(G)` | Dawn Break | M | 66 | 40 |  |  |  | 20 | [BA]. [RE] |
| `4B+K` | Muu Ling | M | 60 | 50 | STN | STN | STN | 0 | [UA] |
| `66B(B)` | Playful Rhythm | MM | 20 | 16,36 | 6 | STN | STN | 12 | [BA] |
| `HL (B)` | Lower Great Wall | M | 56 | 55 | 8 | KND | KND | 15 | Tech Crouch [BA] |
| `SC SXS (B)` | Heavenly Waterfall | M | 46 | 62 | STN | STN | STN |  | [UA] |

## Slide-input moves (execution cost)

> Lowercase = tap, then **slide** within 1-2 frames. A failed slide gives a **different move**:
> `k6`→`K` · `aK`→`A` · `1kA`→`1K`. Drill the entry alone before the string.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `1kA` | Circle Breaker Feint Divide | M | 28 | 18 | -10 | 0 | 0 | 4 | Tech Crouch[16-42] |
| `1kAA` | Circle Breaker Feint Divide | MMM | 28 | 18,12,10 | -8 | 4 | STN | 3 | Tech Crouch. Tech Jump |
| `1kAAB` | Circle Breaker Feint Divide | MMML | 28 | 18,12,10,29 | -18 | KND | KND | 5 | Tech Crouch |
| `1kAAK` | Circle Breaker Feint Double Feng Yun | MMMM | 28 | 18,12,10,26 | -16 | 0 | 0 | 5 |  |
| `a(K)` | Feng Yun | MM | 22 | 12,10 | -6 | 2 | STN | 5 | [SS] into SXS |
| `aK` | Feng Yun | MM | 22 | 12,10 | -8 | 0 | STN | 5 |  |
| `aKB` | Feng Yun | MML | 22 | 22,28 | -14 | KND | KND | 5 |  |
| `aKK` | Feng Yun | MMM | 22 | 22,24 | -12 | 4 | 4 | 5 |  |
| `bA` | Wei Guang Blade | M | 32 | 24 | -10 | KND | KND | 4 |  |
| `bK` | Crescent Flow | MM | 20 | 24 | -12 | -2 | -2 | 9 |  |
| `k6` | Heh Kick | H | 14 | 24 | -16 | KND | KND | 1 | Tech Crouch[4-10] |
| `SC bKB` | Flower Dance | MMM | 20 | 25,21 | -20 | LNC | LNC | 10 |  |

## Tech Crouch (dodges HIGHS) / Tech Jump (dodges LOWS) — neutral only

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `A+B2` | Hou Ling Thorn ~ Playful Xia Sheng |  |  |  |  |  |  |  | [SS] into PXS. Tech Crouch |
| `4BB` | Pointing Thrust | L | 12 | 15,15 | -12 | 2 | 2 | 5 | Tech Crouch |
| `6AA` | Lian Hua Water Rhythm | HL | 14 | 18,18 | -8 | 4 | 4 | 2 | Tech Crouch |
| `k6` | Heh Kick | H | 14 | 24 | -16 | KND | KND | 1 | Tech Crouch[4-10] |
| `66ABB` | Fragrant Fantasy | HML | 16 | 18,12,18 | -12 | 4 | KND | 10 | Tech Jump. Tech Crouch |
| `66ABA` | Fragrant Dream | HMM | 16 | 18,12,32 | -10 | KND | KND | 5 | Tech Jump |
| `66AB` | Fragrant Dream | HM | 16 | 18,12 | -8 | 6 | 6 | 2 | Tech Crouch |
| `6K(A)+(B)` | Swallow's Reverse Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `6KA+B` | Swallow's Reverse Blade | MH | 16 | 14,20 | -12 | 4 | 4 | 2 | Flings airborne target to the right. Tech Jump |
| `6KA` | Swallow's Blade | MH | 16 | 14,20 | -12 | 4 | 4 | 2 | Flings airborne target to the left. Tech Jump |
| `6K(A)` | Swallow's Blade ~ Bea Her Hua | MH | 16 | 14,20 | -20 | -4 | -4 | 2 | Tech Jump. [SS] into BHH. [GI] vs vertical H M |
| `9K` | Star Kick | MM | 18 | 24 | -12 | 8 | 8 | 4 | Tech Jump |
| `9KK` | Star Kick | MMM | 18 | 24,18 | 2 | STN | STN | 10 | Tech Jump |
| `66B+K` | Hou Lee Hua | M | 18 | 40 | -22 | KND | KND | 9 | Damage increases at close range. Tech Crouch[4-11] |
| `6BA` | Rippling Chant | ML | 18 | 18,12 | -10 | -2 | -2 | 2 | Tech Crouch |
| `6BB` | Still Water | M | 18 | 18,17 | -6 | KND | LNC | 7 | Tech Crouch |
| `3B+K` | Great Wall | M | 20 | 22 | -14 | 4 | 4 | 9 | Tech Crouch[10-45] |
| `BBK` | Lapis Chime | L | 20 | 12,12,16 | -8 | 4 | 10 | 1 | Tech Crouch |
| `3AK` | Angry Shui Shian | LH | 22 | 16,18 | -2 | KND | KND | 2 | Tech Crouch |
| `6A+B` | Twin Mei Hua | MM | 22 | 16,20 | -16 | STN | STN | 8 | [GI][4-12] vs vertical H M. [LH] on successful [GI]. Tech Cr… |
| `22A` | Storming Lian Hua | M | 22 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[3-8] |
| `9B` | Sparrow Flutter Blade | M | 22 | 32 | -8 | 2 | 2 | 2 | Tech Jump |
| `22A+B` | Lian Hua Cannon | M | 24 | 30 | -16 | LNC | LNC | 9 | Tech Crouch[8-20] |
| `44A` | Lan Hua | M | 24 | 20 | -8 | 0 | STN | 4 | Tech Crouch[8-26] |
| `1B+K` | Hwu Dye | M | 24 | 24 | -8 | 4 | 4 | 2 | Tech Crouch |
| `9A` | Sparrow Spin Blade | H | 24 | 28 | -6 | 6 | 6 | 1 | Tech Jump Leaves BT on hit |
| `1kAAB` | Circle Breaker Feint Divide | MMML | 28 | 18,12,10,29 | -18 | KND | KND | 5 | Tech Crouch |
| `44A+B` | Reverse Shui Shan | M | 28 | 24 | -14 | 2 | STN | 4 | Tech Crouch[6-51] |
| `1kA` | Circle Breaker Feint Divide | M | 28 | 18 | -10 | 0 | 0 | 4 | Tech Crouch[16-42] |
| `1kAA` | Circle Breaker Feint Divide | MMM | 28 | 18,12,10 | -8 | 4 | STN | 3 | Tech Crouch. Tech Jump |
| `1B` | Wild Spin | L | 30 | 16 | -18 | -2 | STN | 2 | Tech Crouch[6-56] |
| `22K2` | Mei Hua Kick ~ Silent Xia Sheng | M | 36 | 30 | -5 | STN | STN | 15 | [SS] into SXS. Tech Jump |
| `44(A)` | Lan Hua | MH | 38 | 20,10 | 2 | 18 | 18 | 5 | Tech Crouch[8-26] |
| `44K` | Lian Hua Kicks | L | 38 | 20 | -10 | KND | KND | 4 | Tech Crouch[26-56] |
| `44KK` | Lian Hua Kicks | LMM | 38 | 20,8,7 | -6 | 6 | 6 | 6 | Tech Crouch. Tech Jump |
| `44K2K` | Lian Hua Sweeps | LL | 38 | 20,17 | -16 | KND | KND | 1 | Tech Crouch |
| `8B+K` | Shiang Gyh Kwei Feint | L | 38 | 28 | -12 | 4 | 4 | 15 | Tech Crouch. Tech Jump |
| `A+B` | Hou Ling Thorn | H | 42 | 40 | 10 | KND | KND | 15 | [LH] on impact counter Tech Crouch[6-24] |

### ✅ Lab 2026-10-14 — does the move END crouched (→ FC/WR follow-ups)?

> **`Tech Crouch` is an indicator, not a guarantee.** The label says *some* frames
> are crouched — not that the move *ends* crouched, and not which hit.

| Input | Ends crouched → WR/FC? | Note |
|---|---|---|
| `BBK` | ✅ **Yes** (`WR B` works) | |
| `6BA` | ✅ **Yes** | |
| `66ABB` | ❌ No | Forward slide — ends standing |
| `6AA` | ❌ No | |
| `3AK` | ❌ **No** — despite the TC label | **Only `3A` crouches** (`3A`→`WR B` works). The `K` returns her to standing |
| other TC rows | ❓ untested | Don't assume |


---

## ✅ Lab-confirmed additions (NOT in the wiki data)

| Finding | Detail |
|---|---|
| **`3A2` / `6B2` low-profile** | Xianghua stays crouched through the stance shift — enemy **highs whiff entirely**, despite -15/-16. Not a data field. ⚠️ i14 **mids** still punish. |
| **`PXS BB` is NOT a guard crusher** | All-block dummy blocks both hits. Natural combo — hit 2 guaranteed only after hit 1 *hits*. -14 on block. `burst=2` was right; the damage math (39) was a red herring. |
| **`3B+KK` drops at max range** | 2nd hit whiffs. `6KA` is the guaranteed ender. |
| **`9K` string gap** | `9K` alone = **-12** (punishable). `9KK` = +2. A knowledge check — not visually telegraphed. |
| **`6B2` → whiff → `PXS K` (LH) → `3B` → `6KA`** | **90 damage.** `SXS/PXS K` Rising Cloud's LH condition is literally *"LH on whiffed highs"* — `6B2` causes the whiff. Designed pairing. |
| **Okizeme vs ukemi** | They can ukemi away from **strikes**, not from a **throw**. Backward ukemi → run in and grab. `6BB` is the best all-purpose chase (tracks). |
| **`9KK2` → PXS vs highs** | PXS crouches under Zasalamel's `AA`. Don't mash — wait for the whiff or get counter-hit. |

## ❌ My recorded errors (do not repeat)

| Error | Correct |
|---|---|
| Recommended `WR KB`, `FC 3KB`, `6AK` as neutral | All **gated**. Filter `cat`+`stance` first. |
| Recommended `6K(B)`, `66KAA` as neutral | Both **SC-only**. |
| "13 fields" | There are **14** — I missed `stance`. |
| "`6B2` is the only PXS entry" | There are 4; `9KK2` (-5) is far better. |
| Prefix-matched `66B+K` as a child of `66B` | It is a **sibling**. Tokenize, don't prefix-match. |
| Assumed hold = stance | Only `[SS]` means stance. `44(A)` is just an extra hit. |
| Filtered on `stance` not `cat` | Hid all of PXS. |
| Quoted gated inputs unqualified (`(B)`, `BB`) | **Always prefix the gate.** `SXS/PXS (B)` ≠ `SC SXS (B)`. |
| "Tech crouch ducks lows" | **Backwards.** TC dodges HIGHS, TJ dodges LOWS. |
| "TC label = ends crouched" | **No.** `3AK` is labelled TC but ends standing (only `3A` crouches). Lab-check each move. |
| Throws break by button (A/B) | **Direction only.** |
| `PXS BB` 2nd hit is a heavy | Disproved in lab. The field beat my inference. |
| **"SS cancels" = sidesteps** | `SS` = **Special Stance**. Frame data has **no sidestep metric**. |
| "RE is broken by damage volume" | **`BA` and `UA`** pierce RE/GI. Only `RI` parries those. |
