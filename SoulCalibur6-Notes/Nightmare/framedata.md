# Nightmare — Normalized Frame Data (opponent reference)

> **Generated 2026-10-24** from the SuperCombo MediaWiki API (`Soulcalibur_VI/Nightmare/Move_list`, wikitext, 172 rows).
> Same pipeline as `../Azwel/framedata.md`, plus an **Armor** column. Generator: session artifact `gennightmare.py`.
> **Raw wiki values are verbatim.** My additions: `Armor` (parsed from Notes), `⚑`, Part 3, the dated lab section.
> **Snapshot, not ground truth.** Where it disagrees with the lab, the lab wins — record both.
> Purpose: **counter-play** (I don't play him). Matchup decisions → `counter-matchup.md`.

## ⚠️ Read before using any number here

| Rule | Why |
|---|---|
| **String `i` = first hit, not the branch** | Same unresolved question as Xianghua Q37. Never derive a follow-up's startup or a guaranteed follow-up from `i`. |
| **`Armor[x-y]` = revenge window, in frames of his move** | Parsed from Notes. `6K` / `BT A+B` say revenge but list no window. |
| **`REVENGE 6A+B` = Dire Vengeance** | The wiki lists it as `6A+B` with stance `hit`: the move his armored moves **turn into** when the armor clicks ("the bubble"). |
| **+N ≠ guaranteed** | Being plus does not make the next option uninterruptible. |
| **`Tech Crouch[x-y]` ≠ ends crouched** | Xianghua `3AK` lesson. |
| **Damage cells are per-hit, unscaled** | See `../08-damage-model.md`. |

### ⚑ Flag legend

| Flag | Meaning |
|---|---|
| **F1** | Lvl hit-count ≠ Dmg hit-count — per-hit data incomplete or merged |
| **F2** | Same qualified input on 2+ rows (overloaded) |
| **F3** | Missing Blk/Hit — no frame data listed |
| **F4** | Non-standard value or typo in the cell |
| **F5** | Input notation normalised by me — confirm in in-game command list |
| **F6** | Notes mention Tech Crouch / crouch → ❓ FC/WR follow-up candidate (label ≠ ends crouched) |
| **F7** | Notes say “Counter Hit Combo” — later hits NOT guaranteed on normal hit |

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

No prefix = **usable from neutral standing**. Anything else is gated.

| Prefix | Means | Count |
|---|---|---|
| `(none)` | neutral standing | 92 |
| `NSS` | Night Side Stance | 10 |
| `NLS` | Night Lower Stance | 8 |
| `NBS` | Night Behind Stance | 8 |
| `FC` | full crouch | 7 |
| `WR` | while rising | 7 |
| `BT` | back turned | 7 |
| `GS` | Grim Stride (dash, `236`) | 7 |
| `METER` | ⚠️ costs meter | 4 |
| `NTC` | Night Terror Charge — one SC-only move, granted after revenge / Soul Wave / some moves | 4 |
| `NTC GS` | NTC + Grim Stride | 4 |
| `RE` | after winning Reversal Edge | 3 |
| `NTC WR` | NTC + while rising | 2 |
| `NTC NSS` | NTC + NSS | 2 |
| `REVENGE` | **armor clicked** → Dire Vengeance | 1 |
| `SIDE-L` | throw from his left side | 1 |
| `SIDE-R` | throw from his right side | 1 |
| `BACK` | throw from behind | 1 |
| `RUN` | while running | 1 |
| `NTC NLS` | NTC + NLS | 1 |
| `NTC NBS` | NTC + NBS | 1 |

### Input normalisation (⚑ F5)

| Wiki | Here | Means |
|---|---|---|
| `(3)_(6)_(9)` | `66` | forward run |
| `(1)_(4)_(7)` / `(4)` | `44` | back run |
| `(2)_(8)` | `22` | vertical run |
| `(1)_(7)` | `11` | back-diagonal run |
| `2_3A+G` | `[2/3]A+G` | `2A+G` or `3A+G` (Flap Jack) |
| stance `hit` | `REVENGE` | Dire Vengeance |

## Notation — Nightmare-specific

| Token | Meaning |
|---|---|
| `NSS` / `NLS` / `NBS` | Night Side / Night Lower / Night Behind Stance |
| `GS` | Grim Stride (`236`) |
| `NTC` | Night Terror Charge: red-black aura. Lets him use **one** Soul-Charge move once (📖 Beginner lesson) |
| Revenge | SC6 term for Nightmare's armor. Absorbs a hit, then becomes Dire Vengeance (auto-GI) — see `counter-matchup.md` |
| `aG`, `aB`, `bA` | slide inputs (lowercase) |

---

# PART 1 — NEUTRAL (92)

## Horizontal Attacks  (26)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Plague Spreader | H | 16 | 16 | -6 | 4 | 4 | 1 |  |  |  |
| `AA` | Plague Spreader | HM | 16 | 16,34 | -10 | KND | KND | 8 |  |  |  |
| `Aa6` | Plague Spreader | H | 16 | 16 | -32 | -22 | -22 | 1 |  | [SS] into GS |  |
| `(A)` | Plague Spreader | H | 16 | 16 | 0 | 10 | 10 | 1 |  | [SS] into NSS |  |
| `aB` | Quick Chainmail Buster | M | 20 | 28 | -12 | STN | STN | 9 |  |  |  |
| `abA` | Quick Backspin Slash | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. Can also intput as [b]. [g]. [A]. 42 dmg and [GC] on perfect input | F4 |
| `agA` | Quick Neck Buster | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. 42 dmg and [GC] on perfect input |  |
| `6A` | Blood Storm | H | 22 | 20 | -16 | -4 | -4 | 4 | 10-20 | Armor[10-20]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6AA` | Blood Storm | HH | 22 | 20,30 | 2 | KND | KND | 5 |  | Counter Hit Combo | F7 |
| `6(A)` | Blood Storm | H | 22 | 20 | -8 | 4 | 4 | 4 |  | [SS] into NSS |  |
| `6AaG` | Blood Storm | H | 22 | 20 | -11 | 1 | 1 | 4 |  | [SS] into NBS |  |
| `3A` | Mail Crusher | M | 20 | 20 | -22 | -4 | -4 | 1 |  |  |  |
| `3AA` | Mail Crusher | MM | 20 | 20,32 | -20 | KND | KND | 3 |  | Normal Hit Combo |  |
| `3AB` | Mail Crusher | MM | 20 | 20,30 | -6 | STN | STN | 8 |  |  |  |
| `3AK` | Mail Crusher | MH | 20 | 20,28,32 | 2 | KND | KND | 8 |  |  | F1 |
| `2A` | Jade Slicer | L | 18 | 16 | -14 | -4 | 6 | 1 |  | Tech Crouch[8-18] | F6 |
| `1A` | Shadow Slicer | L | 32 | 28 | -22 | 4 | LNC | 4 |  | [LH] vs ukemi |  |
| `1(A)` | Shadow Slicer | L | 62 | 52 | 6 | LNC | LNC | 9 |  | [BA]. [LH] vs ukemi |  |
| `1aK` | Jade Crusher | H | 40 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |
| `1(A)K` | Jade Crusher | H | 70 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |
| `1A6` | Shadow Slicer ~ Grim Stride | L | 32 | 32 | -12 | 14 | LNC | 4 |  | [SS] into GS. [LH] vs ukemi |  |
| `1(A)6` | Shadow Slicer ~ Grim Stride | L | 62 | 52 | 14 | LNC | LNC | 9 |  | [SS] into GS. [BA]. [LH] vs ukemi |  |
| `4A` | Back Blade | H | 32 | 40 | 4 | STN | STN | 9 |  | [BA] |  |
| `7A` | Fatal Spin Slash | H | 26 | 22 | -12 | 0 | 0 | 4 |  | Tech Jump [7-32] |  |
| `8A` | Fatal Spin Slash | H | 26 | 25 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |
| `9A` | Fatal Spin Slash | H | 26 | 28 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |

## Vertical Attacks  (16)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B` | Chariot Splitter | M | 26 | 30 | -18 | KND | KND | 9 |  |  |  |
| `BB` | Chariot Splitter | MM | 26 | 30 | -16 | KND | KND | 15 |  | Normal Hit Combo | F1 |
| `Bb4` | Chariot Splitter | M | 26 | 30 | -6 | KND | KND | 9 |  | [SS] into NBS |  |
| `6B` | Double Avenger | M | 22 | 18 | -16 | STN | STN | 4 | 10-22 | Armor[10-22]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6BB` | Double Avenger | MM | 22 | 18,20 | -12 | KND | KND | 10 |  | Normal Hit Combo |  |
| `3B` | Death Smash | M | 22 | 36 | -20 | LNC | LNC | 9 |  | STN on tip hit |  |
| `3(B)` | Death Smash | M | 22 | 36 | -6 | LNC | LNC | 9 |  | [SS] into NSS. STN on tip hit. |  |
| `2B` | Shadow Buster | M | 20 | 18 | -10 | 2 | 2 | 2 |  | Tech Crouch[18-RC] | F6 |
| `2(B)` | Shadow Buster | M | 20 | 18 | 2 | 14 | 14 | 2 |  | [SS] into NLS |  |
| `1B` | Dark Soul Impact | L | 32 | 38 | -16 | KND | KND | 9 |  |  |  |
| `4B` | Triple Headbutt | M | 16 | 15 | -10 | 0 | 0 | 2 |  |  |  |
| `4BB` | Triple Headbutt | MM | 16 | 15,10 | -12 | 2 | 2 | 4 |  |  |  |
| `4BBB` | Triple Headbutt | MMM | 16 | 15,10,15 | -14 | KND | KND | 9 |  | 2nd and 3rd hit are Normal Hit Combo |  |
| `7B` | Fatal Buster | M | 34 | 26 | -6 | 0 | 0 | 9 |  | Tech Jump[7-34] |  |
| `8B` | Fatal Buster | M | 34 | 29 | -6 | KND | KND | 9 |  | Tech Jump[7-34] |  |
| `9B` | Fatal Buster | M | 34 | 32 | -6 | KND | KND | 9 |  | Tech Jump[7-34] |  |

## Kick Attacks  (13)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Jade Strike | H | 14 | 18 | -8 | 4 | KND | 2 |  | G cancelable |  |
| `k6` | Dark Bite | H | 16 | 15 | -14 | KND | KND | 1 |  | Count as horizontal and tracks. Shifts to attack throw on any couter (46 damage). |  |
| `6K` | Adamantine Cracker | H | 16 | 24 | -4 | KND | KND | 2 | ✓ (frames not listed) | [LH] when counterhit vs red flashing health bar. See Soul Wave (hit) for successfull armor frames. | F4 |
| `3K` | Dark Rush Kick | M | 14 | 16 | -6 | 6 | 6 | 2 |  |  |  |
| `2K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `1K` | Earth Trample | L | 20 | 15 | -12 | -2 | 4 |  |  |  |  |
| `1(K)` | Earth Trample | L | 54 | 30 |  | KND | KND |  |  | [UA] |  |
| `4K` | Sinew Crusher | M | 18 | 18 | -10 | 2 | 10 | 2 |  |  |  |
| `4KB` | Sinew Crusher | MM | 18 | 18,24 | -12 | 0 | 0 | 4 |  | Normal Hit Combo |  |
| `4KK` | Double Death Strike | MH | 18 | 18,24,22,7 | -6 | KND | KND | 4 |  | Counter Hit Combo. Grants NTech Crouch | F1 F4 F6 F7 |
| `7K` | Fatal Brave Kick | M | 24 | 22 | -8 | 6 | 6 | 1 |  | Tech Jump[7-31] |  |
| `8K` | Fatal Brave Kick | M | 24 | 24 | -8 | 6 | KND | 1 |  | Tech Jump[7-31] |  |
| `9K` | Fatal Brave Kick | M | 24 | 26 | -8 | 6 | KND | 1 |  | Tech Jump[7-31] |  |

## Multi Attacks  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Midnight Launcher | M | 32 | 42 | 8 | LNC | LNC | 13 |  | [BA]. [LH] vs GI. -10 if you wish to guard |  |
| `6A+B` | Soul Wave | M | 36 | 30 | -14 | KND | KND | 9 | 10-35 | Armor[10-35]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `2A+B` | Soul Smasher | M | 20 | 15,25 | -16 | KND | KND | 9 |  | Grants NTech Crouch | F1 F4 F6 |
| `4A+B` | Terrestrial Winds | M | 67 | 56,18 |  | LNC | LNC |  |  | [UA]. G cancelable | F1 |

## Throws  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Shoulder Claw Throw | H | 18 | 22 |  | KND | KND |  |  | [TH] |  |
| `4A+G` | Soul Devour | H | 18 | 9 |  | KND | KND |  |  | [TH] |  |
| `236A+G` | Nightmare Terror Grab | M | 12 | 25 |  | 14 | 14 |  |  | [TH]. Grants NTech Crouch | F4 F6 |

## Run Attacks  (24)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Right Slasher | H | 28 | 38 | -2 | KND | KND | 4 |  |  | F5 |
| `66a6` | Right Slasher ~ Grim Stride | H | 28 | 38 | 0 | KND | KND | 4 |  | [SS] into GS | F5 |
| `22A` | Death Rage | M | 22 | 22 | -10 | 0 | 0 | 2 |  |  | F5 |
| `22AA` | Death Rage | MM | 22 | 22,26 | -16 | KND | KND | 3 |  | Counter Hit Combo | F5 F7 |
| `22Aa6` | Death Rage ~ Grim Stride | M | 22 | 22 | -14 | -4 | -4 | 2 |  | [SS] into GS | F5 |
| `44A` | Plague Storm | M | 30 | 40 | -10 | KND | KND | 9 |  |  | F5 |
| `44a6` | Plague Storm ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS | F5 |
| `44(A)` | Plague Storm | M | 44 | 50 | 0 | KND | KND | 9 |  |  | F5 |
| `44(A)6` | Plague Storm ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS | F5 |
| `66B` | Ether Splitter | M | 20 | 24 | -22 | LNC | LNC | 15 |  |  | F5 |
| `66(B)` | Ether Splitter ~ Night Behind Stance | M | 20 | 24 | -20 | LNC | LNC | 15 |  | [SS] into NBS | F5 |
| `66B6` | Ether Splitter ~ Grim Stride | M | 20 | 24 | -2 | LNC | LNC | 15 |  | [SS] into GS | F5 |
| `22B` | Rook Splitter | M | 30 | 52 | -18 | KND | KND | 15 |  | [LH] on back hit | F5 |
| `22(B)` | Rook Splitter | M | 30 | 52 | -4 | KND | KND | 15 |  | [LH] on back hit. [SS] into NLS | F5 |
| `11B` | Darkness Impact | L | 30 | 24 | -20 | -4 | -4 | 2 |  |  | F5 |
| `11(B)` | Darkness Impact ~ Night Lower Stance | L | 30 | 24 | -10 | 10 | 10 | 2 |  | [SS] into NLS | F5 |
| `44B` | Shadow Breaker | M | 34 | 24 | 0 | STN | STN | 15 |  |  | F5 |
| `44BB` | Shadow Breaker | MM | 34 | 24,30 | 2 | LNC | LNC | 19 |  | Normal Hit Combo. [BA] | F5 |
| `44B(B)` | Shadow Breaker ~ Night Side Stance | MM | 34 | 24,30 | 6 | LNC | LNC | 19 |  | Normal Hit Combo. [BA]. [SS] into NSS | F5 |
| `66K` | Shoulder Rush | M | 16 | 20 | -16 | 2 | 2 | 2 |  | Tech Crouch[5-16] | F5 F6 |
| `66K6` | Shoulder Rush ~ Grim Stride | M | 16 | 20 | -6 | 12 | 12 | 2 |  | Tech Crouch[5-16]. [SS] into GS | F5 F6 |
| `22K` | Bloody Jade Impact | SM | 40 | 40 | -10 | KND | KND | 9 |  | on whiff turns into low tremble (+20 on hit) | F5 |
| `44K` | Drop Kick | H | 30 | 52 |  | KND | KND | 15 |  | [BA]. [LH] if jumps over low attack | F5 |
| `66A+B` | Crimson Vortex | MM | 31 | 48 | 4 | LNC | LNC | 13 |  | 2nd hit only hits grounded | F1 F5 |

## Grim Stride  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `236` | Grim Stride |  |  |  |  |  |  |  |  | GS |  |

## Night Lower Stance  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B+K` | Night Lower Stance |  |  |  |  |  |  |  |  | NLS |  |

## Night Behind Stance  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | NBS |  |

## Night Side Stance  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | NSS |  |

## Reversal Edge Attacks  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Azure Retribution | M | 46 | 40 | -16 |  |  | 2 |  | [RE] [6-30] |  |
| `+ (B)+(G)` | Azure Retribution | M | 66 | 50 | 6 |  |  | 2 |  | [BA]. [RE] [6-50] |  |

---

# PART 2 — GATED (80)

## REVENGE  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `REVENGE 6A+B` | Dire Vengeance | M | 36 | 30 | 2 | KND | KND | 9 |  | If armor clicks. [LH] in SC. [BA] | F5 |

## NTC  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC 6BBB` | Death Lord's Impalement | MMMMMM | 22 | 19,22,3,3,3,3,3,3,22 | 4 | KND | KND | 18 |  | Normal Hit Combo. [BA] | F1 |
| `NTC KB` | Malicious Lord's Destruction | HM | 14 | 18,30 | -4 | KND | KND | 9 |  | Normal Hit Combo |  |
| `NTC 66KK` | Death Lord's Agony | MM | 16 | 20,22 | 0 | STN | STN | 15 |  | Normal Hit Combo. [BA] | F5 |
| `NTC 66KK6` | Death Lord's Agony ~ Grim Stride | MM | 16 | 20,22 | 10 | STN | STN | 15 |  | Normal Hit Combo. [BA]. [SS] into GS | F5 |

## FC  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Jade Slicer | L | 18 | 16 | -14 | -4 | 6 | 1 |  | Tech Crouch[0-9]. Tech Crouch[19-RC] | F6 |
| `FC B` | Shadow Buster ~ Night Lower Stance | M | 20 | 18 | -10 | 2 | 2 | 2 |  | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `FC (B)` | Shadow Buster ~ Night Lower Stance | M | 20 | 18 | 2 | 14 | 14 | 2 |  | Tech Crouch[0-4]. [SS] into NLS | F6 |
| `FC 3B` | Soul Taker | M | 26 | 16,30 | -12 | LNC | LNC | 9 |  | Tech Crouch[1-5]. Tech Crouch[12-53] | F1 F6 |
| `FC K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `FC [2/3]A+G` | Flap Jack | L | 18 | 30 | -16 | KND | KND |  |  | [TH] | F5 |
| `FC 1A+G` | Over Toss | L | 18 | 30 | -16 | KND | KND |  |  | [TH] |  |

## WR  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `WR A` | Maelstrom | M | 18 | 20 | -20 | -10 | -10 | 1 |  | Tech Crouch [0-5] | F6 |
| `WR AA` | Maelstrom | ML | 18 | 20,30 | -24 | KND | KND | 3 |  | Counter Hit Combo. Tech Crouch [17-42] | F6 F7 |
| `WR (A)` | Maelstrom | M | 18 | 20 | -2 | 8 | 8 | 1 |  | Tech Crouch [0-5]. [SS] into NSS | F6 |
| `WR Aa6` | Maelstrom | M | 18 | 20 | -12 | 0 | 0 | 1 |  | [SS] into GS |  |
| `WR B` | Upper Claw | M | 16 | 18 | -22 | LNC | LNC | 2 |  | [LH] counter vs vertical |  |
| `WR (B)` | Upper Claw | M | 16 | 18 | -2 | LNC | LNC | 2 |  | [LH] counter vs vertical. [SS] into NSS |  |
| `WR K` | Dark Head Upper | M | 14 | 18 | -16 | 0 | 0 | 1 |  | Tech Crouch[0-4] | F6 |

## NTC WR  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC WR KB` | Haunted Lord's Torment | MH | 14 | 18,14 | -12 | 8 | 8 | 9 |  | Normal Hit Combo |  |
| `NTC WR K(B)` | Haunted Lord's Torment | MH | 14 | 18,14 | -2 | 18 | 18 | 9 |  | Normal Hit Combo. [SS] into NSS |  |

## NSS  (10)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NSS A` | Skull Chopper | H | 26 | 22 | -10 | 8 | 8 | 1 |  | Tech Crouch[13-22] | F6 |
| `NSS (A)` | Skull Chopper | M | 26 | 22 | -4 | 14 | 14 | 1 |  | Tech Crouch[13-22]. [SS] into NSS | F6 |
| `NSS B` | Soul Biter | M | 20 | 28 | -14 | LNC | LNC | 9 |  |  |  |
| `NSS aB` | Phantom Splitter | M | 27 | 26 | -18 | KND | KND | 9 |  | [LH] as whiff punish |  |
| `NSS a(B)` | Phantom Splitter | M | 27 | 26 | -2 | KND | KND | 9 |  | [LH] as whiff punish |  |
| `NSS bA` | Skull Chopper | H | 14 | 48 | -16 | KND | KND | 9 |  | Tech Crouch[8-14] -10 damage without just frame | F6 |
| `NSS K` | Night Front Kick | H | 10 | 16 | -10 | KND | STN | 9 |  |  |  |
| `NSS B+K` | Night Lower Stance |  |  |  |  |  |  |  |  | [SS] into NLS |  |
| `NSS 6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | [SS] into NBS |  |
| `NSS 236` | Night Side Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |

## NTC NSS  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC NSS bAB` | Phantom Lord's Gammadia | HM | 14 | 48,19 | -22 | KND | KND | 20 |  | Normal Hit Combo Tech Crouch[8-14] -10 damage without just frame | F6 |
| `NTC NSS A+B` | Purpure Devastation | MM |  | 30,31 | 4 | KND | KND | 21 |  | Normal Hit Combo. [GI][4-11] vs high&mid verticals |  |

## NLS  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NLS A` | Leg Hacker | L | 26 | 26 | -10 | 2 | 2 | 1 |  | Tech Crouch[0-65] | F6 |
| `NLS (A)` | Leg Hacker | L | 26 | 26 | -2 | 10 | 10 | 1 |  | [SS] into NSS. Tech Crouch[0-14] | F6 |
| `NLS B` | Death Horn Charge | M | 14 | 30,30 | -10 | KND | KND | 9 |  | 30 dmg at tip range. Tech Crouch[0-17] | F1 F6 |
| `NLS (B)` | Death Horn Charge | M | 14 | 30 | 2 | STN | STN | 9 |  | [SS] into NBS. Tech Crouch[0-17] | F6 |
| `NLS K` | Death Lifting Kick | MH | 16 | 10,12 | -6 | KND | KND | 14 |  | Normal Hit Combo. Tech Crouch[0-4] | F6 |
| `NLS 6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | [SS] into NBS |  |
| `NLS 4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | [SS] into NSS |  |
| `NLS 236` | Night Lower Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |

## NTC NLS  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC NLS A+B` | Vert Annihilation | MMMM | 26 | 10,10,36,36 | 14 | KND | KND | 19 |  | [BA]. Tech Jump[0-38]. Tech Crouch[38-53] | F6 |

## NBS  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NBS A` | Terror Sweeper | L | 24 | 30 | -20 | 0 | KND | 1 |  |  |  |
| `NBS (A)` | Terror Sweeper | L | 24 | 30 | -12 | 8 | KND | 1 |  | [SS] into NSS |  |
| `NBS B` | Terror Vortex | M | 26 | 36 | -2 | KND | LNC | 9 |  |  |  |
| `NBS K` | Knee Kick Rush | M | 10 | 12 | -8 | 2 | 2 | 2 |  | [SS] into NBS |  |
| `NBS KK` | Knee Kick Rush | MH | 10 | 12,18 | -8 | 4 | STN | 4 |  | Normal Hit Combo |  |
| `NBS B+K` | Night Lower Stance |  |  |  |  |  |  |  |  | [SS] into NLS |  |
| `NBS 4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | [SS] into NSS |  |
| `NBS 236` | Night Behind Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |

## NTC NBS  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC NBS A+B` | Gules Obliteration | MMMH | 33 | 20,22,22,21 | 6 | KND | KND | 12 |  | Normal Hit Combo. Jails. [GI][4-15] vs non-kick horizontals |  |

## GS  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `GS A` | Grim Fang | H | 18 | 16 | -16 | 8 | 18 | 1 |  | [GI] [2-17] vs [H]&[M] verticals |  |
| `GS aB` | Grim Fang | H | 22 | 20 | -20 | 0 | 0 | 2 |  | [GI] [2-17] vs [H]&[M] verticals. [LH] after successfull GI | F4 |
| `GS B` | Grim Launcher | M | 22 | 42 | -10 | LNC | LNC | 9 |  |  |  |
| `GS b6` | Grim Launcher | M | 22 | 42 | -9 | LNC | LNC | 9 |  | [SS] into GS |  |
| `GS K` | Grim Riser Kick | M | 18 | 22 | -14 | KND | STN | 7 |  |  |  |
| `GS A+G` | Nightmare Terror Grab | M | 12 | 25 |  | 14 | 14 |  |  | grants NTech Crouch | F4 F6 |
| `GS A+B+K` | Harbinger Of Doom | M | 16 | 36 | -6 | 8 | 8 | 9 |  |  |  |

## NTC GS  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `NTC GS AA` | Grim Lord's Desolation | HH | 18 | 16,15,28 | -2 | KND | KND | 2 |  | Normal Hit Combo [GI] [2-17] vs [H]&[M] verticals [AT] | F1 |
| `NTC GS aBB` | Grim Fang | HH | 22 | 20,30 | 6 | KND | KND | 9 |  | Normal Hit Combo. [BA] |  |
| `NTC GS KK` | Grim Lord's Auto-da-fé | MH | 18 | 12,7,18,6 | 10 | KND | KND | 16 |  | [BA] | F1 |
| `NTC GS A+B` | Sable Destruction | MMM | 22 | 15,15,25 | 0 | KND | KND | 12 |  | [BA] |  |

## BT  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Turning Head Slash | H | 18 | 18 | -7 | 3 | 3 | 1 |  |  |  |
| `BT 2A` | Turning Leg Slash | L | 20 | 16 | -6 | 4 | 4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `BT B` | Turning Sword Buster | M | 22 | 20 | -10 | 0 | 0 | 2 |  |  |  |
| `BT 2B` | Turning Shadow Buster | M | 22 | 22 | -8 | 2 | 2 | 2 |  | Tech Crouch[13-RC] | F6 |
| `BT K` | Turning Dark High Kick | H | 14 | 16 | -8 | 2 | 2 | 1 |  |  |  |
| `BT 2K` | Turning Dark Low Kick | L | 16 | 18 | -14 | -4 | -4 | 1 |  |  |  |
| `BT A+B` | Soul Wave (Ambush) | M | 36 | 30 | -14 | KND | KND |  | ✓ (frames not listed) | same properties as [6]. [A]{{Icon-SC/+}}[B] |  |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding | L | 20 | 26 | -22 | KND | KND | 2 |  | Tech Jump[6-26]. Tech Crouch[26-46] | F6 |

## RE  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `RE A` | Calculated Slaughter | H |  | 52 | -12 | KND | KND |  |  |  |  |
| `RE B` | Crown Splitter ~ Night Side Stance | M |  | 66 |  | STN | STN |  |  |  |  |
| `RE K` | Crimson Fountain | M |  | 26 | -16 | KND | KND |  |  | grants NTech Crouch | F4 F6 |

## METER  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `METER A+B+K` | Dark Reconquista: Triumph | MMM | 40 | 80 | -18 | KND | KND | 25 | 2+ | Armor[2+] | F1 |
| `METER (A)+(B)+(K)` | Dark Reconquista: Triumph | MMM | 64 | 110 |  | KND | KND |  | 2+ | [UA]. Armor[2+] | F1 F5 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 |  |  | invincible since i4. Pushback happens at i6 |  |
| `METER 236A+B+K` | Harbinger Of Doom | M | 16 | 36 | -6 | 8 | 8 | 9 |  |  |  |

## SIDE-L  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-L A+G` | Doom's Invitation | H | 18 | 30 |  | KND | KND |  |  | [TH] | F5 |

## SIDE-R  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-R A+G` | Unholy Terror | H | 18 | 19 |  | KND | KND |  |  | [TH] | F5 |

## BACK  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BACK A+G` | Witch Hunt | H | 18 | 13 |  | KND | KND |  |  | [TH] | F5 |

---

# PART 3 — DERIVED INDEXES

> Derived mechanically from the raw fields. **Inherits every ⚑ flag.** Not lab-verified.

## ⭐ Armor / revenge moves

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `6A` | Blood Storm | H | 22 | 20 | -16 | -4 | -4 | 4 | 10-20 | Armor[10-20]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6B` | Double Avenger | M | 22 | 18 | -16 | STN | STN | 4 | 10-22 | Armor[10-22]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6K` | Adamantine Cracker | H | 16 | 24 | -4 | KND | KND | 2 | ✓ (frames not listed) | [LH] when counterhit vs red flashing health bar. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6A+B` | Soul Wave | M | 36 | 30 | -14 | KND | KND | 9 | 10-35 | Armor[10-35]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `REVENGE 6A+B` | Dire Vengeance | M | 36 | 30 | 2 | KND | KND | 9 |  | If armor clicks. [LH] in SC. [BA] | F5 |
| `BT A+B` | Soul Wave (Ambush) | M | 36 | 30 | -14 | KND | KND |  | ✓ (frames not listed) | same properties as [6]. [A]{{Icon-SC/+}}[B] |  |
| `METER A+B+K` | Dark Reconquista: Triumph | MMM | 40 | 80 | -18 | KND | KND | 25 | 2+ | Armor[2+] | F1 |
| `METER (A)+(B)+(K)` | Dark Reconquista: Triumph | MMM | 64 | 110 |  | KND | KND |  | 2+ | [UA]. Armor[2+] | F1 F5 |

## Branch points (2+ follow-ups)

> Children are options chosen **before** the next input, not a guaranteed sequence.

| Node | Children (Lvl i Blk/Hit) | n |
|---|---|---|
| `3A` | `3AA` MM -20/KND · `3AB` MM -6/STN · `3AK` MH 2/KND | 3 |
| `1(A)` | `1(A)6` L 14/LNC · `1(A)K` H 2/KND | 2 |
| `22A` | `22AA` MM -16/KND · `22Aa6` M -14/-4 | 2 |
| `44B` | `44B(B)` MM 6/LNC · `44BB` MM 2/LNC | 2 |
| `4B` | `4BB` MM -12/2 · `4BBB` MMM -14/KND | 2 |
| `4K` | `4KB` MM -12/0 · `4KK` MH -6/KND | 2 |
| `6A` | `6AA` HH 2/KND · `6AaG` H -11/1 | 2 |
| `A` | `AA` HM -10/KND · `Aa6` H -32/-22 | 2 |
| `B` | `BB` MM -16/KND · `Bb4` M -6/KND | 2 |
| `WR A` | `AA` ML -24/KND · `Aa6` M -12/0 | 2 |

## Plus or neutral on BLOCK

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `1(A)6` | Shadow Slicer ~ Grim Stride | L | 62 | 52 | 14 | LNC | LNC | 9 |  | [SS] into GS. [BA]. [LH] vs ukemi |  |
| `NTC NLS A+B` | Vert Annihilation | MMMM | 26 | 10,10,36,36 | 14 | KND | KND | 19 |  | [BA]. Tech Jump[0-38]. Tech Crouch[38-53] | F6 |
| `NTC 66KK6` | Death Lord's Agony ~ Grim Stride | MM | 16 | 20,22 | 10 | STN | STN | 15 |  | Normal Hit Combo. [BA]. [SS] into GS | F5 |
| `NTC GS KK` | Grim Lord's Auto-da-fé | MH | 18 | 12,7,18,6 | 10 | KND | KND | 16 |  | [BA] | F1 |
| `A+B` | Midnight Launcher | M | 32 | 42 | 8 | LNC | LNC | 13 |  | [BA]. [LH] vs GI. -10 if you wish to guard |  |
| `1(A)` | Shadow Slicer | L | 62 | 52 | 6 | LNC | LNC | 9 |  | [BA]. [LH] vs ukemi |  |
| `44B(B)` | Shadow Breaker ~ Night Side Stance | MM | 34 | 24,30 | 6 | LNC | LNC | 19 |  | Normal Hit Combo. [BA]. [SS] into NSS | F5 |
| `+ (B)+(G)` | Azure Retribution | M | 66 | 50 | 6 |  |  | 2 |  | [BA]. [RE] [6-50] |  |
| `NTC GS aBB` | Grim Fang | HH | 22 | 20,30 | 6 | KND | KND | 9 |  | Normal Hit Combo. [BA] |  |
| `NTC NBS A+B` | Gules Obliteration | MMMH | 33 | 20,22,22,21 | 6 | KND | KND | 12 |  | Normal Hit Combo. Jails. [GI][4-15] vs non-kick horizontals |  |
| `4A` | Back Blade | H | 32 | 40 | 4 | STN | STN | 9 |  | [BA] |  |
| `66A+B` | Crimson Vortex | MM | 31 | 48 | 4 | LNC | LNC | 13 |  | 2nd hit only hits grounded | F1 F5 |
| `NTC 6BBB` | Death Lord's Impalement | MMMMMM | 22 | 19,22,3,3,3,3,3,3,22 | 4 | KND | KND | 18 |  | Normal Hit Combo. [BA] | F1 |
| `NTC NSS A+B` | Purpure Devastation | MM |  | 30,31 | 4 | KND | KND | 21 |  | Normal Hit Combo. [GI][4-11] vs high&mid verticals |  |
| `abA` | Quick Backspin Slash | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. Can also intput as [b]. [g]. [A]. 42 dmg and [GC] on perfect input | F4 |
| `agA` | Quick Neck Buster | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. 42 dmg and [GC] on perfect input |  |
| `6AA` | Blood Storm | HH | 22 | 20,30 | 2 | KND | KND | 5 |  | Counter Hit Combo | F7 |
| `3AK` | Mail Crusher | MH | 20 | 20,28,32 | 2 | KND | KND | 8 |  |  | F1 |
| `1aK` | Jade Crusher | H | 40 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |
| `1(A)K` | Jade Crusher | H | 70 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |
| `2(B)` | Shadow Buster | M | 20 | 18 | 2 | 14 | 14 | 2 |  | [SS] into NLS |  |
| `FC (B)` | Shadow Buster ~ Night Lower Stance | M | 20 | 18 | 2 | 14 | 14 | 2 |  | Tech Crouch[0-4]. [SS] into NLS | F6 |
| `REVENGE 6A+B` | Dire Vengeance | M | 36 | 30 | 2 | KND | KND | 9 |  | If armor clicks. [LH] in SC. [BA] | F5 |
| `44BB` | Shadow Breaker | MM | 34 | 24,30 | 2 | LNC | LNC | 19 |  | Normal Hit Combo. [BA] | F5 |
| `NLS (B)` | Death Horn Charge | M | 14 | 30 | 2 | STN | STN | 9 |  | [SS] into NBS. Tech Crouch[0-17] | F6 |
| `(A)` | Plague Spreader | H | 16 | 16 | 0 | 10 | 10 | 1 |  | [SS] into NSS |  |
| `66a6` | Right Slasher ~ Grim Stride | H | 28 | 38 | 0 | KND | KND | 4 |  | [SS] into GS | F5 |
| `44(A)` | Plague Storm | M | 44 | 50 | 0 | KND | KND | 9 |  |  | F5 |
| `44B` | Shadow Breaker | M | 34 | 24 | 0 | STN | STN | 15 |  |  | F5 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 |  |  | invincible since i4. Pushback happens at i6 |  |
| `NTC 66KK` | Death Lord's Agony | MM | 16 | 20,22 | 0 | STN | STN | 15 |  | Normal Hit Combo. [BA] | F5 |
| `NTC GS A+B` | Sable Destruction | MMM | 22 | 15,15,25 | 0 | KND | KND | 12 |  | [BA] |  |

## Fast (i ≤ 16) — what he can press

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `236A+G` | Nightmare Terror Grab | M | 12 | 25 |  | 14 | 14 |  |  | [TH]. Grants NTech Crouch | F4 F6 |
| `K` | Jade Strike | H | 14 | 18 | -8 | 4 | KND | 2 |  | G cancelable |  |
| `3K` | Dark Rush Kick | M | 14 | 16 | -6 | 6 | 6 | 2 |  |  |  |
| `WR K` | Dark Head Upper | M | 14 | 18 | -16 | 0 | 0 | 1 |  | Tech Crouch[0-4] | F6 |
| `BT K` | Turning Dark High Kick | H | 14 | 16 | -8 | 2 | 2 | 1 |  |  |  |
| `A` | Plague Spreader | H | 16 | 16 | -6 | 4 | 4 | 1 |  |  |  |
| `AA` | Plague Spreader | HM | 16 | 16,34 | -10 | KND | KND | 8 |  |  |  |
| `Aa6` | Plague Spreader | H | 16 | 16 | -32 | -22 | -22 | 1 |  | [SS] into GS |  |
| `(A)` | Plague Spreader | H | 16 | 16 | 0 | 10 | 10 | 1 |  | [SS] into NSS |  |
| `abA` | Quick Backspin Slash | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. Can also intput as [b]. [g]. [A]. 42 dmg and [GC] on perfect input | F4 |
| `agA` | Quick Neck Buster | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. 42 dmg and [GC] on perfect input |  |
| `4B` | Triple Headbutt | M | 16 | 15 | -10 | 0 | 0 | 2 |  |  |  |
| `4BB` | Triple Headbutt | MM | 16 | 15,10 | -12 | 2 | 2 | 4 |  |  |  |
| `4BBB` | Triple Headbutt | MMM | 16 | 15,10,15 | -14 | KND | KND | 9 |  | 2nd and 3rd hit are Normal Hit Combo |  |
| `WR B` | Upper Claw | M | 16 | 18 | -22 | LNC | LNC | 2 |  | [LH] counter vs vertical |  |
| `WR (B)` | Upper Claw | M | 16 | 18 | -2 | LNC | LNC | 2 |  | [LH] counter vs vertical. [SS] into NSS |  |
| `k6` | Dark Bite | H | 16 | 15 | -14 | KND | KND | 1 |  | Count as horizontal and tracks. Shifts to attack throw on any couter (46 damage). |  |
| `6K` | Adamantine Cracker | H | 16 | 24 | -4 | KND | KND | 2 | ✓ (frames not listed) | [LH] when counterhit vs red flashing health bar. See Soul Wave (hit) for successfull armor frames. | F4 |
| `2K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `FC K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `BT 2K` | Turning Dark Low Kick | L | 16 | 18 | -14 | -4 | -4 | 1 |  |  |  |
| `66K` | Shoulder Rush | M | 16 | 20 | -16 | 2 | 2 | 2 |  | Tech Crouch[5-16] | F5 F6 |
| `66K6` | Shoulder Rush ~ Grim Stride | M | 16 | 20 | -6 | 12 | 12 | 2 |  | Tech Crouch[5-16]. [SS] into GS | F5 F6 |

## Punishable on block (≤ -10), neutral only

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `Aa6` | Plague Spreader | H | 16 | 16 | -32 | -22 | -22 | 1 |  | [SS] into GS |  |
| `3A` | Mail Crusher | M | 20 | 20 | -22 | -4 | -4 | 1 |  |  |  |
| `1A` | Shadow Slicer | L | 32 | 28 | -22 | 4 | LNC | 4 |  | [LH] vs ukemi |  |
| `66B` | Ether Splitter | M | 20 | 24 | -22 | LNC | LNC | 15 |  |  | F5 |
| `3AA` | Mail Crusher | MM | 20 | 20,32 | -20 | KND | KND | 3 |  | Normal Hit Combo |  |
| `3B` | Death Smash | M | 22 | 36 | -20 | LNC | LNC | 9 |  | STN on tip hit |  |
| `66(B)` | Ether Splitter ~ Night Behind Stance | M | 20 | 24 | -20 | LNC | LNC | 15 |  | [SS] into NBS | F5 |
| `11B` | Darkness Impact | L | 30 | 24 | -20 | -4 | -4 | 2 |  |  | F5 |
| `B` | Chariot Splitter | M | 26 | 30 | -18 | KND | KND | 9 |  |  |  |
| `22B` | Rook Splitter | M | 30 | 52 | -18 | KND | KND | 15 |  | [LH] on back hit | F5 |
| `6A` | Blood Storm | H | 22 | 20 | -16 | -4 | -4 | 4 | 10-20 | Armor[10-20]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `BB` | Chariot Splitter | MM | 26 | 30 | -16 | KND | KND | 15 |  | Normal Hit Combo | F1 |
| `6B` | Double Avenger | M | 22 | 18 | -16 | STN | STN | 4 | 10-22 | Armor[10-22]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `1B` | Dark Soul Impact | L | 32 | 38 | -16 | KND | KND | 9 |  |  |  |
| `2A+B` | Soul Smasher | M | 20 | 15,25 | -16 | KND | KND | 9 |  | Grants NTech Crouch | F1 F4 F6 |
| `22AA` | Death Rage | MM | 22 | 22,26 | -16 | KND | KND | 3 |  | Counter Hit Combo | F5 F7 |
| `66K` | Shoulder Rush | M | 16 | 20 | -16 | 2 | 2 | 2 |  | Tech Crouch[5-16] | F5 F6 |
| `B+G` | Azure Retribution | M | 46 | 40 | -16 |  |  | 2 |  | [RE] [6-30] |  |
| `2A` | Jade Slicer | L | 18 | 16 | -14 | -4 | 6 | 1 |  | Tech Crouch[8-18] | F6 |
| `4BBB` | Triple Headbutt | MMM | 16 | 15,10,15 | -14 | KND | KND | 9 |  | 2nd and 3rd hit are Normal Hit Combo |  |
| `k6` | Dark Bite | H | 16 | 15 | -14 | KND | KND | 1 |  | Count as horizontal and tracks. Shifts to attack throw on any couter (46 damage). |  |
| `2K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `6A+B` | Soul Wave | M | 36 | 30 | -14 | KND | KND | 9 | 10-35 | Armor[10-35]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `22Aa6` | Death Rage ~ Grim Stride | M | 22 | 22 | -14 | -4 | -4 | 2 |  | [SS] into GS | F5 |
| `aB` | Quick Chainmail Buster | M | 20 | 28 | -12 | STN | STN | 9 |  |  |  |
| `1A6` | Shadow Slicer ~ Grim Stride | L | 32 | 32 | -12 | 14 | LNC | 4 |  | [SS] into GS. [LH] vs ukemi |  |
| `7A` | Fatal Spin Slash | H | 26 | 22 | -12 | 0 | 0 | 4 |  | Tech Jump [7-32] |  |
| `6BB` | Double Avenger | MM | 22 | 18,20 | -12 | KND | KND | 10 |  | Normal Hit Combo |  |
| `4BB` | Triple Headbutt | MM | 16 | 15,10 | -12 | 2 | 2 | 4 |  |  |  |
| `1K` | Earth Trample | L | 20 | 15 | -12 | -2 | 4 |  |  |  |  |
| `4KB` | Sinew Crusher | MM | 18 | 18,24 | -12 | 0 | 0 | 4 |  | Normal Hit Combo |  |
| `6AaG` | Blood Storm | H | 22 | 20 | -11 | 1 | 1 | 4 |  | [SS] into NBS |  |
| `AA` | Plague Spreader | HM | 16 | 16,34 | -10 | KND | KND | 8 |  |  |  |
| `8A` | Fatal Spin Slash | H | 26 | 25 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |
| `9A` | Fatal Spin Slash | H | 26 | 28 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |
| `2B` | Shadow Buster | M | 20 | 18 | -10 | 2 | 2 | 2 |  | Tech Crouch[18-RC] | F6 |
| `4B` | Triple Headbutt | M | 16 | 15 | -10 | 0 | 0 | 2 |  |  |  |
| `4K` | Sinew Crusher | M | 18 | 18 | -10 | 2 | 10 | 2 |  |  |  |
| `22A` | Death Rage | M | 22 | 22 | -10 | 0 | 0 | 2 |  |  | F5 |
| `44A` | Plague Storm | M | 30 | 40 | -10 | KND | KND | 9 |  |  | F5 |
| `11(B)` | Darkness Impact ~ Night Lower Stance | L | 30 | 24 | -10 | 10 | 10 | 2 |  | [SS] into NLS | F5 |
| `22K` | Bloody Jade Impact | SM | 40 | 40 | -10 | KND | KND | 9 |  | on whiff turns into low tremble (+20 on hit) | F5 |

## Lows — true `L` (crouch-guard them)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `2K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `FC K` | Dark Low Kick | L | 16 | 12 | -14 | -4 | -4 | 1 |  | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `BT 2K` | Turning Dark Low Kick | L | 16 | 18 | -14 | -4 | -4 | 1 |  |  |  |
| `2A` | Jade Slicer | L | 18 | 16 | -14 | -4 | 6 | 1 |  | Tech Crouch[8-18] | F6 |
| `FC A` | Jade Slicer | L | 18 | 16 | -14 | -4 | 6 | 1 |  | Tech Crouch[0-9]. Tech Crouch[19-RC] | F6 |
| `WR AA` | Maelstrom | ML | 18 | 20,30 | -24 | KND | KND | 3 |  | Counter Hit Combo. Tech Crouch [17-42] | F6 F7 |
| `FC [2/3]A+G` | Flap Jack | L | 18 | 30 | -16 | KND | KND |  |  | [TH] | F5 |
| `FC 1A+G` | Over Toss | L | 18 | 30 | -16 | KND | KND |  |  | [TH] |  |
| `BT 2A` | Turning Leg Slash | L | 20 | 16 | -6 | 4 | 4 | 1 |  | Tech Crouch[11-RC] | F6 |
| `1K` | Earth Trample | L | 20 | 15 | -12 | -2 | 4 |  |  |  |  |
| `RUN K` | Sliding | L | 20 | 26 | -22 | KND | KND | 2 |  | Tech Jump[6-26]. Tech Crouch[26-46] | F6 |
| `NBS A` | Terror Sweeper | L | 24 | 30 | -20 | 0 | KND | 1 |  |  |  |
| `NBS (A)` | Terror Sweeper | L | 24 | 30 | -12 | 8 | KND | 1 |  | [SS] into NSS |  |
| `NLS A` | Leg Hacker | L | 26 | 26 | -10 | 2 | 2 | 1 |  | Tech Crouch[0-65] | F6 |
| `NLS (A)` | Leg Hacker | L | 26 | 26 | -2 | 10 | 10 | 1 |  | [SS] into NSS. Tech Crouch[0-14] | F6 |
| `11B` | Darkness Impact | L | 30 | 24 | -20 | -4 | -4 | 2 |  |  | F5 |
| `11(B)` | Darkness Impact ~ Night Lower Stance | L | 30 | 24 | -10 | 10 | 10 | 2 |  | [SS] into NLS | F5 |
| `1A` | Shadow Slicer | L | 32 | 28 | -22 | 4 | LNC | 4 |  | [LH] vs ukemi |  |
| `1A6` | Shadow Slicer ~ Grim Stride | L | 32 | 32 | -12 | 14 | LNC | 4 |  | [SS] into GS. [LH] vs ukemi |  |
| `1B` | Dark Soul Impact | L | 32 | 38 | -16 | KND | KND | 9 |  |  |  |
| `1(K)` | Earth Trample | L | 54 | 30 |  | KND | KND |  |  | [UA] |  |
| `1(A)` | Shadow Slicer | L | 62 | 52 | 6 | LNC | LNC | 9 |  | [BA]. [LH] vs ukemi |  |
| `1(A)6` | Shadow Slicer ~ Grim Stride | L | 62 | 52 | 14 | LNC | LNC | 9 |  | [SS] into GS. [BA]. [LH] vs ukemi |  |

### SL / SM only

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `22K` | Bloody Jade Impact | SM | 40 | 40 | -10 | KND | KND | 9 |  | on whiff turns into low tremble (+20 on hit) | F5 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 |  |  | invincible since i4. Pushback happens at i6 |  |

## Highs (duckable) — neutral

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Jade Strike | H | 14 | 18 | -8 | 4 | KND | 2 |  | G cancelable |  |
| `A` | Plague Spreader | H | 16 | 16 | -6 | 4 | 4 | 1 |  |  |  |
| `AA` | Plague Spreader | HM | 16 | 16,34 | -10 | KND | KND | 8 |  |  |  |
| `Aa6` | Plague Spreader | H | 16 | 16 | -32 | -22 | -22 | 1 |  | [SS] into GS |  |
| `(A)` | Plague Spreader | H | 16 | 16 | 0 | 10 | 10 | 1 |  | [SS] into NSS |  |
| `abA` | Quick Backspin Slash | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. Can also intput as [b]. [g]. [A]. 42 dmg and [GC] on perfect input | F4 |
| `agA` | Quick Neck Buster | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. 42 dmg and [GC] on perfect input |  |
| `k6` | Dark Bite | H | 16 | 15 | -14 | KND | KND | 1 |  | Count as horizontal and tracks. Shifts to attack throw on any couter (46 damage). |  |
| `6K` | Adamantine Cracker | H | 16 | 24 | -4 | KND | KND | 2 | ✓ (frames not listed) | [LH] when counterhit vs red flashing health bar. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6A` | Blood Storm | H | 22 | 20 | -16 | -4 | -4 | 4 | 10-20 | Armor[10-20]. See Soul Wave (hit) for successfull armor frames. | F4 |
| `6AA` | Blood Storm | HH | 22 | 20,30 | 2 | KND | KND | 5 |  | Counter Hit Combo | F7 |
| `6(A)` | Blood Storm | H | 22 | 20 | -8 | 4 | 4 | 4 |  | [SS] into NSS |  |
| `6AaG` | Blood Storm | H | 22 | 20 | -11 | 1 | 1 | 4 |  | [SS] into NBS |  |
| `7A` | Fatal Spin Slash | H | 26 | 22 | -12 | 0 | 0 | 4 |  | Tech Jump [7-32] |  |
| `8A` | Fatal Spin Slash | H | 26 | 25 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |
| `9A` | Fatal Spin Slash | H | 26 | 28 | -10 | KND | KND | 4 |  | Tech Jump [7-32] |  |
| `66A` | Right Slasher | H | 28 | 38 | -2 | KND | KND | 4 |  |  | F5 |
| `66a6` | Right Slasher ~ Grim Stride | H | 28 | 38 | 0 | KND | KND | 4 |  | [SS] into GS | F5 |
| `44K` | Drop Kick | H | 30 | 52 |  | KND | KND | 15 |  | [BA]. [LH] if jumps over low attack | F5 |
| `4A` | Back Blade | H | 32 | 40 | 4 | STN | STN | 9 |  | [BA] |  |
| `1aK` | Jade Crusher | H | 40 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |
| `1(A)K` | Jade Crusher | H | 70 | 28,32 | 2 | KND | KND | 9 |  | [AT] | F1 |

## Break Attacks / Unblockables

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `1(A)` | Shadow Slicer | L | 62 | 52 | 6 | LNC | LNC | 9 |  | [BA]. [LH] vs ukemi |  |
| `1(A)6` | Shadow Slicer ~ Grim Stride | L | 62 | 52 | 14 | LNC | LNC | 9 |  | [SS] into GS. [BA]. [LH] vs ukemi |  |
| `4A` | Back Blade | H | 32 | 40 | 4 | STN | STN | 9 |  | [BA] |  |
| `1(K)` | Earth Trample | L | 54 | 30 |  | KND | KND |  |  | [UA] |  |
| `A+B` | Midnight Launcher | M | 32 | 42 | 8 | LNC | LNC | 13 |  | [BA]. [LH] vs GI. -10 if you wish to guard |  |
| `REVENGE 6A+B` | Dire Vengeance | M | 36 | 30 | 2 | KND | KND | 9 |  | If armor clicks. [LH] in SC. [BA] | F5 |
| `4A+B` | Terrestrial Winds | M | 67 | 56,18 |  | LNC | LNC |  |  | [UA]. G cancelable | F1 |
| `44BB` | Shadow Breaker | MM | 34 | 24,30 | 2 | LNC | LNC | 19 |  | Normal Hit Combo. [BA] | F5 |
| `44B(B)` | Shadow Breaker ~ Night Side Stance | MM | 34 | 24,30 | 6 | LNC | LNC | 19 |  | Normal Hit Combo. [BA]. [SS] into NSS | F5 |
| `44K` | Drop Kick | H | 30 | 52 |  | KND | KND | 15 |  | [BA]. [LH] if jumps over low attack | F5 |
| `+ (B)+(G)` | Azure Retribution | M | 66 | 50 | 6 |  |  | 2 |  | [BA]. [RE] [6-50] |  |
| `METER (A)+(B)+(K)` | Dark Reconquista: Triumph | MMM | 64 | 110 |  | KND | KND |  | 2+ | [UA]. Armor[2+] | F1 F5 |
| `NTC 6BBB` | Death Lord's Impalement | MMMMMM | 22 | 19,22,3,3,3,3,3,3,22 | 4 | KND | KND | 18 |  | Normal Hit Combo. [BA] | F1 |
| `NTC 66KK` | Death Lord's Agony | MM | 16 | 20,22 | 0 | STN | STN | 15 |  | Normal Hit Combo. [BA] | F5 |
| `NTC 66KK6` | Death Lord's Agony ~ Grim Stride | MM | 16 | 20,22 | 10 | STN | STN | 15 |  | Normal Hit Combo. [BA]. [SS] into GS | F5 |
| `NTC GS aBB` | Grim Fang | HH | 22 | 20,30 | 6 | KND | KND | 9 |  | Normal Hit Combo. [BA] |  |
| `NTC GS KK` | Grim Lord's Auto-da-fé | MH | 18 | 12,7,18,6 | 10 | KND | KND | 16 |  | [BA] | F1 |
| `NTC GS A+B` | Sable Destruction | MMM | 22 | 15,15,25 | 0 | KND | KND | 12 |  | [BA] |  |
| `NTC NLS A+B` | Vert Annihilation | MMMM | 26 | 10,10,36,36 | 14 | KND | KND | 19 |  | [BA]. Tech Jump[0-38]. Tech Crouch[38-53] | F6 |

## Guard Impacts / auto-GI

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `abA` | Quick Backspin Slash | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. Can also intput as [b]. [g]. [A]. 42 dmg and [GC] on perfect input | F4 |
| `agA` | Quick Neck Buster | H | 16 | 36 | 2 | KND | KND | 4 |  | [LH] post-GI. 42 dmg and [GC] on perfect input |  |
| `A+B` | Midnight Launcher | M | 32 | 42 | 8 | LNC | LNC | 13 |  | [BA]. [LH] vs GI. -10 if you wish to guard |  |
| `GS A` | Grim Fang | H | 18 | 16 | -16 | 8 | 18 | 1 |  | [GI] [2-17] vs [H]&[M] verticals |  |
| `GS aB` | Grim Fang | H | 22 | 20 | -20 | 0 | 0 | 2 |  | [GI] [2-17] vs [H]&[M] verticals. [LH] after successfull GI | F4 |
| `NTC GS AA` | Grim Lord's Desolation | HH | 18 | 16,15,28 | -2 | KND | KND | 2 |  | Normal Hit Combo [GI] [2-17] vs [H]&[M] verticals [AT] | F1 |
| `NTC NBS A+B` | Gules Obliteration | MMMH | 33 | 20,22,22,21 | 6 | KND | KND | 12 |  | Normal Hit Combo. Jails. [GI][4-15] vs non-kick horizontals |  |
| `NTC NSS A+B` | Purpure Devastation | MM |  | 30,31 | 4 | KND | KND | 21 |  | Normal Hit Combo. [GI][4-11] vs high&mid verticals |  |

## Stance entries (`[SS]`)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `Aa6` | Plague Spreader | H | 16 | 16 | -32 | -22 | -22 | 1 |  | [SS] into GS |  |
| `(A)` | Plague Spreader | H | 16 | 16 | 0 | 10 | 10 | 1 |  | [SS] into NSS |  |
| `6(A)` | Blood Storm | H | 22 | 20 | -8 | 4 | 4 | 4 |  | [SS] into NSS |  |
| `6AaG` | Blood Storm | H | 22 | 20 | -11 | 1 | 1 | 4 |  | [SS] into NBS |  |
| `1A6` | Shadow Slicer ~ Grim Stride | L | 32 | 32 | -12 | 14 | LNC | 4 |  | [SS] into GS. [LH] vs ukemi |  |
| `1(A)6` | Shadow Slicer ~ Grim Stride | L | 62 | 52 | 14 | LNC | LNC | 9 |  | [SS] into GS. [BA]. [LH] vs ukemi |  |
| `WR (A)` | Maelstrom | M | 18 | 20 | -2 | 8 | 8 | 1 |  | Tech Crouch [0-5]. [SS] into NSS | F6 |
| `WR Aa6` | Maelstrom | M | 18 | 20 | -12 | 0 | 0 | 1 |  | [SS] into GS |  |
| `Bb4` | Chariot Splitter | M | 26 | 30 | -6 | KND | KND | 9 |  | [SS] into NBS |  |
| `3(B)` | Death Smash | M | 22 | 36 | -6 | LNC | LNC | 9 |  | [SS] into NSS. STN on tip hit. |  |
| `2(B)` | Shadow Buster | M | 20 | 18 | 2 | 14 | 14 | 2 |  | [SS] into NLS |  |
| `FC (B)` | Shadow Buster ~ Night Lower Stance | M | 20 | 18 | 2 | 14 | 14 | 2 |  | Tech Crouch[0-4]. [SS] into NLS | F6 |
| `WR (B)` | Upper Claw | M | 16 | 18 | -2 | LNC | LNC | 2 |  | [LH] counter vs vertical. [SS] into NSS |  |
| `66a6` | Right Slasher ~ Grim Stride | H | 28 | 38 | 0 | KND | KND | 4 |  | [SS] into GS | F5 |
| `22Aa6` | Death Rage ~ Grim Stride | M | 22 | 22 | -14 | -4 | -4 | 2 |  | [SS] into GS | F5 |
| `44a6` | Plague Storm ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS | F5 |
| `44(A)6` | Plague Storm ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS | F5 |
| `66(B)` | Ether Splitter ~ Night Behind Stance | M | 20 | 24 | -20 | LNC | LNC | 15 |  | [SS] into NBS | F5 |
| `66B6` | Ether Splitter ~ Grim Stride | M | 20 | 24 | -2 | LNC | LNC | 15 |  | [SS] into GS | F5 |
| `22(B)` | Rook Splitter | M | 30 | 52 | -4 | KND | KND | 15 |  | [LH] on back hit. [SS] into NLS | F5 |
| `11(B)` | Darkness Impact ~ Night Lower Stance | L | 30 | 24 | -10 | 10 | 10 | 2 |  | [SS] into NLS | F5 |
| `44B(B)` | Shadow Breaker ~ Night Side Stance | MM | 34 | 24,30 | 6 | LNC | LNC | 19 |  | Normal Hit Combo. [BA]. [SS] into NSS | F5 |
| `66K6` | Shoulder Rush ~ Grim Stride | M | 16 | 20 | -6 | 12 | 12 | 2 |  | Tech Crouch[5-16]. [SS] into GS | F5 F6 |
| `GS b6` | Grim Launcher | M | 22 | 42 | -9 | LNC | LNC | 9 |  | [SS] into GS |  |
| `NLS (A)` | Leg Hacker | L | 26 | 26 | -2 | 10 | 10 | 1 |  | [SS] into NSS. Tech Crouch[0-14] | F6 |
| `NLS (B)` | Death Horn Charge | M | 14 | 30 | 2 | STN | STN | 9 |  | [SS] into NBS. Tech Crouch[0-17] | F6 |
| `NLS 6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | [SS] into NBS |  |
| `NLS 4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | [SS] into NSS |  |
| `NLS 236` | Night Lower Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |
| `6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | NBS |  |
| `NBS (A)` | Terror Sweeper | L | 24 | 30 | -12 | 8 | KND | 1 |  | [SS] into NSS |  |
| `NBS K` | Knee Kick Rush | M | 10 | 12 | -8 | 2 | 2 | 2 |  | [SS] into NBS |  |
| `NBS B+K` | Night Lower Stance |  |  |  |  |  |  |  |  | [SS] into NLS |  |
| `NBS 4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | [SS] into NSS |  |
| `NBS 236` | Night Behind Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |
| `4B+K` | Night Side Stance |  |  |  |  |  |  |  |  | NSS |  |
| `NSS (A)` | Skull Chopper | M | 26 | 22 | -4 | 14 | 14 | 1 |  | Tech Crouch[13-22]. [SS] into NSS | F6 |
| `NSS B+K` | Night Lower Stance |  |  |  |  |  |  |  |  | [SS] into NLS |  |
| `NSS 6B+K` | Night Behind Stance |  |  |  |  |  |  |  |  | [SS] into NBS |  |
| `NSS 236` | Night Side Stance ~ Grim Stride |  |  |  |  |  |  |  |  | [SS] into GS |  |
| `NTC WR K(B)` | Haunted Lord's Torment | MH | 14 | 18,14 | -2 | 18 | 18 | 9 |  | Normal Hit Combo. [SS] into NSS |  |
| `NTC 66KK6` | Death Lord's Agony ~ Grim Stride | MM | 16 | 20,22 | 10 | STN | STN | 15 |  | Normal Hit Combo. [BA]. [SS] into GS | F5 |

## Throws

> 📚 Dustloop: `236A+G` is a **Mid** throw (hits crouchers, ignores guard) and **unbreakable**. Universal `A+G`/`4A+G` are High.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Armor | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Shoulder Claw Throw | H | 18 | 22 |  | KND | KND |  |  | [TH] |  |
| `4A+G` | Soul Devour | H | 18 | 9 |  | KND | KND |  |  | [TH] |  |
| `SIDE-L A+G` | Doom's Invitation | H | 18 | 30 |  | KND | KND |  |  | [TH] | F5 |
| `SIDE-R A+G` | Unholy Terror | H | 18 | 19 |  | KND | KND |  |  | [TH] | F5 |
| `BACK A+G` | Witch Hunt | H | 18 | 13 |  | KND | KND |  |  | [TH] | F5 |
| `FC [2/3]A+G` | Flap Jack | L | 18 | 30 | -16 | KND | KND |  |  | [TH] | F5 |
| `FC 1A+G` | Over Toss | L | 18 | 30 | -16 | KND | KND |  |  | [TH] |  |
| `236A+G` | Nightmare Terror Grab | M | 12 | 25 |  | 14 | 14 |  |  | [TH]. Grants NTech Crouch | F4 F6 |
| `GS A+G` | Nightmare Terror Grab | M | 12 | 25 |  | 14 | 14 |  |  | grants NTech Crouch | F4 F6 |

## ⚑ Data-reliability flag index

| Flag | Rows |
|---|---|
| **F1** (15) | `3AK` · `1aK` · `1(A)K` · `BB` · `FC 3B` · `4KK` · `2A+B` · `4A+B` · `66A+B` · `NLS B` · `METER A+B+K` · `METER (A)+(B)+(K)` · `NTC 6BBB` · `NTC GS AA` · `NTC GS KK` |
| **F2** (0) |  |
| **F3** (0) |  |
| **F4** (11) | `abA` · `6A` · `6B` · `6K` · `4KK` · `6A+B` · `2A+B` · `236A+G` · `GS aB` · `GS A+G` · `RE K` |
| **F5** (32) | `REVENGE 6A+B` · `SIDE-L A+G` · `SIDE-R A+G` · `BACK A+G` · `FC [2/3]A+G` · `66A` · `66a6` · `22A` · `22AA` · `22Aa6` · `44A` · `44a6` · `44(A)` · `44(A)6` · `66B` · `66(B)` · `66B6` · `22B` · `22(B)` · `11B` · `11(B)` · `44B` · `44BB` · `44B(B)` · `66K` · `66K6` · `22K` · `44K` · `66A+B` · `METER (A)+(B)+(K)` · `NTC 66KK` · `NTC 66KK6` |
| **F6** (32) | `2A` · `FC A` · `WR A` · `WR AA` · `WR (A)` · `BT 2A` · `2B` · `FC B` · `FC (B)` · `FC 3B` · `BT 2B` · `2K` · `4KK` · `FC K` · `WR K` · `2A+B` · `236A+G` · `66K` · `66K6` · `RUN K` · `GS A+G` · `NLS A` · `NLS (A)` · `NLS B` · `NLS (B)` · `NLS K` · `NSS A` · `NSS (A)` · `NSS bA` · `RE K` · `NTC NLS A+B` · `NTC NSS bAB` |
| **F7** (4) | `6AA` · `WR AA` · `4KK` · `22AA` |

### Other source issues noticed by hand

| Where | Issue |
|---|---|
| `6K` | Notes point to Soul Wave (hit) but give **no armor window**. 📖 Beginner lesson + Strategy table both list it as a revenge move. |
| `6AA`, `6BB` | 📖 lesson says "`6AA`, `6BB`, `6K` have revenge on startup" — the armor is on the **first** hit (`6A`/`6B` rows). Whether the 2nd hit has armor: not listed ❓. |
| `RE K` | Notes `grants NTech Crouch` — find/replace damage; read "grants NTC". |
| `REVENGE 6A+B` | `i36` is presumably counted from the armor click (Strategy safejab table uses 36). ❓ |

## ✅ Lab-confirmed additions

| Date | Input | Raw says | Lab says |
|---|---|---|---|
| 2026-10-?? | `A+B+K` revenge vs Ivy CE | Armor[2+] | ✅ user: armor blocked Ivy's CE — 1st hit absorbed (50% dmg), later hits guard-impacted |

