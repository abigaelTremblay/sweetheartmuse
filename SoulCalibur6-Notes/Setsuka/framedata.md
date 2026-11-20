# Setsuka — Normalized Frame Data

> **Generated 2026-11-20** from the SuperCombo MediaWiki API (`Soulcalibur_VI/Setsuka/Move_list`, wikitext, 172 rows).
> Same pipeline as `../Nightmare/framedata.md` / `../Azwel/framedata.md`. Generator: session artifact `genchar.py`.
> **Raw wiki values are verbatim.** My additions: qualified inputs, `⚑`, Part 3, the dated lab section.
> **Snapshot, not ground truth.** Where it disagrees with the lab, the lab wins — record both.
> Purpose: **Learning her** (new character, 2026-11-20). Gameplan → `gameplan.md`; community sheets → `community-guides.md`.

**172 moves · 4 stances (`SKY1`, `SKY2`, `SKY3`, `WoH`) · 29 fast (i≤14) · 22 fast-and-safe (i≤16, blk≥-6)** — excluding SC/meter rows. From neutral only: 15 fast · 11 fast-and-safe.

## ⚠️ Read before using any number here

| Rule | Why |
|---|---|
| **String `i` = first hit, not the branch** | Same unresolved question as Xianghua Q37. Never derive a follow-up's startup from `i`. |
| **+N ≠ guaranteed** | Being plus does not make the next option uninterruptible. |
| **`Tech Crouch[x-y]` ≠ ends crouched** | Xianghua `3AK` lesson. |
| **Damage cells are per-hit, unscaled** | See `../08-damage-model.md`. |
| **Not in the data** | pushback · range · tracking · recovery · move level · most LH conditions (see `../99-data-sources.md`) |

### ⚑ Flag legend

| Flag | Meaning |
|---|---|
| **F1** | Lvl hit-count ≠ Dmg hit-count — per-hit data incomplete or merged |
| **F2** | Same qualified input on 2+ rows (overloaded) |
| **F3** | Has a level but missing Blk or Hit — frame data incomplete |
| **F4** | Non-standard value or typo in the cell |
| **F5** | Input notation normalised by me — confirm in in-game command list |
| **F6** | Notes mention Tech Crouch / crouch → ❓ FC/WR follow-up candidate (label ≠ ends crouched) |
| **F7** | Notes say “Counter Hit Combo” — later hits NOT guaranteed on normal hit |

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

No prefix = **usable from neutral standing**. Anything else is gated.

| Prefix | Means | Count |
|---|---|---|
| `(none)` | neutral standing | 108 |
| `BT` | back turned | 12 |
| `SC` | Soul Charge **state** | 11 |
| `FC` | full crouch | 8 |
| `RE` | after winning Reversal Edge | 4 |
| `RE2` | Reversal Edge **second round** | 4 |
| `WR` | while rising | 3 |
| `WoH` | Wings of Heaven stance (`8B+K`) | 3 |
| `SKY1` | Shrouded Sky stance, stage I (`4B+K`, no hold) | 3 |
| `SKY2` | Shrouded Sky stage II (held longer) | 3 |
| `SKY3` | Shrouded Sky stage III (held longest) | 3 |
| `METER` | ⚠️ **costs meter but usable from neutral** (Soul Charge, CE, SA) | 3 |
| `SC SKY` | Soul Charge **and** Shrouded Sky | 2 |
| `RUN` | while running | 1 |
| `SIDE-L` | throw from her left side | 1 |
| `SIDE-R` | throw from her right side | 1 |
| `BACK` | throw from behind | 1 |
| `SC FC` | Soul Charge **and** full crouch | 1 |

### Input normalisation (⚑ F5)

| Wiki | Here | Means |
|---|---|---|
| `(3)_(6)_(9)` | `66` | forward run |
| `(1)_(4)_(7)` | `44` | back run |
| `(2)_(8)` | `22` | vertical run |
| `(1)_(7)` | `11` | back-diagonal run |
| `(3)_(9)` | `33` | forward-diagonal run |
| `(2)A`, `(8)A`, `(4)A` | `[2]A` etc. | **held** direction (icon `22`/`88`/`44`) ❓ hold vs run — confirm |
| `(4)B+K` (SC) | `[4]B+K` | ❓ tap or run — confirm |
| stance `LEFT/RIGHT SIDE THROW`, `BACK THROW` | `SIDE-L` / `SIDE-R` / `BACK` | positional throws |

## Notation — Setsuka-specific

| Token | Meaning |
|---|---|
| `236` Twilight Haze / `214` Dawn Haze | Instant-crouch transitions (Tech Crouch). 📚 Overview: lets her do `FC`/`WR` moves **from standing** (e.g. `214K` = `WR K` at i12, `214A` = `WR A`) |
| `SKY1`–`SKY3` | Shrouded Sky charge stages: later stage = faster + safer `A`/`2A`/`B` |
| `WoH` | Wings of Heaven: back-turned airborne stance, `G` = land |
| `RE2` | Moves from the Reversal Edge 2nd round (LH as listed) |
| lowercase `a`/`b`/`k` | slide / just-frame-ish input as written on the wiki — check the in-game command list |

---

# PART 1 — NEUTRAL (108)

## Horizontal Attacks  (16)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Spring Downpour | H | 12 | 10 | -8 | -2 | -2 | 1 |  |  |
| `AA` | Spring Downpour | HH | 12 | 10,12 | -6 | 2 | 2 | 3 | Normal Hit Combo |  |
| `AAA` | Spring Downpour | HHH | 12 | 10,12,24 | -8 | KND | KND | 5 |  |  |
| `aB` | Mourning Thrust | M | 18 | 18 | -4 | 12 | 12 | 9 |  |  |
| `agB` | Rising Red Moon | M | 22 | 27 | -22 | LNC | LNC | 9 | Tech Crouch[10-17]. [LH] on low health opponent. Have JF version (prevents AC). | F6 |
| `1A` | Sakura Air Combo | L | 20 | 8 | -20 | -12 | -12 | 1 |  |  |
| `1AA` | Sakura Air Combo | LM | 20 | 8,12 | -20 | -10 | -10 | 3 | Normal Hit Combo |  |
| `1AAA` | Sakura Air Combo | LMH | 20 | 8,12,14 | -12 | -6 | -6 | 3 | Normal Hit Combo. 3rd hit comes out only if 2nd hit connects. |  |
| `2A` | Grasscutter | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `3A` | Willow Slash | M | 20 | 16 | -6 | 4 | 4 | 1 |  |  |
| `4A` | Winter Stitch | H | 18 | 18 | -10 | 6 | STN | 1 | Tech Crouch[10-39] | F6 |
| `6A` | Tousled Hair Slash | H | 18 | 16 | -12 | 0 | 0 | 1 |  |  |
| `6AA` | Tousled Hair Slash | HM | 18 | 16,18 | -8 | 6 | 6 | 3 | Normal Hit Combo |  |
| `7A` | Blossom Slicer | H | 24 | 20 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |
| `8A` | Blossom Slicer | H | 24 | 22 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |
| `9A` | Blossom Slicer | H | 24 | 24 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |

## Vertical Attacks  (17)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B` | Wingbeat Shower | M | 14 | 12 | -8 | -2 | -2 | 2 |  |  |
| `BB` | Wingbeat Shower | MM | 14 | 12,12 | -6 | 2 | 2 | 4 | Normal Hit Combo |  |
| `BBB` | Wingbeat Shower | MMM | 14 | 12,12,20 | -6 | 6 | 6 | 5 |  |  |
| `bA` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 |  |  |
| `b(A)` | Winter Funeral | M | 20 | 44 | -25 | 8 | 8 | 4 | Tech Crouch[10-51]. SKY ready. | F6 |
| `b4` | Heartening Strike | H | 17 | 20 | -8 | 4 | 4 | 3 | [LH] after RI. |  |
| `b6` | Moonlight Thrust | M | 16 | 20 | -6 | 2 | 10 | 3 | [LH] on missed GI |  |
| `bK` | Feather Slash | MH | 22 | 12,18 | -6 | 4 | 4 | 9 | Normal Hit Combo. Tech Jump[14-31] |  |
| `1B` | Half Moon Shadow | L | 20 | 24 | -12 | 2 | STN | 9 | Tech Crouch[18-RC] | F6 |
| `2B` | Waterfowl Slice | M | 14 | 16 | -8 | 2 | 2 | 2 |  |  |
| `3B` | Air Cutter | M | 20 | 24 | -10 | LNC | LNC | 9 |  |  |
| `4B` | Reverse Blade | M | 20 | 10 | -14 | -4 | -4 | 2 |  |  |
| `4BB` | Reverse Blade | MM | 20 | 10,10 | -12 | STN | STN | 2 |  |  |
| `6B` | Mountain Mists | M | 16 | 22 | -6 | 6 | STN | 3 |  |  |
| `7B` | Willow Divide | M | 20 | 24 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |
| `8B` | Willow Divide | M | 22 | 26 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |
| `9B` | Willow Divide | M | 24 | 28 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |

## Kick Attacks  (12)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Rising Sun Kick | H | 12 | 14 | -6 | 2 | 2 | 3 |  |  |
| `1K` | Flame Bearer | L | 16 | 18 | -14 | 0 | 0 | 2 |  |  |
| `1(K)` | Flame Bearer | L | 16 | 18 | -6 | 4 | 4 | 2 | SKY ready |  |
| `2K` | Crouching Side Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-11] | F6 |
| `3K` | Shadow Attendant | M | 14 | 12 | -6 | 4 | 4 | 3 |  |  |
| `3KB` | Shadow Attendant | MM | 14 | 12,16 | -6 | 6 | 12 | 4 | Normal Hit Combo |  |
| `4K` | Scarlet Blossom | H | 18 | 18 | -2 | 10 | 10 | 3 |  |  |
| `4KA` | Scarlet Blossom | HM | 18 | 18,22 | -8 | 6 | 6 | 5 | Tech Crouch[12-57]. Normal Hit Combo | F6 |
| `6K` | Knee Seduction | M | 14 | 16 | -10 | 2 | STN | 3 |  |  |
| `7K` | Rising Heel | M | 20 | 20 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `8K` | Rising Heel | M | 20 | 22 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `9K` | Rising Heel | M | 20 | 24 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |

## Multi Attacks  (23)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Drifting Moon | M | 34 | 40 | 4 | 10 | 10 | 15 | [LH] versus [GI] or [RE] |  |
| `1A+B` | Fiery Dance | MMMM | 20 | 12,8,8,18 | -14 | KND | KND | 15 | Have JF version for +6 dmg. |  |
| `2A+B` | Lonely Shade | M | 18 | 20 | -2 | 6 | 6 | 2 |  |  |
| `3A+B` | Sunbeam Slice | M | 22 | 22 | -14 | -4 | KND | 4 | Tech Crouch[0-11] | F6 |
| `4A+B` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 | Tech Crouch[10-51] | F6 |
| `4(A)+(B)` | Winter Funeral | M | 20 | 40 | -22 | 8 | 8 | 4 | SKY ready |  |
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `B+K` | Silver Moon Combo | M | 24 | 20 | -14 | -4 | -4 | 9 |  |  |
| `B+KB` | Silver Moon Combo | MM | 24 | 20,16 | -14 | 6 | 6 |  | Normal Hit Combo |  |
| `B+KBB+K` | Silver Moon Combo | MMM | 24 | 20,16,28 | -14 | KND | KND |  | Normal Hit Combo |  |
| `B+KBA+B` | Silver Moon Combo | MMM | 24 | 20,16,22 | -14 | KND | KND |  | Normal Hit Combo |  |
| `1B+K` | Swan Slash | M | 18 | 22 | -8 | LNC | LNC | 9 | Tech Crouch[10-19] | F6 |
| `1B+KB` | Swan Slash | MM | 18 | 22,22 | -16 | LNC, STN (2nd) | LNC, STN (2nd) | 9, 14 | Tech Jump[22-53] | F4 |
| `2B+K` | Crescent Lash | M | 22 | 22 | -2 | KND | KND | 9 |  |  |
| `3B+K` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[6-33] | F6 |
| `3B+KB` | Shade Thrust | MM | 16 | 12,12 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `4B+K` | Shrouded Sky |  |  |  |  |  |  |  | SKY | F2 |
| `6B+K` | Mirror Blade | MH |  | 24 |  | 6 | 6 |  | 1st time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `6B+K` | Mirror Blade | MH |  | 34 |  | KND | KND |  | 2nd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `6B+K` | Mirror Blade | MM |  | 25 |  | LNC | LNC |  | 3rd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `8B+K` | Ring of Heaven |  |  |  |  |  |  |  | Tech Crouch[4-8]. Tech Jump[8-30]. Tech Crouch[33-53] | F6 |
| `8B+KA` | Breaking Wave | H | 20 | 20 | -12 | 8 | 16 | 4 | ROH |  |
| `8B+KB` | Island Divide | M | 26 | 20 | -12 | KND/LNC | KND/LNC | 9 | ROH | F4 |

## Run Attacks  (29)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Willow Splitter | H | 18 | 20 | -6 | 8 | 8 | 4 |  | F5 |
| `22A` | Shadow Cutter | H | 22 | 18 | -8 | 12 | 16 | 4 | Tech Crouch[7-17] | F5 F6 |
| `22aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] | F5 |
| `2362aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] |  |
| `11A` | Horizon Sweeper | L | 30 | 20 | -12 | 2 | KND | 4 |  | F5 |
| `[4]A` | Mist Cutter | H | 20 | 16 | -14 | 0 | 0 | 2 |  | F5 |
| `[4]AA` | Mist Cutter | HH | 20 | 16,20 | -8 | KND | KND | 3 | Normal Hit Combo | F5 |
| `[6]B` | Rising Crescent | M | 18 | 18 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `33B` | Rising Crescent | M | 18 | 20 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `22B` | Double Silver Stab | M | 18 | 18 | -14 | -6 | -6 | 9 | [LH] when opponent misses [RE] | F5 |
| `22BB` | Double Silver Stab | MH | 18 | 18,22 | -2 | STN | STN | 9, 5 | Normal Hit Combo. [LH] when opponent misses [RE] | F5 |
| `11B` | Crescent Strike | M | 28 | 30 | 0 | LNC | LNC | 9 |  | F5 |
| `[4]B` | Moon Shadow Strike | M | 20 | 18 | -14 | 4 | 4 | 3 |  | F5 |
| `[4]BA` | Moon Shadow Strike | MM | 20 | 18,23 | -8 | KND | KND | 3, 2 | Normal Hit Combo. Tech Crouch[24-48] | F5 F6 |
| `66K` | Heavenly Maiden | MM | 14 | 16,10 | -4 | 12 | 12 | 3 | Normal Hit Combo. Tech Jump[12-62] [SS] into WoH on hit | F5 |
| `22K` | Shade Roundhouse | H | 18 | 24 | -8 | 6 | 6 | 4 | [GI] [38-46] vs [M]. [LH] when opponent whiffs [H] | F5 |
| `11K` | Backspin Snow Sweeper | L | 20 | 14 | -14 | 0 | 4 | 1 | Tech Crouch[16-RC] | F5 F6 |
| `[4]K` | Shadow Hunter | H | 24 | 18 | -12 | 0 | STN | 9 | Tech Jump[19-33] | F5 |
| `[4]KB` | Shadow Hunter | HM | 24 | 18,22 | 0 | 10 | 10 | 14 | Normal Hit Combo. Tech Jump[0-4] | F5 |
| `[4]Kb6` | Dancing Feather Strike | HM | 24 | 18,32 | -12 | LNC | LNC | 15 |  | F5 |
| `66A+B` | Dawn Petal Strike | M | 36 | 36 | -12 | 4 | 4 | 9 | Tech Crouch[10-28] | F5 F6 |
| `22A+B` | Shade Dancer | M | 22 | 18 | -20 | KND | KND | 9 |  | F5 |
| `22A+BA` | Shade Dancer | MH | 22 | 18,19 | -4 | KND | KND | 1 | Normal Hit Combo | F5 |
| `44A+B` | Blazing Moon | M | 68 | 70 | UB, STN | UB, STN | UB, STN |  | [UA]. Tech Crouch[31-60]. Tech Jump[71-103] | F4 F5 F6 |
| `66B+K` | Sodden Wings | M | 20 | 16 | -12 | KND | KND | 9 |  | F5 |
| `66B+KB` | Sodden Wings | MM | 20 | 16,13 | -8 | KND | KND | 14 | Normal Hit Combo. Tech Jump[6-24]. Can be delayed | F5 |
| `22B+K` | Kingfisher Divide | M | 34 | 38 | 2 | STN | STN | 15 | Tech Crouch[12-18] | F5 F6 |
| `11B+K` | Blind Heaven | M | 22 | 28 | -8 | KND | KND | 9 | Tech Crouch[14-22]. Tech Jump[22-39]. Tech Crouch[39-51] | F5 F6 |
| `[4]B+K` | Silver Shadow | H | 12 | 28 | -10 | 2 | STN | 2 | With Moon Reflection, +4 damage and KND on NH | F5 |

## Throws  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Wintry Chill |  | 18 | 45 |  |  |  |  | [TH] |  |
| `4A+G` | Moon Wind |  | 18 | 45 |  |  |  |  | [TH] |  |
| `214A+G` | Crescent Sweep |  | 18 | 28 |  |  |  |  | [TH] |  |
| `236A+G` | Crimson Death |  | 18 | 30 |  |  |  |  | [TH] |  |

## Twilight Haze  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `236` | Twilight Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |

## Dawn Haze  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `214` | Dawn Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |

## Wingsof Heaven  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `8B+KK` | Wings Of Heaven |  |  |  |  |  |  |  | [SS] into WOH. Backturned |  |
| `8(B)+(K)` | Wings Of Heaven |  |  |  |  |  |  |  | [SS] into WOH. |  |

## Shrouded Sky  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `4B+K` | Shrouded Sky |  |  |  |  |  |  |  | [SS] into SKY | F2 |

## Reversal Edge Attacks  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Songbird Slice | M | 35 | 40 | -4 |  |  | 16 | [RE] | F3 |
| `(B)+(G)` | Songbird Slice | M | 45 | 50 | 8 |  |  | 20 | [BA]. [RE] | F3 |

# PART 2 — GATED (64)

## BT  (12)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Winter Breeze | H | 14 | 14 | -4 | 4 | 4 | 1 |  |  |
| `BT 2A` | Wisteria Cutter | SL | 14 | 14 | -6 | 4 | 4 | 1 | Tech Crouch[11-RC] | F6 |
| `BT B` | Silver Slicer | M | 16 | 18 | -6 | 4 | 4 | 2 |  |  |
| `BT 2B` | Windbeat Strike | M | 16 | 20 | -6 | 2 | 2 | 2 | Tech Crouch[19-RC] | F6 |
| `BT K` | Rising Moon Kick | H | 14 | 18 | -6 | 2 | 2 | 2 |  |  |
| `BT 2K` | Blind Shin Kick | L | 18 | 18 | -14 | -4 | -4 | 2 | Tech Crouch[13-RC] | F6 |
| `BT 2A+B` | Warbler Slash | M | 28 | 22 | -6 | STN | LNC | 9 | Tech Crouch[8-17]. Tech Jump[17-50] | F6 |
| `BT B+K` | Rainy Moon | M | 16 | 16 | -14 | STN | STN | 2 | Tech Crouch[4-15] | F6 |
| `BT B+KB` | Rainy Moon | MM | 16 | 38 | -12 | KND | KND | 2, 7 | Normal Hit Combo | F1 |
| `BT 2B+K` | Foggy Veil | L | 28 | 22 | -14 | 4 | KND | 9 | Tech Jump[17-50] |  |
| `BT 8B+KA` | Ring of Heaven | H | 20 | 20 | -12 | 8 | STN | 4 | ROH |  |
| `BT 8B+KB` | Breaking Wave | M | 26 | 20 | -12 | LNC | LNC | 9 | ROH |  |

## SC  (11)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC 1AAAAA` | Divine Throne Air Combo | LMHHH | 20 | 8,12,14,8,22 | -20 | -10 | -10 | 3 | Normal Hit Combo. 3rd hit + not comes out oB |  |
| `SC 2aB` | Roaring Ocean | M | 14 | 29 | 2 | LNC | LNC | 2 | WoH. Tech Crouch[8-13]. Tech Jump[17-50] | F6 |
| `SC 22aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |
| `SC 2362aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |
| `SC 66A+B` | Dawn Blossom | M | 30 | 60 | 2 | 10 | 10 | 9 | [BA]. Tech Crouch[10-23] | F5 F6 |
| `SC 22A+BAA` | Celestial Gleam | MHHHH | 22 | 18,24,8,8,22 | -4 | KND | KND | 14 | Normal Hit Combo | F5 |
| `SC B+KBB+K` | Ocean God's Ritual | MMMMMMMM | 24 | 93 | -4 | STN | KND | 9 | Normal Hit Combo | F1 |
| `SC 6BB` | Hallowed Grounds | MM | 16 | 22,36 | 4 | 8 | 8 | 12 | Normal Hit Combo |  |
| `SC [4]B+K` | Cerulean Waters | HHHHHH | 12 | 59 | -10 | STN | STN | 3 |  | F1 F5 |
| `SC 2143BBB` | Ravenous Viper | MMM | 16 | 54 | -2 | STN | STN | 9 | Tech Crouch[0-33] | F1 F6 |
| `SC 3B+KBB` | Ravenous Viper | MMM | 16 | 12,16,26 | -2 | STN | STN | 9 | Tech Crouch[6-33] | F6 |

## FC  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Stalk Clipper | SL | 12 | 12 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `FC 3aB` | Shade Buster | M | 14 | 35 | -22 | KND | KND | 9 | Tech Crouch[0-13] | F6 |
| `FC B` | Petal Slicer | M | 14 | 16 | -8 | 2 | 2 | 2 | Tech Crouch[0-4]. Tech Crouch[16-RC] | F6 |
| `FC 3B` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[0-33] | F6 |
| `FC 3BB` | Shade Thrust | MM | 16 | 12,16 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `FC K` | Shin Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `FC 3A+B` | Ocean Drizzle | M | 22 | 22 | -20 | STN | STN | 9 | Tech Crouch[0-18] | F6 |
| `FC 3A+BA` | Ocean Drizzle | MM | 22 | 22,16 | -14 | 2 | 2 | 1 | Normal Hit Combo |  |

## RE  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RE A` | Silken Strike | M |  | 45 | -8 | STN |  | 33 |  |  |
| `RE B` | Autumn Rains | M |  | 54 |  | LNC |  | 50 |  | F3 |
| `RE K` | Flickering Flames | M |  | 30 | -4 | STN |  | 33 |  |  |
| `RE (K)` | Flickering Flames | M |  | 30 | 0 | STN |  | 33 | SKY ready |  |

## RE2  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RE2 A` | Silken Strike | M |  | 52 | -8 | LNC |  | 33 | [LH] | F5 |
| `RE2 B` | Autumn Rains | M |  | 58 |  | LNC |  | 50 | [LH] | F3 F5 |
| `RE2 K` | Flicker Flames | M |  | 31 | -4 | LNC |  | 33 | [LH] | F5 |
| `RE2 (K)` | Flicker Flames | M |  | 31 | 0 | LNC |  | 33 | [LH]. SKY ready | F5 |

## WR  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `WR A` | Crescent Slash | H | 16 | 20 | -2 | 6 | 6 | 4 | Tech Crouch[0-10] | F6 |
| `WR B` | Crescent Blade | M | 18 | 20 | -8 | STN | STN | 9 | Tech Crouch[0-16] | F6 |
| `WR K` | Rising Front Kick | M | 12 | 18 | -6 | 4 | KND | 3 | Tech Crouch[0-4] | F6 |

## WoH  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `WoH A` | Wisteria Cutter | M | 20 | 26 | -8 | 6 | 12 | 4 | Tech Jump[0-17]. Tech Crouch[20-RC] | F6 |
| `WoH B` | Lunar Arc | L | 20 | 24 | -12 | KND | STN | 9 | Tech Jump[0-18]. Tech Crouch[18-RC]. +9 damage with Wintery Reflection | F6 |
| `WoH G` | Land |  |  |  |  |  |  |  |  |  |

## SKY1  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SKY1 A` | Supernal Winds | H | 12 | 24 | -8 | 6 | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY1 2A` | Infernal Winds | L | 16 | 22 | -16 | 4 | 4 | 3 | Tech Crouch[12+] | F5 F6 |
| `SKY1 B` | Terrestrial Winds | M | 16 | 24 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |

## SKY2  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SKY2 A` | Supernal Winds | H | 10 | 34 | -6 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 2A` | Infernal Winds | L | 12 | 30 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 B` | Terrestrial Winds | M | 12 | 34 | -8 | LNC | LNC | 2 | Tech Crouch[12+] | F5 F6 |

## SKY3  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SKY3 A` | Supernal Winds | H | 8 | 46 | 8 | KND | KND | 1 | Tech Crouch[12+] | F5 F6 |
| `SKY3 2A` | Infernal Winds | L | 8 | 34 | -8 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY3 B` | Terrestrial Winds | M | 8 | 28 | -4 | LNC | LNC | 1 | Tech Crouch[12+] | F5 F6 |

## METER  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `METER A+B+K` | Demon's Lamnt | M | 16 | 84 | -16 | KND | KND | 10 | [CE] | F4 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `METER 236A+B+K` | Rushing Waters | M | 16 | 36 | -8 | 4 | 14 | 9 | [LH] when all 3 visions are completed |  |

## SC SKY  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC SKY A+B` | Serpent Slayer | MSMSMSMSM | 16 | 65 | -8 | KND | KND | 2 |  | F1 |
| `SC SKY K` | Ethernal Slayer ~ Shrouded Sky | SM | 5 | 1 | - |  | 34 |  | Tech Crouch Interrupts opponent attacks | F3 F4 F6 |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding Scraper | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[2-22]. Tech Crouch[22-52] | F6 |

## SIDE-L  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-L A+G` | Shadow Descent |  | 18 | 58 |  |  |  |  | [TH] | F5 |

## SIDE-R  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-R A+G` | Vermilion Moon |  | 18 | 62 |  |  |  |  | [TH] | F5 |

## BACK  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BACK A+G` | Snow Gate |  | 18 | 70 |  |  |  |  | [TH] | F5 |

## SC FC  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC FC 3BBB` | Ravenous Viper | MMM | 16 | 12,16,26 | -2 | STN | STN | 9 | Tech Crouch[0-33] | F6 |

# PART 3 — DERIVED INDEXES

> Derived mechanically from the raw fields. **Inherits every ⚑ flag.** Not lab-verified.

## Branch points (2+ follow-ups)

> Children are options chosen **before** the next input, not a guaranteed sequence. Same prefix only.

| Node | Children (Lvl i Blk/Hit) | n |
|---|---|---|
| `8B+K` | `8B+KA` H 20 -12/8 · `8B+KB` M 26 -12/KND/LNC · `8B+KK`   / | 3 |
| `236` | `2362aB` M 16 -16/KND · `236A+G`  18 / | 2 |
| `B+KB` | `B+KBB+K` MMM 24 -14/KND · `B+KBA+B` MMM 24 -14/KND | 2 |
| `[4]K` | `[4]KB` HM 24 0/10 · `[4]Kb6` HM 24 -12/LNC | 2 |

## Plus or neutral on BLOCK  (12)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SKY3 A` | Supernal Winds | H | 8 | 46 | 8 | KND | KND | 1 | Tech Crouch[12+] | F5 F6 |
| `(B)+(G)` | Songbird Slice | M | 45 | 50 | 8 |  |  | 20 | [BA]. [RE] | F3 |
| `A+B` | Drifting Moon | M | 34 | 40 | 4 | 10 | 10 | 15 | [LH] versus [GI] or [RE] |  |
| `SC 6BB` | Hallowed Grounds | MM | 16 | 22,36 | 4 | 8 | 8 | 12 | Normal Hit Combo |  |
| `22B+K` | Kingfisher Divide | M | 34 | 38 | 2 | STN | STN | 15 | Tech Crouch[12-18] | F5 F6 |
| `SC 2aB` | Roaring Ocean | M | 14 | 29 | 2 | LNC | LNC | 2 | WoH. Tech Crouch[8-13]. Tech Jump[17-50] | F6 |
| `SC 66A+B` | Dawn Blossom | M | 30 | 60 | 2 | 10 | 10 | 9 | [BA]. Tech Crouch[10-23] | F5 F6 |
| `11B` | Crescent Strike | M | 28 | 30 | 0 | LNC | LNC | 9 |  | F5 |
| `[4]KB` | Shadow Hunter | HM | 24 | 18,22 | 0 | 10 | 10 | 14 | Normal Hit Combo. Tech Jump[0-4] | F5 |
| `RE (K)` | Flickering Flames | M |  | 30 | 0 | STN |  | 33 | SKY ready |  |
| `RE2 (K)` | Flicker Flames | M |  | 31 | 0 | LNC |  | 33 | [LH]. SKY ready | F5 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |

## Fast (i ≤ 14) — neutral, no meter  (15)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Spring Downpour | H | 12 | 10 | -8 | -2 | -2 | 1 |  |  |
| `AA` | Spring Downpour | HH | 12 | 10,12 | -6 | 2 | 2 | 3 | Normal Hit Combo |  |
| `AAA` | Spring Downpour | HHH | 12 | 10,12,24 | -8 | KND | KND | 5 |  |  |
| `2A` | Grasscutter | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `K` | Rising Sun Kick | H | 12 | 14 | -6 | 2 | 2 | 3 |  |  |
| `[4]B+K` | Silver Shadow | H | 12 | 28 | -10 | 2 | STN | 2 | With Moon Reflection, +4 damage and KND on NH | F5 |
| `B` | Wingbeat Shower | M | 14 | 12 | -8 | -2 | -2 | 2 |  |  |
| `BB` | Wingbeat Shower | MM | 14 | 12,12 | -6 | 2 | 2 | 4 | Normal Hit Combo |  |
| `BBB` | Wingbeat Shower | MMM | 14 | 12,12,20 | -6 | 6 | 6 | 5 |  |  |
| `2B` | Waterfowl Slice | M | 14 | 16 | -8 | 2 | 2 | 2 |  |  |
| `3K` | Shadow Attendant | M | 14 | 12 | -6 | 4 | 4 | 3 |  |  |
| `3KB` | Shadow Attendant | MM | 14 | 12,16 | -6 | 6 | 12 | 4 | Normal Hit Combo |  |
| `6K` | Knee Seduction | M | 14 | 16 | -10 | 2 | STN | 3 |  |  |
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `66K` | Heavenly Maiden | MM | 14 | 16,10 | -4 | 12 | 12 | 3 | Normal Hit Combo. Tech Jump[12-62] [SS] into WoH on hit | F5 |

## ⭐ Fast-and-safe (i ≤ 16, blk ≥ -6) — neutral, no meter  (11)

> Key beginner metric (`../99-data-sources.md`).

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AA` | Spring Downpour | HH | 12 | 10,12 | -6 | 2 | 2 | 3 | Normal Hit Combo |  |
| `2A` | Grasscutter | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `K` | Rising Sun Kick | H | 12 | 14 | -6 | 2 | 2 | 3 |  |  |
| `BB` | Wingbeat Shower | MM | 14 | 12,12 | -6 | 2 | 2 | 4 | Normal Hit Combo |  |
| `BBB` | Wingbeat Shower | MMM | 14 | 12,12,20 | -6 | 6 | 6 | 5 |  |  |
| `3K` | Shadow Attendant | M | 14 | 12 | -6 | 4 | 4 | 3 |  |  |
| `3KB` | Shadow Attendant | MM | 14 | 12,16 | -6 | 6 | 12 | 4 | Normal Hit Combo |  |
| `66K` | Heavenly Maiden | MM | 14 | 16,10 | -4 | 12 | 12 | 3 | Normal Hit Combo. Tech Jump[12-62] [SS] into WoH on hit | F5 |
| `b6` | Moonlight Thrust | M | 16 | 20 | -6 | 2 | 10 | 3 | [LH] on missed GI |  |
| `6B` | Mountain Mists | M | 16 | 22 | -6 | 6 | STN | 3 |  |  |
| `1(K)` | Flame Bearer | L | 16 | 18 | -6 | 4 | 4 | 2 | SKY ready |  |

## Punishable on block (≤ -10), neutral only  (45)

> What **she** gets punished for. Sorted worst first.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `b(A)` | Winter Funeral | M | 20 | 44 | -25 | 8 | 8 | 4 | Tech Crouch[10-51]. SKY ready. | F6 |
| `agB` | Rising Red Moon | M | 22 | 27 | -22 | LNC | LNC | 9 | Tech Crouch[10-17]. [LH] on low health opponent. Have JF version (prevents AC). | F6 |
| `bA` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 |  |  |
| `4A+B` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 | Tech Crouch[10-51] | F6 |
| `4(A)+(B)` | Winter Funeral | M | 20 | 40 | -22 | 8 | 8 | 4 | SKY ready |  |
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `1A` | Sakura Air Combo | L | 20 | 8 | -20 | -12 | -12 | 1 |  |  |
| `1AA` | Sakura Air Combo | LM | 20 | 8,12 | -20 | -10 | -10 | 3 | Normal Hit Combo |  |
| `22A+B` | Shade Dancer | M | 22 | 18 | -20 | KND | KND | 9 |  | F5 |
| `3B+K` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[6-33] | F6 |
| `1B+KB` | Swan Slash | MM | 18 | 22,22 | -16 | LNC, STN (2nd) | LNC, STN (2nd) | 9, 14 | Tech Jump[22-53] | F4 |
| `22aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] | F5 |
| `2362aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] |  |
| `4B` | Reverse Blade | M | 20 | 10 | -14 | -4 | -4 | 2 |  |  |
| `1K` | Flame Bearer | L | 16 | 18 | -14 | 0 | 0 | 2 |  |  |
| `2K` | Crouching Side Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-11] | F6 |
| `1A+B` | Fiery Dance | MMMM | 20 | 12,8,8,18 | -14 | KND | KND | 15 | Have JF version for +6 dmg. |  |
| `3A+B` | Sunbeam Slice | M | 22 | 22 | -14 | -4 | KND | 4 | Tech Crouch[0-11] | F6 |
| `B+K` | Silver Moon Combo | M | 24 | 20 | -14 | -4 | -4 | 9 |  |  |
| `B+KB` | Silver Moon Combo | MM | 24 | 20,16 | -14 | 6 | 6 |  | Normal Hit Combo |  |
| `B+KBB+K` | Silver Moon Combo | MMM | 24 | 20,16,28 | -14 | KND | KND |  | Normal Hit Combo |  |
| `B+KBA+B` | Silver Moon Combo | MMM | 24 | 20,16,22 | -14 | KND | KND |  | Normal Hit Combo |  |
| `3B+KB` | Shade Thrust | MM | 16 | 12,12 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `[4]A` | Mist Cutter | H | 20 | 16 | -14 | 0 | 0 | 2 |  | F5 |
| `22B` | Double Silver Stab | M | 18 | 18 | -14 | -6 | -6 | 9 | [LH] when opponent misses [RE] | F5 |
| `[4]B` | Moon Shadow Strike | M | 20 | 18 | -14 | 4 | 4 | 3 |  | F5 |
| `11K` | Backspin Snow Sweeper | L | 20 | 14 | -14 | 0 | 4 | 1 | Tech Crouch[16-RC] | F5 F6 |
| `1AAA` | Sakura Air Combo | LMH | 20 | 8,12,14 | -12 | -6 | -6 | 3 | Normal Hit Combo. 3rd hit comes out only if 2nd hit connects. |  |
| `6A` | Tousled Hair Slash | H | 18 | 16 | -12 | 0 | 0 | 1 |  |  |
| `1B` | Half Moon Shadow | L | 20 | 24 | -12 | 2 | STN | 9 | Tech Crouch[18-RC] | F6 |
| `4BB` | Reverse Blade | MM | 20 | 10,10 | -12 | STN | STN | 2 |  |  |
| `8B+KA` | Breaking Wave | H | 20 | 20 | -12 | 8 | 16 | 4 | ROH |  |
| `8B+KB` | Island Divide | M | 26 | 20 | -12 | KND/LNC | KND/LNC | 9 | ROH | F4 |
| `11A` | Horizon Sweeper | L | 30 | 20 | -12 | 2 | KND | 4 |  | F5 |
| `[4]K` | Shadow Hunter | H | 24 | 18 | -12 | 0 | STN | 9 | Tech Jump[19-33] | F5 |
| `[4]Kb6` | Dancing Feather Strike | HM | 24 | 18,32 | -12 | LNC | LNC | 15 |  | F5 |
| `66A+B` | Dawn Petal Strike | M | 36 | 36 | -12 | 4 | 4 | 9 | Tech Crouch[10-28] | F5 F6 |
| `66B+K` | Sodden Wings | M | 20 | 16 | -12 | KND | KND | 9 |  | F5 |
| `4A` | Winter Stitch | H | 18 | 18 | -10 | 6 | STN | 1 | Tech Crouch[10-39] | F6 |
| `3B` | Air Cutter | M | 20 | 24 | -10 | LNC | LNC | 9 |  |  |
| `6K` | Knee Seduction | M | 14 | 16 | -10 | 2 | STN | 3 |  |  |
| `7K` | Rising Heel | M | 20 | 20 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `8K` | Rising Heel | M | 20 | 22 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `9K` | Rising Heel | M | 20 | 24 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `[4]B+K` | Silver Shadow | H | 12 | 28 | -10 | 2 | STN | 2 | With Moon Reflection, +4 damage and KND on NH | F5 |

## Lows (true `L`, any hit)  (20)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `1K` | Flame Bearer | L | 16 | 18 | -14 | 0 | 0 | 2 |  |  |
| `1(K)` | Flame Bearer | L | 16 | 18 | -6 | 4 | 4 | 2 | SKY ready |  |
| `2K` | Crouching Side Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-11] | F6 |
| `1A` | Sakura Air Combo | L | 20 | 8 | -20 | -12 | -12 | 1 |  |  |
| `1AA` | Sakura Air Combo | LM | 20 | 8,12 | -20 | -10 | -10 | 3 | Normal Hit Combo |  |
| `1AAA` | Sakura Air Combo | LMH | 20 | 8,12,14 | -12 | -6 | -6 | 3 | Normal Hit Combo. 3rd hit comes out only if 2nd hit connects. |  |
| `1B` | Half Moon Shadow | L | 20 | 24 | -12 | 2 | STN | 9 | Tech Crouch[18-RC] | F6 |
| `11K` | Backspin Snow Sweeper | L | 20 | 14 | -14 | 0 | 4 | 1 | Tech Crouch[16-RC] | F5 F6 |
| `11A` | Horizon Sweeper | L | 30 | 20 | -12 | 2 | KND | 4 |  | F5 |
| `SKY3 2A` | Infernal Winds | L | 8 | 34 | -8 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 2A` | Infernal Winds | L | 12 | 30 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SC 22aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |
| `SC 2362aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |
| `FC K` | Shin Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `SKY1 2A` | Infernal Winds | L | 16 | 22 | -16 | 4 | 4 | 3 | Tech Crouch[12+] | F5 F6 |
| `BT 2K` | Blind Shin Kick | L | 18 | 18 | -14 | -4 | -4 | 2 | Tech Crouch[13-RC] | F6 |
| `RUN K` | Sliding Scraper | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[2-22]. Tech Crouch[22-52] | F6 |
| `WoH B` | Lunar Arc | L | 20 | 24 | -12 | KND | STN | 9 | Tech Jump[0-18]. Tech Crouch[18-RC]. +9 damage with Wintery Reflection | F6 |
| `SC 1AAAAA` | Divine Throne Air Combo | LMHHH | 20 | 8,12,14,8,22 | -20 | -10 | -10 | 3 | Normal Hit Combo. 3rd hit + not comes out oB |  |
| `BT 2B+K` | Foggy Veil | L | 28 | 22 | -14 | 4 | KND | 9 | Tech Jump[17-50] |  |

## Special lows / mids (`SL` / `SM`)  (5)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `2A` | Grasscutter | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `FC A` | Stalk Clipper | SL | 12 | 12 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `BT 2A` | Wisteria Cutter | SL | 14 | 14 | -6 | 4 | 4 | 1 | Tech Crouch[11-RC] | F6 |
| `SC SKY A+B` | Serpent Slayer | MSMSMSMSM | 16 | 65 | -8 | KND | KND | 2 |  | F1 |
| `SC SKY K` | Ethernal Slayer ~ Shrouded Sky | SM | 5 | 1 | - |  | 34 |  | Tech Crouch Interrupts opponent attacks | F3 F4 F6 |

## Launchers / knockdowns / stuns (on normal hit)  (58)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAA` | Spring Downpour | HHH | 12 | 10,12,24 | -8 | KND | KND | 5 |  |  |
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `3B+KB` | Shade Thrust | MM | 16 | 12,12 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `22aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] | F5 |
| `2362aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] |  |
| `1B+K` | Swan Slash | M | 18 | 22 | -8 | LNC | LNC | 9 | Tech Crouch[10-19] | F6 |
| `[6]B` | Rising Crescent | M | 18 | 18 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `33B` | Rising Crescent | M | 18 | 20 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `22BB` | Double Silver Stab | MH | 18 | 18,22 | -2 | STN | STN | 9, 5 | Normal Hit Combo. [LH] when opponent misses [RE] | F5 |
| `bA` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 |  |  |
| `3B` | Air Cutter | M | 20 | 24 | -10 | LNC | LNC | 9 |  |  |
| `4BB` | Reverse Blade | MM | 20 | 10,10 | -12 | STN | STN | 2 |  |  |
| `7K` | Rising Heel | M | 20 | 20 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `8K` | Rising Heel | M | 20 | 22 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `9K` | Rising Heel | M | 20 | 24 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `1A+B` | Fiery Dance | MMMM | 20 | 12,8,8,18 | -14 | KND | KND | 15 | Have JF version for +6 dmg. |  |
| `4A+B` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 | Tech Crouch[10-51] | F6 |
| `[4]AA` | Mist Cutter | HH | 20 | 16,20 | -8 | KND | KND | 3 | Normal Hit Combo | F5 |
| `[4]BA` | Moon Shadow Strike | MM | 20 | 18,23 | -8 | KND | KND | 3, 2 | Normal Hit Combo. Tech Crouch[24-48] | F5 F6 |
| `66B+K` | Sodden Wings | M | 20 | 16 | -12 | KND | KND | 9 |  | F5 |
| `66B+KB` | Sodden Wings | MM | 20 | 16,13 | -8 | KND | KND | 14 | Normal Hit Combo. Tech Jump[6-24]. Can be delayed | F5 |
| `agB` | Rising Red Moon | M | 22 | 27 | -22 | LNC | LNC | 9 | Tech Crouch[10-17]. [LH] on low health opponent. Have JF version (prevents AC). | F6 |
| `2B+K` | Crescent Lash | M | 22 | 22 | -2 | KND | KND | 9 |  |  |
| `22A+B` | Shade Dancer | M | 22 | 18 | -20 | KND | KND | 9 |  | F5 |
| `22A+BA` | Shade Dancer | MH | 22 | 18,19 | -4 | KND | KND | 1 | Normal Hit Combo | F5 |
| `11B+K` | Blind Heaven | M | 22 | 28 | -8 | KND | KND | 9 | Tech Crouch[14-22]. Tech Jump[22-39]. Tech Crouch[39-51] | F5 F6 |
| `B+KBB+K` | Silver Moon Combo | MMM | 24 | 20,16,28 | -14 | KND | KND |  | Normal Hit Combo |  |
| `B+KBA+B` | Silver Moon Combo | MMM | 24 | 20,16,22 | -14 | KND | KND |  | Normal Hit Combo |  |
| `[4]Kb6` | Dancing Feather Strike | HM | 24 | 18,32 | -12 | LNC | LNC | 15 |  | F5 |
| `11B` | Crescent Strike | M | 28 | 30 | 0 | LNC | LNC | 9 |  | F5 |
| `22B+K` | Kingfisher Divide | M | 34 | 38 | 2 | STN | STN | 15 | Tech Crouch[12-18] | F5 F6 |
| `6B+K` | Mirror Blade | MH |  | 34 |  | KND | KND |  | 2nd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `6B+K` | Mirror Blade | MM |  | 25 |  | LNC | LNC |  | 3rd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `SKY3 A` | Supernal Winds | H | 8 | 46 | 8 | KND | KND | 1 | Tech Crouch[12+] | F5 F6 |
| `SKY3 2A` | Infernal Winds | L | 8 | 34 | -8 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY3 B` | Terrestrial Winds | M | 8 | 28 | -4 | LNC | LNC | 1 | Tech Crouch[12+] | F5 F6 |
| `SKY2 A` | Supernal Winds | H | 10 | 34 | -6 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 2A` | Infernal Winds | L | 12 | 30 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 B` | Terrestrial Winds | M | 12 | 34 | -8 | LNC | LNC | 2 | Tech Crouch[12+] | F5 F6 |
| `FC 3aB` | Shade Buster | M | 14 | 35 | -22 | KND | KND | 9 | Tech Crouch[0-13] | F6 |
| `FC 3BB` | Shade Thrust | MM | 16 | 12,16 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `BT B+K` | Rainy Moon | M | 16 | 16 | -14 | STN | STN | 2 | Tech Crouch[4-15] | F6 |
| `BT B+KB` | Rainy Moon | MM | 16 | 38 | -12 | KND | KND | 2, 7 | Normal Hit Combo | F1 |
| `SKY1 B` | Terrestrial Winds | M | 16 | 24 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `WR B` | Crescent Blade | M | 18 | 20 | -8 | STN | STN | 9 | Tech Crouch[0-16] | F6 |
| `RUN K` | Sliding Scraper | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[2-22]. Tech Crouch[22-52] | F6 |
| `WoH B` | Lunar Arc | L | 20 | 24 | -12 | KND | STN | 9 | Tech Jump[0-18]. Tech Crouch[18-RC]. +9 damage with Wintery Reflection | F6 |
| `FC 3A+B` | Ocean Drizzle | M | 22 | 22 | -20 | STN | STN | 9 | Tech Crouch[0-18] | F6 |
| `BT 8B+KB` | Breaking Wave | M | 26 | 20 | -12 | LNC | LNC | 9 | ROH |  |
| `BT 2A+B` | Warbler Slash | M | 28 | 22 | -6 | STN | LNC | 9 | Tech Crouch[8-17]. Tech Jump[17-50] | F6 |
| `RE A` | Silken Strike | M |  | 45 | -8 | STN |  | 33 |  |  |
| `RE B` | Autumn Rains | M |  | 54 |  | LNC |  | 50 |  | F3 |
| `RE K` | Flickering Flames | M |  | 30 | -4 | STN |  | 33 |  |  |
| `RE (K)` | Flickering Flames | M |  | 30 | 0 | STN |  | 33 | SKY ready |  |
| `RE2 A` | Silken Strike | M |  | 52 | -8 | LNC |  | 33 | [LH] | F5 |
| `RE2 B` | Autumn Rains | M |  | 58 |  | LNC |  | 50 | [LH] | F3 F5 |
| `RE2 K` | Flicker Flames | M |  | 31 | -4 | LNC |  | 33 | [LH] | F5 |
| `RE2 (K)` | Flicker Flames | M |  | 31 | 0 | LNC |  | 33 | [LH]. SKY ready | F5 |

## Counter-hit upgrades (CH result better than hit)  (21)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `4A` | Winter Stitch | H | 18 | 18 | -10 | 6 | STN | 1 | Tech Crouch[10-39] | F6 |
| `1B` | Half Moon Shadow | L | 20 | 24 | -12 | 2 | STN | 9 | Tech Crouch[18-RC] | F6 |
| `6B` | Mountain Mists | M | 16 | 22 | -6 | 6 | STN | 3 |  |  |
| `FC 3B` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[0-33] | F6 |
| `FC 3BB` | Shade Thrust | MM | 16 | 12,16 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `6K` | Knee Seduction | M | 14 | 16 | -10 | 2 | STN | 3 |  |  |
| `WR K` | Rising Front Kick | M | 12 | 18 | -6 | 4 | KND | 3 | Tech Crouch[0-4] | F6 |
| `3A+B` | Sunbeam Slice | M | 22 | 22 | -14 | -4 | KND | 4 | Tech Crouch[0-11] | F6 |
| `BT 2A+B` | Warbler Slash | M | 28 | 22 | -6 | STN | LNC | 9 | Tech Crouch[8-17]. Tech Jump[17-50] | F6 |
| `3B+K` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[6-33] | F6 |
| `3B+KB` | Shade Thrust | MM | 16 | 12,12 | -14 | KND | STN | 4 | Normal Hit Combo |  |
| `BT 2B+K` | Foggy Veil | L | 28 | 22 | -14 | 4 | KND | 9 | Tech Jump[17-50] |  |
| `BT 8B+KA` | Ring of Heaven | H | 20 | 20 | -12 | 8 | STN | 4 | ROH |  |
| `11A` | Horizon Sweeper | L | 30 | 20 | -12 | 2 | KND | 4 |  | F5 |
| `[6]B` | Rising Crescent | M | 18 | 18 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `33B` | Rising Crescent | M | 18 | 20 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `[4]K` | Shadow Hunter | H | 24 | 18 | -12 | 0 | STN | 9 | Tech Jump[19-33] | F5 |
| `[4]B+K` | Silver Shadow | H | 12 | 28 | -10 | 2 | STN | 2 | With Moon Reflection, +4 damage and KND on NH | F5 |
| `WoH B` | Lunar Arc | L | 20 | 24 | -12 | KND | STN | 9 | Tech Jump[0-18]. Tech Crouch[18-RC]. +9 damage with Wintery Reflection | F6 |
| `SKY1 A` | Supernal Winds | H | 12 | 24 | -8 | 6 | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SC B+KBB+K` | Ocean God's Ritual | MMMMMMMM | 24 | 93 | -4 | STN | KND | 9 | Normal Hit Combo | F1 |

## Lethal Hits (ALL)  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `agB` | Rising Red Moon | M | 22 | 27 | -22 | LNC | LNC | 9 | Tech Crouch[10-17]. [LH] on low health opponent. Have JF version (prevents AC). | F6 |
| `b4` | Heartening Strike | H | 17 | 20 | -8 | 4 | 4 | 3 | [LH] after RI. |  |
| `b6` | Moonlight Thrust | M | 16 | 20 | -6 | 2 | 10 | 3 | [LH] on missed GI |  |
| `7K` | Rising Heel | M | 20 | 20 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `8K` | Rising Heel | M | 20 | 22 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `9K` | Rising Heel | M | 20 | 24 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `A+B` | Drifting Moon | M | 34 | 40 | 4 | 10 | 10 | 15 | [LH] versus [GI] or [RE] |  |
| `22aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] | F5 |
| `2362aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] |  |
| `22B` | Double Silver Stab | M | 18 | 18 | -14 | -6 | -6 | 9 | [LH] when opponent misses [RE] | F5 |
| `22BB` | Double Silver Stab | MH | 18 | 18,22 | -2 | STN | STN | 9, 5 | Normal Hit Combo. [LH] when opponent misses [RE] | F5 |
| `22K` | Shade Roundhouse | H | 18 | 24 | -8 | 6 | 6 | 4 | [GI] [38-46] vs [M]. [LH] when opponent whiffs [H] | F5 |
| `RE2 A` | Silken Strike | M |  | 52 | -8 | LNC |  | 33 | [LH] | F5 |
| `RE2 B` | Autumn Rains | M |  | 58 |  | LNC |  | 50 | [LH] | F3 F5 |
| `RE2 K` | Flicker Flames | M |  | 31 | -4 | LNC |  | 33 | [LH] | F5 |
| `RE2 (K)` | Flicker Flames | M |  | 31 | 0 | LNC |  | 33 | [LH]. SKY ready | F5 |
| `METER 236A+B+K` | Rushing Waters | M | 16 | 36 | -8 | 4 | 14 | 9 | [LH] when all 3 visions are completed |  |
| `SC 22aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |
| `SC 2362aBA` | Sakura Assault | ML | 14 | 26,26 | -4 | KND | KND | 2 | [LH] when guard punish. Tech Jump[23-38] |  |

## Break Attacks / Unblockables  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `44A+B` | Blazing Moon | M | 68 | 70 | UB, STN | UB, STN | UB, STN |  | [UA]. Tech Crouch[31-60]. Tech Jump[71-103] | F4 F5 F6 |
| `(B)+(G)` | Songbird Slice | M | 45 | 50 | 8 |  |  | 20 | [BA]. [RE] | F3 |
| `SC 66A+B` | Dawn Blossom | M | 30 | 60 | 2 | 10 | 10 | 9 | [BA]. Tech Crouch[10-23] | F5 F6 |

## Guard Impact moves — check WHAT each covers  (6)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Drifting Moon | M | 34 | 40 | 4 | 10 | 10 | 15 | [LH] versus [GI] or [RE] |  |
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `6B+K` | Mirror Blade | MH |  | 24 |  | 6 | 6 |  | 1st time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `6B+K` | Mirror Blade | MH |  | 34 |  | KND | KND |  | 2nd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `6B+K` | Mirror Blade | MM |  | 25 |  | LNC | LNC |  | 3rd time [GI][6-12] vs [H]&[M] attacks | F1 F2 F3 |
| `22K` | Shade Roundhouse | H | 18 | 24 | -8 | 6 | 6 | 4 | [GI] [38-46] vs [M]. [LH] when opponent whiffs [H] | F5 |

## Tech Crouch (dodges HIGHS) / Tech Jump (dodges LOWS)  (67)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `6A+B` | Shade Buster | M | 14 | 30 | -22 | KND | KND | 9 | Tech Crouch[4-13] | F6 |
| `66K` | Heavenly Maiden | MM | 14 | 16,10 | -4 | 12 | 12 | 3 | Normal Hit Combo. Tech Jump[12-62] [SS] into WoH on hit | F5 |
| `2K` | Crouching Side Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-11] | F6 |
| `3B+K` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[6-33] | F6 |
| `22aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] | F5 |
| `2362aB` | Sakura Swipe | M | 16 | 30 | -16 | KND | KND | 9 | [LH] when punishing after guarding. Tech Jump[23-38] |  |
| `4A` | Winter Stitch | H | 18 | 18 | -10 | 6 | STN | 1 | Tech Crouch[10-39] | F6 |
| `4KA` | Scarlet Blossom | HM | 18 | 18,22 | -8 | 6 | 6 | 5 | Tech Crouch[12-57]. Normal Hit Combo | F6 |
| `1B+K` | Swan Slash | M | 18 | 22 | -8 | LNC | LNC | 9 | Tech Crouch[10-19] | F6 |
| `1B+KB` | Swan Slash | MM | 18 | 22,22 | -16 | LNC, STN (2nd) | LNC, STN (2nd) | 9, 14 | Tech Jump[22-53] | F4 |
| `[6]B` | Rising Crescent | M | 18 | 18 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `33B` | Rising Crescent | M | 18 | 20 | -8 | LNC | STN | 9 | Tech Crouch[13-18] | F5 F6 |
| `b(A)` | Winter Funeral | M | 20 | 44 | -25 | 8 | 8 | 4 | Tech Crouch[10-51]. SKY ready. | F6 |
| `1B` | Half Moon Shadow | L | 20 | 24 | -12 | 2 | STN | 9 | Tech Crouch[18-RC] | F6 |
| `7B` | Willow Divide | M | 20 | 24 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |
| `7K` | Rising Heel | M | 20 | 20 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `8K` | Rising Heel | M | 20 | 22 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `9K` | Rising Heel | M | 20 | 24 | -10 | KND | KND | 9 | Tech Jump[13-36]. [LH] vs jumping opponent |  |
| `4A+B` | Winter Funeral | M | 20 | 40 | -22 | KND | KND | 4 | Tech Crouch[10-51] | F6 |
| `[4]BA` | Moon Shadow Strike | MM | 20 | 18,23 | -8 | KND | KND | 3, 2 | Normal Hit Combo. Tech Crouch[24-48] | F5 F6 |
| `11K` | Backspin Snow Sweeper | L | 20 | 14 | -14 | 0 | 4 | 1 | Tech Crouch[16-RC] | F5 F6 |
| `66B+KB` | Sodden Wings | MM | 20 | 16,13 | -8 | KND | KND | 14 | Normal Hit Combo. Tech Jump[6-24]. Can be delayed | F5 |
| `agB` | Rising Red Moon | M | 22 | 27 | -22 | LNC | LNC | 9 | Tech Crouch[10-17]. [LH] on low health opponent. Have JF version (prevents AC). | F6 |
| `bK` | Feather Slash | MH | 22 | 12,18 | -6 | 4 | 4 | 9 | Normal Hit Combo. Tech Jump[14-31] |  |
| `8B` | Willow Divide | M | 22 | 26 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |
| `3A+B` | Sunbeam Slice | M | 22 | 22 | -14 | -4 | KND | 4 | Tech Crouch[0-11] | F6 |
| `22A` | Shadow Cutter | H | 22 | 18 | -8 | 12 | 16 | 4 | Tech Crouch[7-17] | F5 F6 |
| `11B+K` | Blind Heaven | M | 22 | 28 | -8 | KND | KND | 9 | Tech Crouch[14-22]. Tech Jump[22-39]. Tech Crouch[39-51] | F5 F6 |
| `7A` | Blossom Slicer | H | 24 | 20 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |
| `8A` | Blossom Slicer | H | 24 | 22 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |
| `9A` | Blossom Slicer | H | 24 | 24 | -6 | 6 | 6 | 1 | Tech Jump[9-32] |  |
| `9B` | Willow Divide | M | 24 | 28 | -8 | 4 | 4 | 9 | Tech Jump[9-32] |  |
| `[4]K` | Shadow Hunter | H | 24 | 18 | -12 | 0 | STN | 9 | Tech Jump[19-33] | F5 |
| `[4]KB` | Shadow Hunter | HM | 24 | 18,22 | 0 | 10 | 10 | 14 | Normal Hit Combo. Tech Jump[0-4] | F5 |
| `22B+K` | Kingfisher Divide | M | 34 | 38 | 2 | STN | STN | 15 | Tech Crouch[12-18] | F5 F6 |
| `66A+B` | Dawn Petal Strike | M | 36 | 36 | -12 | 4 | 4 | 9 | Tech Crouch[10-28] | F5 F6 |
| `44A+B` | Blazing Moon | M | 68 | 70 | UB, STN | UB, STN | UB, STN |  | [UA]. Tech Crouch[31-60]. Tech Jump[71-103] | F4 F5 F6 |
| `8B+K` | Ring of Heaven |  |  |  |  |  |  |  | Tech Crouch[4-8]. Tech Jump[8-30]. Tech Crouch[33-53] | F6 |
| `236` | Twilight Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |
| `214` | Dawn Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |
| `SKY3 A` | Supernal Winds | H | 8 | 46 | 8 | KND | KND | 1 | Tech Crouch[12+] | F5 F6 |
| `SKY3 2A` | Infernal Winds | L | 8 | 34 | -8 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY3 B` | Terrestrial Winds | M | 8 | 28 | -4 | LNC | LNC | 1 | Tech Crouch[12+] | F5 F6 |
| `SKY2 A` | Supernal Winds | H | 10 | 34 | -6 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `FC A` | Stalk Clipper | SL | 12 | 12 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `WR K` | Rising Front Kick | M | 12 | 18 | -6 | 4 | KND | 3 | Tech Crouch[0-4] | F6 |
| `SKY1 A` | Supernal Winds | H | 12 | 24 | -8 | 6 | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 2A` | Infernal Winds | L | 12 | 30 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `SKY2 B` | Terrestrial Winds | M | 12 | 34 | -8 | LNC | LNC | 2 | Tech Crouch[12+] | F5 F6 |
| `FC 3aB` | Shade Buster | M | 14 | 35 | -22 | KND | KND | 9 | Tech Crouch[0-13] | F6 |
| `BT 2A` | Wisteria Cutter | SL | 14 | 14 | -6 | 4 | 4 | 1 | Tech Crouch[11-RC] | F6 |
| `FC B` | Petal Slicer | M | 14 | 16 | -8 | 2 | 2 | 2 | Tech Crouch[0-4]. Tech Crouch[16-RC] | F6 |
| `WR A` | Crescent Slash | H | 16 | 20 | -2 | 6 | 6 | 4 | Tech Crouch[0-10] | F6 |
| `FC 3B` | Shade Thrust | M | 16 | 12 | -18 | -8 | STN | 2 | Tech Crouch[0-33] | F6 |
| `BT 2B` | Windbeat Strike | M | 16 | 20 | -6 | 2 | 2 | 2 | Tech Crouch[19-RC] | F6 |
| `FC K` | Shin Kick | L | 16 | 14 | -14 | -4 | -4 | 3 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `BT B+K` | Rainy Moon | M | 16 | 16 | -14 | STN | STN | 2 | Tech Crouch[4-15] | F6 |
| `SKY1 2A` | Infernal Winds | L | 16 | 22 | -16 | 4 | 4 | 3 | Tech Crouch[12+] | F5 F6 |
| `SKY1 B` | Terrestrial Winds | M | 16 | 24 | -12 | KND | KND | 2 | Tech Crouch[12+] | F5 F6 |
| `WR B` | Crescent Blade | M | 18 | 20 | -8 | STN | STN | 9 | Tech Crouch[0-16] | F6 |
| `BT 2K` | Blind Shin Kick | L | 18 | 18 | -14 | -4 | -4 | 2 | Tech Crouch[13-RC] | F6 |
| `RUN K` | Sliding Scraper | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[2-22]. Tech Crouch[22-52] | F6 |
| `WoH A` | Wisteria Cutter | M | 20 | 26 | -8 | 6 | 12 | 4 | Tech Jump[0-17]. Tech Crouch[20-RC] | F6 |
| `WoH B` | Lunar Arc | L | 20 | 24 | -12 | KND | STN | 9 | Tech Jump[0-18]. Tech Crouch[18-RC]. +9 damage with Wintery Reflection | F6 |
| `FC 3A+B` | Ocean Drizzle | M | 22 | 22 | -20 | STN | STN | 9 | Tech Crouch[0-18] | F6 |
| `BT 2A+B` | Warbler Slash | M | 28 | 22 | -6 | STN | LNC | 9 | Tech Crouch[8-17]. Tech Jump[17-50] | F6 |
| `BT 2B+K` | Foggy Veil | L | 28 | 22 | -14 | 4 | KND | 9 | Tech Jump[17-50] |  |

## Stance entries (`[SS]` / `~` transitions)  (13)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `b(A)` | Winter Funeral | M | 20 | 44 | -25 | 8 | 8 | 4 | Tech Crouch[10-51]. SKY ready. | F6 |
| `1(K)` | Flame Bearer | L | 16 | 18 | -6 | 4 | 4 | 2 | SKY ready |  |
| `4(A)+(B)` | Winter Funeral | M | 20 | 40 | -22 | 8 | 8 | 4 | SKY ready |  |
| `66K` | Heavenly Maiden | MM | 14 | 16,10 | -4 | 12 | 12 | 3 | Normal Hit Combo. Tech Jump[12-62] [SS] into WoH on hit | F5 |
| `236` | Twilight Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |
| `214` | Dawn Haze |  |  |  |  |  |  |  | Tech Crouch | F6 |
| `8B+KK` | Wings Of Heaven |  |  |  |  |  |  |  | [SS] into WOH. Backturned |  |
| `8(B)+(K)` | Wings Of Heaven |  |  |  |  |  |  |  | [SS] into WOH. |  |
| `4B+K` | Shrouded Sky |  |  |  |  |  |  |  | [SS] into SKY | F2 |
| `RE (K)` | Flickering Flames | M |  | 30 | 0 | STN |  | 33 | SKY ready |  |
| `RE2 (K)` | Flicker Flames | M |  | 31 | 0 | LNC |  | 33 | [LH]. SKY ready | F5 |
| `SC 2aB` | Roaring Ocean | M | 14 | 29 | 2 | LNC | LNC | 2 | WoH. Tech Crouch[8-13]. Tech Jump[17-50] | F6 |
| `SC SKY K` | Ethernal Slayer ~ Shrouded Sky | SM | 5 | 1 | - |  | 34 |  | Tech Crouch Interrupts opponent attacks | F3 F4 F6 |

## Throws  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Wintry Chill |  | 18 | 45 |  |  |  |  | [TH] |  |
| `4A+G` | Moon Wind |  | 18 | 45 |  |  |  |  | [TH] |  |
| `214A+G` | Crescent Sweep |  | 18 | 28 |  |  |  |  | [TH] |  |
| `236A+G` | Crimson Death |  | 18 | 30 |  |  |  |  | [TH] |  |
| `SIDE-L A+G` | Shadow Descent |  | 18 | 58 |  |  |  |  | [TH] | F5 |
| `SIDE-R A+G` | Vermilion Moon |  | 18 | 62 |  |  |  |  | [TH] | F5 |
| `BACK A+G` | Snow Gate |  | 18 | 70 |  |  |  |  | [TH] | F5 |

## ⚑ Data-reliability flag index

| Flag | Rows |
|---|---|
| **F1** (8) | `6B+K` · `BT B+KB` · `SC B+KBB+K` · `SC [4]B+K` · `SC 2143BBB` · `SC SKY A+B` |
| **F2** (5) | `4B+K` · `6B+K` |
| **F3** (8) | `6B+K` · `B+G` · `(B)+(G)` · `RE B` · `RE2 B` · `SC SKY K` |
| **F4** (5) | `1B+KB` · `8B+KB` · `44A+B` · `METER A+B+K` · `SC SKY K` |
| **F5** (47) | `66A` · `22A` · `22aB` · `11A` · `[4]A` · `[4]AA` · `[6]B` · `33B` · `22B` · `22BB` · `11B` · `[4]B` · `[4]BA` · `66K` · `22K` · `11K` · `[4]K` · `[4]KB` · `[4]Kb6` · `66A+B` · `22A+B` · `22A+BA` · `44A+B` · `66B+K` · `66B+KB` · `22B+K` · `11B+K` · `[4]B+K` · `SIDE-L A+G` · `SIDE-R A+G` · `BACK A+G` · `SKY1 A` · `SKY2 A` · `SKY3 A` · `SKY1 2A` · `SKY2 2A` · `SKY3 2A` · `SKY1 B` · `SKY2 B` · `SKY3 B` · `RE2 A` · `RE2 B` · `RE2 K` · `RE2 (K)` · `SC 66A+B` · `SC 22A+BAA` · `SC [4]B+K` |
| **F6** (55) | `agB` · `4A` · `WR A` · `FC A` · `FC 3aB` · `BT 2A` · `b(A)` · `1B` · `FC B` · `FC 3B` · `WR B` · `BT 2B` · `2K` · `4KA` · `FC K` · `WR K` · `BT 2K` · `3A+B` · `4A+B` · `6A+B` · `FC 3A+B` · `BT 2A+B` · `1B+K` · `3B+K` · `8B+K` · `BT B+K` · `22A` · `[6]B` · `33B` · `[4]BA` · `11K` · `66A+B` · `44A+B` · `22B+K` · `11B+K` · `RUN K` · `236` · `214` · `WoH A` · `WoH B` · `SKY1 A` · `SKY2 A` · `SKY3 A` · `SKY1 2A` · `SKY2 2A` · `SKY3 2A` · `SKY1 B` · `SKY2 B` · `SKY3 B` · `SC 2aB` · `SC 66A+B` · `SC 2143BBB` · `SC 3B+KBB` · `SC FC 3BBB` · `SC SKY K` |
| **F7** (0) |  |

### Other source issues noticed by hand

| Where | Issue |
|---|---|
| Side/back throws | No damage-state columns at all (Blk/Hit blank). |
| Names | Source typos kept verbatim: `Demon's Lamnt`, `Ethernal Slayer`, `Wingsof Heaven` / `Wings Of Heaven`. |
| `SC SKY K` | Block cell is `-` (blank-ish) and i5 — interrupt, not a normal attack. |
| `SKY1`–`SKY3` | Same input on three rows, one per charge stage; I split them with the stage prefix (⚑ F5). |
| `236` / `214` | Twilight/Dawn Haze have no frames; their value is the instant-crouch access (📚 Overview). |

## ✅ Lab-confirmed additions

| Date | Input | Raw says | Lab says |
|---|---|---|---|
| — | — | — | _no lab time yet_ |
