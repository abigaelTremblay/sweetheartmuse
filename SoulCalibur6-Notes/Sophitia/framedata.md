# Sophitia — Normalized Frame Data

> **Generated 2026-11-20** from the SuperCombo MediaWiki API (`Soulcalibur_VI/Sophitia/Move_list`, wikitext, 176 rows).
> Same pipeline as `../Nightmare/framedata.md` / `../Azwel/framedata.md`. Generator: session artifact `genchar.py`.
> **Raw wiki values are verbatim.** My additions: qualified inputs, `⚑`, Part 3, the dated lab section.
> **Snapshot, not ground truth.** Where it disagrees with the lab, the lab wins — record both.
> Purpose: **Learning her** (new character, 2026-11-20). Gameplan → `gameplan.md`; community sheet → `community-guides.md`.

**176 moves · 2 stances (`AS`, `TAS`) · 26 fast (i≤14) · 18 fast-and-safe (i≤16, blk≥-6)** — excluding SC/meter rows. From neutral only: 19 fast · 9 fast-and-safe.

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
| `(none)` | neutral standing | 104 |
| `SC` | Soul Charge **state** | 20 |
| `FC` | full crouch | 7 |
| `BT` | back turned | 7 |
| `AS` | Angel Step stance (entries: Part 3 › Stance entries) | 7 |
| `TAS` | Twin Angel Step | 7 |
| `SC AS` | Soul Charge **and** Angel Step | 6 |
| `WR` | while rising | 4 |
| `RE` | after winning Reversal Edge | 4 |
| `METER` | ⚠️ **costs meter but usable from neutral** (Soul Charge, CE, SA) | 3 |
| `SC TAS` | Soul Charge **and** Twin Angel Step | 3 |
| `SIDE-L` | throw from her left side | 1 |
| `SIDE-R` | throw from her right side | 1 |
| `BACK` | throw from behind | 1 |
| `RUN` | while running | 1 |

### Input normalisation (⚑ F5)

| Wiki | Here | Means |
|---|---|---|
| `(3)_(6)_(9)` | `66` | forward run |
| `(1)_(4)_(7)` | `44` | back run |
| `(2)_(8)` | `22` | vertical run |
| `(1)_(7)` | `11` | back-diagonal run |
| `(3)_(9)` | `33` | forward-diagonal run |
| `(2)A`, `(8)A`, `(4)A` | `[2]A` etc. | **held** direction (icon `22`/`88`/`44`) ❓ hold vs run — confirm |
| `(2)_(8)_(1)_(4)_(7)` | `[22/44]` | any vertical or back run |
| stance `LEFT/RIGHT SIDE THROW`, `BACK THROW` | `SIDE-L` / `SIDE-R` / `BACK` | positional throws |

## Notation — Sophitia-specific

| Token | Meaning |
|---|---|
| `AS` | Angel Step stance — entered from the `~ Angel Step` moves |
| `TAS` | Twin Angel Step — ❓ how it is entered is not in the move list; see `gameplan.md` |
| `(on hit)` / `(on whiff)` | wiki stance `hit`/`miss`: `8A+B` Angel Fall has a different result if the first part connects or whiffs (shockwave) |
| `AS B4 (on hit)` | wiki stance `AS on hit`: Painful Fate only comes out if `AS B` hits |
| lowercase `a`/`b`/`k` | slide / just-frame-ish input as written on the wiki — check the in-game command list |

---

# PART 1 — NEUTRAL (104)

## Horizontal Attacks  (21)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Starlight Blade | H | 12 | 8 | -8 | 2 | 2 | 1 |  |  |
| `AA` | Starlight Blade | HH | 12 | 8,10 | -8 | 2 | 2 | 2 | Normal Hit Combo |  |
| `AAA` | Starlight Blade | HHH | 12 | 8,10,25 | -4 | 6 | 6 | 2 |  |  |
| `AAA6` | Starlight Blade ~ Angel Step | HHH | 12 | 8,10,25 | -2 | 8 | 8 | 2 | Tech Crouch[4-RC]. AS | F6 |
| `AK` | Slide Tornado | HL | 12 | 8,10 | -14 | 0 | 0 | 1 | Normal Hit Combo |  |
| `6A` | Roaring Stream | H | 22 | 12 | -8 | 0 | 0 | 1 | [GI][6-16] vs [L] attacks. Tech Crouch[6-14] | F6 |
| `6AA` | Roaring Stream | HL | 22 | 12,18 | -10 | -2 | -2 | 2 | Normal Hit Combo. Tech Crouch[6-14] | F6 |
| `6AA6` | Roaring Stream ~ Angel Step | HL | 22 | 12,18 | -2 | 6 | 6 | 2 | Normal Hit Combo. Tech Crouch[6-14]. [SS] into AS | F6 |
| `3A` | Angel Punisher | M | 18 | 22 | -14 | -2 | -2 | 1 | Tech Crouch[9-35] | F6 |
| `2A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[8-RC] | F6 |
| `1A` | Iron Butterfly | L | 32 | 15 | -16 | -6 | KND | 4 | Tech Crouch[10-RC] | F6 |
| `1AA` | Iron Butterfly | LM | 32 | 15,25 | -14 | 6 | KND | 1 | Normal Hit Combo |  |
| `4A` | Cutlass Europa | H | 18 | 18 | -10 | 4 | 4 | 1 | Tech Crouch[8-12] | F6 |
| `4AA` | Cutlass Europa | HL | 18 | 18,15 | -16 | KND | KND | 2 | delayable |  |
| `4AAA` | Cutlass Europa | HLM | 18 | 18,15,25 | -24 | KND | KND | 2 | delayable |  |
| `4(A)` | Cutlass Europa | H | 38 | 30 | -2 | 16 | 16 | 4 | Tech Crouch[8-28] | F6 |
| `4(A)AAA` | Cutlass Europa | HLML | 38 | 30,15,15,13 | -16 | KND | KND | 2 | delayable. Normal Hit Combo |  |
| `4AB` | Cutlass Seraphim | HM | 18 | 18,20 | -12 | KND | KND | 6 | delayable. Normal Hit Combo |  |
| `4(A)B` | Cutlass Seraphim | HM | 38 | 30,28 | -12 | KND | KND | 6 | delayable Normal Hit Combo |  |
| `9A` | Jumping Mirage Satellite | H | 24 | 35 | -8 | KND | KND | 4 | Tech Jump[7-32] |  |
| `7A` | Jumping Mirage Satellite | H | 24 | 25 | -8 | 2 | 2 | 4 | Tech Jump[7-32] |  |

## Vertical Attacks  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B` | Divine Mist | M | 14 | 12 | -6 | 0 | 0 | 2 |  |  |
| `BB` | Divine Mist | MM | 14 | 12,14 | -8 | 2 | 2 | 2 | Normal Hit Combo |  |
| `BBB` | Divine Mist | MMMM | 14 | 12,14,14,16 | -6 | KND | KND | 6 | Tech Crouch[9-20] | F6 |
| `BK` | Angel's Flow | MH | 14 | 12,18 | -6 | 2 | 2 | 2 |  |  |
| `6B` | Ascetic's Force | M | 20 | 14 | -10 | -2 | 4 | 2 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `6BA` | Ascetic's Force | MM | 20 | 14,24 | -12 | 10 | 210 | 2 | Opponent is BT on hit |  |
| `6bA` | Ascetic's Blade | M | 44 | 24 | -12 | 4 | 4 | 4 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `6BB` | Press the Hilt | MM | 20 | 14,16 | -8 | 4 | 4 | 6 | Normal Hit Combo |  |
| `3B` | Paladin Purifier | M | 20 | 22 | -14 | LNC | LNC | 9 | Tech Crouch[8-17] | F6 |
| `2B` | Guardian Strike | M | 16 | 14 | -10 | 0 | 4 | 2 | Tech Crouch[16-RC] | F6 |
| `2BB` | Guardian Strike | MM | 16 | 14,22 | -20 | 10 | 10 | 7 | Tech Crouch[16-RC] | F6 |
| `2BB4` | Guardian Strike | MM | 16 | 14,22,15 |  | KND | KND | 7 | Tech Crouch[16-RC] +10 damage with exact timing | F1 F3 F6 |
| `2BBB` | Guardian Strike | MM | 16 | 14,22,15 |  | LNC | LNC | 7 | Tech Crouch[16-RC] +5 damage with exact timing | F1 F3 F6 |
| `2BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `1B` | Nasty Impale | L | 20 | 10 | -14 | -4 | -4 | 2 |  |  |
| `1BBBB` | Nasty Impale | LLLL | 20 | 10,8,8,8 | -14 | -4 | KND | 7 | Counter Hit Combo | F7 |
| `4B` | Sword Shower | M | 18 | 20 | -2 | 4 | 4 | 2 | Forces crouch on opponent | F6 |
| `9B` | Diving Exile | M | 38 | 18 | -4 | JGL | JGL | 9 | Tech Jump[7-31] | F4 |
| `7B` | Diving Exile | M | 38 | 18 | -4 | 8 | 8 | 9 | Tech Jump[7-31] |  |

## Kick Attacks  (9)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Kick Duo | H | 12 | 14 | -10 | -2 | -2 | 1 |  |  |
| `KK` | Kick Duo | HM | 12 | 14,10 | -6 | 2 | 2 | 2 | Normal Hit Combo |  |
| `6K` | Holy Punishment | M | 16 | 20 | -6 | 6 | KND | 2 |  |  |
| `3K` | Flapping Heel Kick | M | 13 | 14 | -7 | 3 | 3 | 2 |  |  |
| `2K` | Spring Under kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[11-RC] | F6 |
| `1K` | Tornado Low Kick | L | 20 | 18 | -14 | -2 | KND | 1 | 16 damage and -6 on tip hit |  |
| `1(K)` | Tornado Low Kick | L | 36 | 30 | -6 | KND | KND | 4 | [LH] after opponent misses a [GI] |  |
| `4K` | Rising Temple | H | 14 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[4-10] | F6 |
| `9K` | Holy Crest Kick | M | 22 | 18 | -6 | 6 | 6 | 2 | Tech Jump[8-32] |  |

## Multi Attacks  (23)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Elk Strike | M | 38 | 35 | 8 | KND | KND | 15 | [LH] versus GI/RE. Tech Crouch[9-39] | F6 |
| `6A+B` | El Fortune |  | 4 |  |  |  |  |  | [GI] [4-12] vs mids | F2 |
| `6A+B` | Spinning Hilt | H |  | 10 |  | LNC |  |  | [GI] [4-12] vs mid horizontals | F2 F3 |
| `6A+BAK` | Guardian's Judgment | MMM |  | 20,11,28 |  | KND |  |  | [GI] [4-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `6A+B` | Tornado High Kick | H |  | 18 |  | LNC |  |  | [GI] [4-12] vs mid kicks | F2 F3 |
| `3A+B` | El Fortune (synergy) | SM | 4 | 40 |  | KND |  |  | attack comes out on successful GI [GI] [4-14] vs mids | F3 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] versus whiffed throws Tech Crouch[9-20] | F2 F6 |
| `8A+B (on hit)` | Angel Fall | SM | 38 | 40 | -16 | KND | KND | 15 | Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8A+B (on whiff)` | Angel Fall | SM | 38 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8(A)+(B) (on hit)` | Angel Fall | SM | 68 | 60 |  | KND | KND | 0 | [UA]. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F3 F6 |
| `8(A)+(B) (on whiff)` | Angel Fall | SM | 68 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] on whiffed throw. Tech Crouch[9-20] | F2 F6 |
| `B+K` | Temperance Strike | M | 26 | 16 | -12 | 0 | 0 | 9 | Tech Jump[2-14]. Tech Crouch[17-30] | F6 |
| `B+KB` | Temperance Strike | MM | 26 | 16,22 | -20 | KND | KND | 5 | Counter Hit Combo. Tech Jump[2-14]. Tech Crouch[17-30] | F6 F7 |
| `B+KB4` | Temperance Strike | MM |  | 16,22,15 |  | KND | KND |  | Counter Hit Combo +10 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `B+KBB` | Temperance Strike | MM |  | 16,22,15 |  | LNC | LNC |  | Counter Hit Combo +5 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `6B+K` | Quick Strike | M | 18 | 26 | -6 | 2 | KND | 9 | Tech Crouch[8-31] | F6 |
| `8B+K` | Angel Stroke | MM | 30 | 10,10 | -8 | 2 | KND | 14 | Tech Crouch[5-14]. Tech Jump[14-36] | F6 |
| `8B+KA` | Angel Stroke | MML | 30 | 10,10,20 | -16 | KND | KND | 1 | Tech Jump[10-41]. Tech Crouch[43-60] | F6 |
| `8B+KAB` | Angel Stroke | MMLM | 30 | 10,10,20,24 | -2 | KND | KND | 5 | Tech Crouch[1-17] | F6 |
| `8B+KB` | Angel Fall | MMM | 30 | 10,10,40 | 2 | KND | KND | 10 | Tech Crouch[3-14]. Tech Jump[18-51]. Tech Crouch[51-67] | F6 |
| `8B+KK` | Angel's Sault | MMM | 30 | 10,10,22 | -20 | KND | KND |  | Launcher on airborne opponent. Normal Hit Combo. Tech Crouch[5-10]. Tech Jump[13-45]. Tech Crouch[43-59] | F6 |
| `4B+K` | Heaven's Gate | M | 64 | 40 | LNC | LNC | LNC |  | [UA], cancel with G. Tech Jump[55-73] |  |

## Throws  (6)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Widow Maker | H | 18 | 40 | 6 | 6 | 6 |  | [TH] |  |
| `A+G(2)` | Widow Maker | H | 18 | 35 | KND | KND | KND |  | [TH] | F4 |
| `4A+G` | Holy Cracker | H | 18 | 40 | KND | KND | KND |  | [TH] | F4 |
| `4A+GA` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `4A+G4A` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `66A+G` | Heaven's Arch | H | 18 | 55 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 F5 |

## Run Attacks  (24)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Silent Cross | M | 18 | 20 | -12 | 6 | 6 | 4 | Tech Crouch[6-20] | F5 F6 |
| `[2]A` | Shield Rush | H | 20 | 28 | -6 | KND | KND | 4 |  | F5 |
| `[8]A` | Inverse Shield Rush | H | 20 | 28 | -6 | KND | KND | 4 |  | F5 |
| `44A` | Reverse Mirage | M | 24 | 20 | -6 | 4 | LNC | 4 | On CH, damage changes to 24,18. Tech Crouch[15-20] | F5 F6 |
| `44A6` | Reverse Mirage ~ Angel Step | M | 24 | 20 | -8 | 2 | LNC | 4 | No stance transition on CH. AS on NH or block. Tech Crouch[15-20] | F5 F6 |
| `11A` | Silent Stream | L | 26 | 14 | -12 | -2 | -2 | 4 | Tech Crouch[13-RC] | F5 F6 |
| `11AA` | Silent Stream | LM | 26 | 14,26 | -14 | KND | KND | 1 | Tech Crouch[0-22]. Tech Jump[28-61] | F5 F6 |
| `11A(A)` | Silent Stream | LM | 26 | 14,40 | KND | KND | KND |  | [UA]. Tech Jump[6-31] | F5 |
| `66B` | Olympus Cannon | M | 23 | 26 | -3 | LNC | LNC | 9 |  | F5 |
| `22B` | Guardian's Judgment | M | 14 | 20 | -26 | KND | KND | 9 | Tech Crouch[3-14]. Tech Jump[16-47]. Tech Crouch[49-59] | F5 F6 |
| `22BA` | Guardian's Judgment | MH | 14 | 10,7 | -22 | KND | KND | 0 | Tech Jump[1-44]. Tech Crouch[45-56] | F5 F6 |
| `22BAK` | Guardian's Judgment | MHM | 14 | 20,7,20 | -60 | KND | KND | 0 | Tech Jump[1-42]. Tech Crouch[45-56] | F5 F6 |
| `44B` | Guardian Upper | M | 22 | 30 | -16 | LNC | LNC | 9 | [LH] post GI. Tech Crouch[5-17] | F5 F6 |
| `66K` | Plasma Blade | M | 16 | 16 | -14 | LNC | LNC | 9 |  | F5 |
| `22K` | Angel Side Kick | M | 16 | 20 | -8 | 4 | 4 | 1 |  | F5 |
| `44K` | Tornado High Kick | H | 28 | 25 | 0 | LNC | LNC | 4 |  | F5 |
| `44kK` | Tornado Feint | M | 46 | 40 | 4 | LNC | LNC | 9 | Tech Crouch[5-25] | F5 F6 |
| `66A+B` | Lodestar Strike | H | 18 | 40 | -7 | KND | KND | 9 | [LH] on run-counter versus backstep | F5 |
| `22A+B` | Ascension | M | 26 | 28 | -14 | LNC | LNC | 15 | Tech Crouch[7-24] | F5 F6 |
| `44A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | Tech Crouch[9-20] [LH] versus whiffed throws | F5 F6 |
| `66B+K` | Jet Stream Rush | M | 22 | 22 | -8 | 0 | 0 | 9 | Tech Crouch[5-21] | F5 F6 |
| `66B+KA` | Jet Stream Rush | MH | 24 | 22,6 | -18 | -2 | LNC | 1 | l | F5 |
| `66B+KAB` | Jet Stream Rush | MHM | 24 | 22,6,16 | -14 | LNC | LNC | 10 | Counter Hit Combo | F5 F7 |
| `[22/44]B+K` | Olympus Shower | M | 26 | 34 | -6 | LNC | LNC | 15 | Can also be done as 44B+K. [LH] when whiff punish | F5 |

## Reversal Edge Attacks  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Holy Resonance | M | 46 | 30 | -8 |  |  |  | [RE] | F3 |
| `(B)+(G)` | Holy Resonance | M | 64 | 40 |  |  |  |  | [BA]. [RE] [6-50] | F3 |

# PART 2 — GATED (72)

## SC  (20)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC 4AB` | Cutlass Empyrean | HM | 18 | 18,33 | 2 | KND | KND | 13 | Normal Hit Combo. [BA] |  |
| `SC BBBB` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,21 | 2 | KND | KND | 10 | [BA] |  |
| `SC BBB(B)` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,64 | 8 | KND | KND | 10 | [BA] |  |
| `SC 2BB` | Guardian Punisher | MM | 16 | 14,26 | -8 | KND | KND | 5 | Counter Hit Combo. Tech Crouch[16-RC] | F6 F7 |
| `SC 2BB4` | Guardian Punisher | MM | 16 | 14,26,55 |  | KND | KND | 7 | Counter Hit Combo Tech Crouch[16-RC] | F1 F3 F6 F7 |
| `SC 2BBB` | Guardian Punisher | MM | 16 | 14,26,40 |  | LNC | LNC | 7 | Counter Hit Combo Tech Crouch[16-RC] | F1 F3 F6 F7 |
| `SC 6A+B` | El Fortune |  | 2 |  |  |  |  |  | [GI] [2-12] vs mids | F2 |
| `SC 6A+B` | Spinning Hilt | H |  | 10 |  | LNC |  |  | [GI] [2-12] vs mid horizontals | F2 F3 |
| `SC 6A+BAK` | Guardian's Judgment | MMMSM |  | 20,11,28,9 |  | KND |  |  | [GI] [2-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `SC 6A+B` | Tornado High Kick | H |  | 18 |  | LNC |  |  | [GI] [2-12] vs mid kicks | F2 F3 |
| `SC 3A+B` | El Fortune (synergy) | SM | 2 | 42 |  | KND |  |  | attack comes out on successful GI [GI] [2-12] vs mids | F3 |
| `SC 4A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] versus whiffed throws |  |
| `SC 4A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] versus whiffed throws |  |
| `SC B+KB` | Temporal Punisher | MM | 26 | 16,26 | -8 | KND | KND | 12 | Counter Hit Combo | F7 |
| `SC B+KB4` | Temporal Punisher | MM |  | 16,26,55 |  | KND | KND |  | Counter Hit Combo | F1 F3 F7 |
| `SC B+KBB` | Temporal Punisher | MM |  | 16,26,40 |  | LNC | LNC |  | Counter Hit Combo | F1 F3 F7 |
| `SC 44A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] | F5 |
| `SC 44A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] | F5 |
| `SC 44AB` | Mirage Cross | MM | 24 | 21,35 | 4 | LNC | LNC | 10 | [BA]. Tech Crouch[0-25] | F5 F6 |
| `SC 22BAK` | Judgment Spark | MMMSM | 14 | 21,7,22,9 | -2 | KND | LNC | 25 | Tech Crouch[3-14]. Tech Jump. | F5 F6 |

## FC  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `FC B` | Guardian Strike | M | 16 | 14 | -10 | 0 | 4 | 2 | Tech Crouch[0-6]. Tech Crouch[16-RC] | F6 |
| `FC BB` | Guardian Strike | MM | 16 | 14 | -20 | KND | KND | 7 |  | F1 |
| `FC BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `FC 3B` | Under Splash | M | 16 | 18 | -8 | 2 | 2 | 2 | Tech Crouch[0-4]. Tech Crouch[18-RC] | F6 |
| `FC K` | Spring Under Kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `FC 1K` | Elysium Kick | L | 18 | 16 | -12 | 2 | 2 | 1 | Tech Crouch[0-10] | F6 |

## BT  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Turning Slide Blade | H | 14 | 12 | -4 | 6 | 6 | 2 |  |  |
| `BT 2A` | Under Slide Blade | SL | 16 | 14 | -4 | 6 | 6 | 1 | Tech Crouch[11-RC] | F6 |
| `BT B` | Turning Sword Splash | M | 16 | 18 | -8 | 6 | 6 | 2 |  |  |
| `BT 2B` | Turning Under Splash | M | 18 | 20 | -6 | 4 | 4 | 2 | Tech Crouch[13-RC] | F6 |
| `BT K` | Turning Holy High Kick | H | 16 | 18 | -4 | 2 | 2 | 5 |  |  |
| `BT 2K` | Turning Angel Sweep | L | 18 | 16 | -14 | -2 | -2 | 5 | Tech Crouch[13-RC] | F6 |
| `BT B+K` | Hip Charge | M | 16 | 24 | -8 | 8 | 14 | 15 | Tech Jump[16-29] |  |

## AS  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AS A` | Angel Satellite | M | 18 | 22 | -18 | KND | KND | 3 | Tech Crouch[3-19]. Tech Jump[21-48] | F6 |
| `AS AA` | Angel Satellite | ML | 18 | 22,18 | -14 | KND | KND | 2 | Tech Jump[0-29]. Tech Crouch[33-59] | F6 |
| `AS B` | Angel's Strike | M | 14 | 30 | -20 | -6 | KND | 2 | +6 damage on exact timing. Tech Crouch[4-22] | F6 |
| `AS B4 (on hit)` | Painful Fate | M | 14 | 30,15 |  | KND | KND |  | +10 dmg on exact timing. Normal Hit Combo | F1 F3 |
| `AS BB` | Heaven's Rapture | M | 14 | 30,15 |  | KND | KND |  | +5 damage on exact timing. Normal Hit Combo | F1 F3 |
| `AS K` | Holy Arrow Kick | H | 16 | 20 | -6 | KND | KND | 9 | [LH] versus H attacks except [TH] |  |
| `AS A+B` | Angelic Retribution | MM | 16 | 14,18 | -6 | 2 | 2 | 4 | Tech Crouch[4-11]. Tech Jump[17-68]. Tech Crouch [70-92] | F6 |

## TAS  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `TAS A` | Seraphim Blade | M | 18 | 18 | -14 | -4 | KND | 1 | Tech Crouch[3-33] | F6 |
| `TAS AA` | Seraphim Blade | ML | 18 | 18,18 | -12 | 6 | STN | 2 | Tech Crouch[0-RC] | F6 |
| `TAS AB` | Seraphim Echo | MM | 20 | 18,35 | 4 | KND | KND | 12 | [BA]. [LH] on impact counter |  |
| `TAS B` | Seraphim Strike | M | 16 | 35 | -14 | STN | STN | 9 | [LH] versus whiffed horizontals (except kicks) |  |
| `TAS B4` | Painful Fate | M | 16 | 35,21 |  | KND | KND |  | +7 damage on exact timing. | F1 F3 |
| `TAS BB` | Heaven's Rapture | M | 16 | 35,14 |  | KND | KND |  | +7 damage on exact timing | F1 F3 |
| `TAS K` | Tornado Feint | M | 34 | 30 | 4 | KND | KND | 9 | Tech Crouch[0-25] | F6 |

## SC AS  (6)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC AS AAB` | Sun's Corona | MLM | 18 | 23,19,13 | 4 | KND | KND | 15 | [BA]. Normal Hit Combo |  |
| `SC AS B` | Angel's Punisher | M | 14 | 37 | -20 | KND | KND | 9 |  |  |
| `SC AS B4` | Painful Fate | M | 14 | 37,35 |  | KND | KND |  |  | F1 F3 |
| `SC AS BB` | Heaven's Rapture | M | 14 | 37,30 |  | LNC | LNC |  |  | F1 F3 |
| `SC AS A+B` | Seraphim Castigation | MMSM | 16 | 14,18,19 | 2 | KND | KND | 10 | Normal Hit Combo. [BA] |  |
| `SC AS B+K` | Archangel Strike | M | 14 | 42 | -4 | KND | KND | 9 | Tech Crouch[4-22] | F6 |

## WR  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `WR A` | Full Turn Blade | M | 16 | 18 | -10 | 4 | 4 | 1 | Tech Crouch[0-10] | F6 |
| `WR B` | Exile | M | 14 | 20 | -6 | 4 | 4 | 2 | Tech Crouch[0-14] | F6 |
| `WR K` | Angel's Spring | MM | 16 | 20 | -2 | 8 | 8 | 4 | Tech Crouch[0-12] | F1 F6 |
| `WR B+K` | Dawn of Eos | HM | 12 | 12,18 | -6 | KND | KND | 4 | Normal Hit Combo. Launcher on airborne opponent |  |

## RE  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RE A` | Celestial Blade | H |  | 20 | -4 | 8 | 8 | 33 | [LH] as initiator 2nd round |  |
| `RE A6` | Celestial Blade ~ Angel Step | H |  | 20 | 6 | STN | STN | 33 | [SS] intoAS [LH] as initiator 2nd | F4 |
| `RE B` | Angel Vanguard | M |  | 21 | STN | LNC | LNC | 50 | Will always [GC] on 2nd round as initiator. [LH] as initiator 2nd round |  |
| `RE K` | Spiritual Spin Kick | M |  | 10 | -2 | KND | KND | 33 | [LH] as initiator 2nd round |  |

## METER  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `METER A+B+K` | Providential Thunder | M | 16 | 80 | -16 | KND | KND | 8 |  |  |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `METER 236A+B+K` | Zeus's Fulmination | M | 16 | 39 | 0 | 8 | 8 | 9 |  |  |

## SC TAS  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC TAS B` | Seraphim Punisher | M | 14 | 42 | -8 | STN | STN | 9 | Tech Crouch[0-22] [LH]  versus whiffed horizontals (except kicks) | F6 |
| `SC TAS B4` | Painful Fate | M | 16 | 42,38 |  | KND | KND |  |  | F1 F3 |
| `SC TAS BB` | Heaven's Rapture | M | 16 | 42,28 |  | KND | KND |  |  | F1 F3 |

## SIDE-L  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-L A+G` | Round Knocker | H | 18 | 50 | KND | KND | KND |  | [TH] Restores guard stamina upon landing | F4 F5 |

## SIDE-R  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-R A+G` | Broken Promise | H | 18 | 70 | KND | KND | KND |  | [TH] | F4 F5 |

## BACK  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BACK A+G` | Bottoms Up | H | 18 | 50 | KND | KND | KND |  | [TH] | F4 F5 |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding | L | 20 | 25 | -20 | KND | KND | 2 | Tech Crouch[11-46] | F6 |

# PART 3 — DERIVED INDEXES

> Derived mechanically from the raw fields. **Inherits every ⚑ flag.** Not lab-verified.

## Branch points (2+ follow-ups)

> Children are options chosen **before** the next input, not a guaranteed sequence. Same prefix only.

| Node | Children (Lvl i Blk/Hit) | n |
|---|---|---|
| `8B+K` | `8B+KA` MML 30 -16/KND · `8B+KB` MMM 30 2/KND · `8B+KK` MMM 30 -20/KND | 3 |
| `2B` | `2BB` MM 16 -20/10 · `2BK` MH 16 -12/10 | 2 |
| `2BB` | `2BB4` MM 16 /KND · `2BBB` MM 16 /LNC | 2 |
| `4(A)` | `4(A)AAA` HLML 38 -16/KND · `4(A)B` HM 38 -12/KND | 2 |
| `4A` | `4AA` HL 18 -16/KND · `4AB` HM 18 -12/KND | 2 |
| `4A+G` | `4A+GA` H 18 KND/KND · `4A+G4A` H 18 KND/KND | 2 |
| `6B` | `6BA` MM 20 -12/10 · `6BB` MM 20 -8/4 | 2 |
| `A` | `AA` HH 12 -8/2 · `AK` HL 12 -14/0 | 2 |
| `B` | `BB` MM 14 -8/2 · `BK` MH 14 -6/2 | 2 |
| `B+KB` | `B+KB4` MM  /KND · `B+KBB` MM  /LNC | 2 |
| `FC B` | `FC BB` MM 16 -20/KND · `FC BK` MH 16 -12/10 | 2 |
| `SC 2BB` | `SC 2BB4` MM 16 /KND · `SC 2BBB` MM 16 /LNC | 2 |
| `SC AS B` | `SC AS B4` M 14 /KND · `SC AS BB` M 14 /LNC | 2 |
| `SC B+KB` | `SC B+KB4` MM  /KND · `SC B+KBB` MM  /LNC | 2 |
| `SC TAS B` | `SC TAS B4` M 16 /KND · `SC TAS BB` M 16 /KND | 2 |
| `TAS A` | `TAS AA` ML 18 -12/6 · `TAS AB` MM 20 4/KND | 2 |
| `TAS B` | `TAS B4` M 16 /KND · `TAS BB` M 16 /KND | 2 |

## Plus or neutral on BLOCK  (20)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Elk Strike | M | 38 | 35 | 8 | KND | KND | 15 | [LH] versus GI/RE. Tech Crouch[9-39] | F6 |
| `SC BBB(B)` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,64 | 8 | KND | KND | 10 | [BA] |  |
| `SC 4A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] versus whiffed throws |  |
| `SC 44A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] | F5 |
| `A+G` | Widow Maker | H | 18 | 40 | 6 | 6 | 6 |  | [TH] |  |
| `RE A6` | Celestial Blade ~ Angel Step | H |  | 20 | 6 | STN | STN | 33 | [SS] intoAS [LH] as initiator 2nd | F4 |
| `44kK` | Tornado Feint | M | 46 | 40 | 4 | LNC | LNC | 9 | Tech Crouch[5-25] | F5 F6 |
| `TAS AB` | Seraphim Echo | MM | 20 | 18,35 | 4 | KND | KND | 12 | [BA]. [LH] on impact counter |  |
| `TAS K` | Tornado Feint | M | 34 | 30 | 4 | KND | KND | 9 | Tech Crouch[0-25] | F6 |
| `SC 44AB` | Mirage Cross | MM | 24 | 21,35 | 4 | LNC | LNC | 10 | [BA]. Tech Crouch[0-25] | F5 F6 |
| `SC AS AAB` | Sun's Corona | MLM | 18 | 23,19,13 | 4 | KND | KND | 15 | [BA]. Normal Hit Combo |  |
| `8B+KB` | Angel Fall | MMM | 30 | 10,10,40 | 2 | KND | KND | 10 | Tech Crouch[3-14]. Tech Jump[18-51]. Tech Crouch[51-67] | F6 |
| `SC 4AB` | Cutlass Empyrean | HM | 18 | 18,33 | 2 | KND | KND | 13 | Normal Hit Combo. [BA] |  |
| `SC BBBB` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,21 | 2 | KND | KND | 10 | [BA] |  |
| `SC 4A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] versus whiffed throws |  |
| `SC 44A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] | F5 |
| `SC AS A+B` | Seraphim Castigation | MMSM | 16 | 14,18,19 | 2 | KND | KND | 10 | Normal Hit Combo. [BA] |  |
| `44K` | Tornado High Kick | H | 28 | 25 | 0 | LNC | LNC | 4 |  | F5 |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `METER 236A+B+K` | Zeus's Fulmination | M | 16 | 39 | 0 | 8 | 8 | 9 |  |  |

## Fast (i ≤ 14) — neutral, no meter  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `6A+B` | El Fortune |  | 4 |  |  |  |  |  | [GI] [4-12] vs mids | F2 |
| `3A+B` | El Fortune (synergy) | SM | 4 | 40 |  | KND |  |  | attack comes out on successful GI [GI] [4-14] vs mids | F3 |
| `A` | Starlight Blade | H | 12 | 8 | -8 | 2 | 2 | 1 |  |  |
| `AA` | Starlight Blade | HH | 12 | 8,10 | -8 | 2 | 2 | 2 | Normal Hit Combo |  |
| `AAA` | Starlight Blade | HHH | 12 | 8,10,25 | -4 | 6 | 6 | 2 |  |  |
| `AAA6` | Starlight Blade ~ Angel Step | HHH | 12 | 8,10,25 | -2 | 8 | 8 | 2 | Tech Crouch[4-RC]. AS | F6 |
| `AK` | Slide Tornado | HL | 12 | 8,10 | -14 | 0 | 0 | 1 | Normal Hit Combo |  |
| `2A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[8-RC] | F6 |
| `K` | Kick Duo | H | 12 | 14 | -10 | -2 | -2 | 1 |  |  |
| `KK` | Kick Duo | HM | 12 | 14,10 | -6 | 2 | 2 | 2 | Normal Hit Combo |  |
| `3K` | Flapping Heel Kick | M | 13 | 14 | -7 | 3 | 3 | 2 |  |  |
| `B` | Divine Mist | M | 14 | 12 | -6 | 0 | 0 | 2 |  |  |
| `BB` | Divine Mist | MM | 14 | 12,14 | -8 | 2 | 2 | 2 | Normal Hit Combo |  |
| `BBB` | Divine Mist | MMMM | 14 | 12,14,14,16 | -6 | KND | KND | 6 | Tech Crouch[9-20] | F6 |
| `BK` | Angel's Flow | MH | 14 | 12,18 | -6 | 2 | 2 | 2 |  |  |
| `4K` | Rising Temple | H | 14 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[4-10] | F6 |
| `22B` | Guardian's Judgment | M | 14 | 20 | -26 | KND | KND | 9 | Tech Crouch[3-14]. Tech Jump[16-47]. Tech Crouch[49-59] | F5 F6 |
| `22BA` | Guardian's Judgment | MH | 14 | 10,7 | -22 | KND | KND | 0 | Tech Jump[1-44]. Tech Crouch[45-56] | F5 F6 |
| `22BAK` | Guardian's Judgment | MHM | 14 | 20,7,20 | -60 | KND | KND | 0 | Tech Jump[1-42]. Tech Crouch[45-56] | F5 F6 |

## ⭐ Fast-and-safe (i ≤ 16, blk ≥ -6) — neutral, no meter  (9)

> Key beginner metric (`../99-data-sources.md`).

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAA` | Starlight Blade | HHH | 12 | 8,10,25 | -4 | 6 | 6 | 2 |  |  |
| `AAA6` | Starlight Blade ~ Angel Step | HHH | 12 | 8,10,25 | -2 | 8 | 8 | 2 | Tech Crouch[4-RC]. AS | F6 |
| `2A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[8-RC] | F6 |
| `KK` | Kick Duo | HM | 12 | 14,10 | -6 | 2 | 2 | 2 | Normal Hit Combo |  |
| `B` | Divine Mist | M | 14 | 12 | -6 | 0 | 0 | 2 |  |  |
| `BBB` | Divine Mist | MMMM | 14 | 12,14,14,16 | -6 | KND | KND | 6 | Tech Crouch[9-20] | F6 |
| `BK` | Angel's Flow | MH | 14 | 12,18 | -6 | 2 | 2 | 2 |  |  |
| `4K` | Rising Temple | H | 14 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[4-10] | F6 |
| `6K` | Holy Punishment | M | 16 | 20 | -6 | 6 | KND | 2 |  |  |

## Punishable on block (≤ -10), neutral only  (41)

> What **she** gets punished for. Sorted worst first.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `22BAK` | Guardian's Judgment | MHM | 14 | 20,7,20 | -60 | KND | KND | 0 | Tech Jump[1-42]. Tech Crouch[45-56] | F5 F6 |
| `22B` | Guardian's Judgment | M | 14 | 20 | -26 | KND | KND | 9 | Tech Crouch[3-14]. Tech Jump[16-47]. Tech Crouch[49-59] | F5 F6 |
| `4AAA` | Cutlass Europa | HLM | 18 | 18,15,25 | -24 | KND | KND | 2 | delayable |  |
| `22BA` | Guardian's Judgment | MH | 14 | 10,7 | -22 | KND | KND | 0 | Tech Jump[1-44]. Tech Crouch[45-56] | F5 F6 |
| `2BB` | Guardian Strike | MM | 16 | 14,22 | -20 | 10 | 10 | 7 | Tech Crouch[16-RC] | F6 |
| `B+KB` | Temperance Strike | MM | 26 | 16,22 | -20 | KND | KND | 5 | Counter Hit Combo. Tech Jump[2-14]. Tech Crouch[17-30] | F6 F7 |
| `8B+KK` | Angel's Sault | MMM | 30 | 10,10,22 | -20 | KND | KND |  | Launcher on airborne opponent. Normal Hit Combo. Tech Crouch[5-10]. Tech Jump[13-45]. Tech Crouch[43-59] | F6 |
| `66B+KA` | Jet Stream Rush | MH | 24 | 22,6 | -18 | -2 | LNC | 1 | l | F5 |
| `1A` | Iron Butterfly | L | 32 | 15 | -16 | -6 | KND | 4 | Tech Crouch[10-RC] | F6 |
| `4AA` | Cutlass Europa | HL | 18 | 18,15 | -16 | KND | KND | 2 | delayable |  |
| `4(A)AAA` | Cutlass Europa | HLML | 38 | 30,15,15,13 | -16 | KND | KND | 2 | delayable. Normal Hit Combo |  |
| `8A+B (on hit)` | Angel Fall | SM | 38 | 40 | -16 | KND | KND | 15 | Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8A+B (on whiff)` | Angel Fall | SM | 38 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8(A)+(B) (on whiff)` | Angel Fall | SM | 68 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8B+KA` | Angel Stroke | MML | 30 | 10,10,20 | -16 | KND | KND | 1 | Tech Jump[10-41]. Tech Crouch[43-60] | F6 |
| `44B` | Guardian Upper | M | 22 | 30 | -16 | LNC | LNC | 9 | [LH] post GI. Tech Crouch[5-17] | F5 F6 |
| `AK` | Slide Tornado | HL | 12 | 8,10 | -14 | 0 | 0 | 1 | Normal Hit Combo |  |
| `3A` | Angel Punisher | M | 18 | 22 | -14 | -2 | -2 | 1 | Tech Crouch[9-35] | F6 |
| `1AA` | Iron Butterfly | LM | 32 | 15,25 | -14 | 6 | KND | 1 | Normal Hit Combo |  |
| `3B` | Paladin Purifier | M | 20 | 22 | -14 | LNC | LNC | 9 | Tech Crouch[8-17] | F6 |
| `1B` | Nasty Impale | L | 20 | 10 | -14 | -4 | -4 | 2 |  |  |
| `1BBBB` | Nasty Impale | LLLL | 20 | 10,8,8,8 | -14 | -4 | KND | 7 | Counter Hit Combo | F7 |
| `2K` | Spring Under kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[11-RC] | F6 |
| `1K` | Tornado Low Kick | L | 20 | 18 | -14 | -2 | KND | 1 | 16 damage and -6 on tip hit |  |
| `11AA` | Silent Stream | LM | 26 | 14,26 | -14 | KND | KND | 1 | Tech Crouch[0-22]. Tech Jump[28-61] | F5 F6 |
| `66K` | Plasma Blade | M | 16 | 16 | -14 | LNC | LNC | 9 |  | F5 |
| `22A+B` | Ascension | M | 26 | 28 | -14 | LNC | LNC | 15 | Tech Crouch[7-24] | F5 F6 |
| `66B+KAB` | Jet Stream Rush | MHM | 24 | 22,6,16 | -14 | LNC | LNC | 10 | Counter Hit Combo | F5 F7 |
| `4AB` | Cutlass Seraphim | HM | 18 | 18,20 | -12 | KND | KND | 6 | delayable. Normal Hit Combo |  |
| `4(A)B` | Cutlass Seraphim | HM | 38 | 30,28 | -12 | KND | KND | 6 | delayable Normal Hit Combo |  |
| `6BA` | Ascetic's Force | MM | 20 | 14,24 | -12 | 10 | 210 | 2 | Opponent is BT on hit |  |
| `6bA` | Ascetic's Blade | M | 44 | 24 | -12 | 4 | 4 | 4 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `2BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `B+K` | Temperance Strike | M | 26 | 16 | -12 | 0 | 0 | 9 | Tech Jump[2-14]. Tech Crouch[17-30] | F6 |
| `66A` | Silent Cross | M | 18 | 20 | -12 | 6 | 6 | 4 | Tech Crouch[6-20] | F5 F6 |
| `11A` | Silent Stream | L | 26 | 14 | -12 | -2 | -2 | 4 | Tech Crouch[13-RC] | F5 F6 |
| `6AA` | Roaring Stream | HL | 22 | 12,18 | -10 | -2 | -2 | 2 | Normal Hit Combo. Tech Crouch[6-14] | F6 |
| `4A` | Cutlass Europa | H | 18 | 18 | -10 | 4 | 4 | 1 | Tech Crouch[8-12] | F6 |
| `6B` | Ascetic's Force | M | 20 | 14 | -10 | -2 | 4 | 2 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `2B` | Guardian Strike | M | 16 | 14 | -10 | 0 | 4 | 2 | Tech Crouch[16-RC] | F6 |
| `K` | Kick Duo | H | 12 | 14 | -10 | -2 | -2 | 1 |  |  |

## Lows (true `L`, any hit)  (25)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AK` | Slide Tornado | HL | 12 | 8,10 | -14 | 0 | 0 | 1 | Normal Hit Combo |  |
| `2K` | Spring Under kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[11-RC] | F6 |
| `4AA` | Cutlass Europa | HL | 18 | 18,15 | -16 | KND | KND | 2 | delayable |  |
| `4AAA` | Cutlass Europa | HLM | 18 | 18,15,25 | -24 | KND | KND | 2 | delayable |  |
| `1B` | Nasty Impale | L | 20 | 10 | -14 | -4 | -4 | 2 |  |  |
| `1BBBB` | Nasty Impale | LLLL | 20 | 10,8,8,8 | -14 | -4 | KND | 7 | Counter Hit Combo | F7 |
| `1K` | Tornado Low Kick | L | 20 | 18 | -14 | -2 | KND | 1 | 16 damage and -6 on tip hit |  |
| `6AA` | Roaring Stream | HL | 22 | 12,18 | -10 | -2 | -2 | 2 | Normal Hit Combo. Tech Crouch[6-14] | F6 |
| `6AA6` | Roaring Stream ~ Angel Step | HL | 22 | 12,18 | -2 | 6 | 6 | 2 | Normal Hit Combo. Tech Crouch[6-14]. [SS] into AS | F6 |
| `11A` | Silent Stream | L | 26 | 14 | -12 | -2 | -2 | 4 | Tech Crouch[13-RC] | F5 F6 |
| `11AA` | Silent Stream | LM | 26 | 14,26 | -14 | KND | KND | 1 | Tech Crouch[0-22]. Tech Jump[28-61] | F5 F6 |
| `11A(A)` | Silent Stream | LM | 26 | 14,40 | KND | KND | KND |  | [UA]. Tech Jump[6-31] | F5 |
| `8B+KA` | Angel Stroke | MML | 30 | 10,10,20 | -16 | KND | KND | 1 | Tech Jump[10-41]. Tech Crouch[43-60] | F6 |
| `8B+KAB` | Angel Stroke | MMLM | 30 | 10,10,20,24 | -2 | KND | KND | 5 | Tech Crouch[1-17] | F6 |
| `1A` | Iron Butterfly | L | 32 | 15 | -16 | -6 | KND | 4 | Tech Crouch[10-RC] | F6 |
| `1AA` | Iron Butterfly | LM | 32 | 15,25 | -14 | 6 | KND | 1 | Normal Hit Combo |  |
| `1(K)` | Tornado Low Kick | L | 36 | 30 | -6 | KND | KND | 4 | [LH] after opponent misses a [GI] |  |
| `4(A)AAA` | Cutlass Europa | HLML | 38 | 30,15,15,13 | -16 | KND | KND | 2 | delayable. Normal Hit Combo |  |
| `FC K` | Spring Under Kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `FC 1K` | Elysium Kick | L | 18 | 16 | -12 | 2 | 2 | 1 | Tech Crouch[0-10] | F6 |
| `BT 2K` | Turning Angel Sweep | L | 18 | 16 | -14 | -2 | -2 | 5 | Tech Crouch[13-RC] | F6 |
| `AS AA` | Angel Satellite | ML | 18 | 22,18 | -14 | KND | KND | 2 | Tech Jump[0-29]. Tech Crouch[33-59] | F6 |
| `TAS AA` | Seraphim Blade | ML | 18 | 18,18 | -12 | 6 | STN | 2 | Tech Crouch[0-RC] | F6 |
| `SC AS AAB` | Sun's Corona | MLM | 18 | 23,19,13 | 4 | KND | KND | 15 | [BA]. Normal Hit Combo |  |
| `RUN K` | Sliding | L | 20 | 25 | -20 | KND | KND | 2 | Tech Crouch[11-46] | F6 |

## Special lows / mids (`SL` / `SM`)  (12)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `2A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[8-RC] | F6 |
| `FC A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `BT 2A` | Under Slide Blade | SL | 16 | 14 | -4 | 6 | 6 | 1 | Tech Crouch[11-RC] | F6 |
| `3A+B` | El Fortune (synergy) | SM | 4 | 40 |  | KND |  |  | attack comes out on successful GI [GI] [4-14] vs mids | F3 |
| `8A+B (on hit)` | Angel Fall | SM | 38 | 40 | -16 | KND | KND | 15 | Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8A+B (on whiff)` | Angel Fall | SM | 38 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8(A)+(B) (on hit)` | Angel Fall | SM | 68 | 60 |  | KND | KND | 0 | [UA]. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F3 F6 |
| `8(A)+(B) (on whiff)` | Angel Fall | SM | 68 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `SC 6A+BAK` | Guardian's Judgment | MMMSM |  | 20,11,28,9 |  | KND |  |  | [GI] [2-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `SC 3A+B` | El Fortune (synergy) | SM | 2 | 42 |  | KND |  |  | attack comes out on successful GI [GI] [2-12] vs mids | F3 |
| `SC 22BAK` | Judgment Spark | MMMSM | 14 | 21,7,22,9 | -2 | KND | LNC | 25 | Tech Crouch[3-14]. Tech Jump. | F5 F6 |
| `SC AS A+B` | Seraphim Castigation | MMSM | 16 | 14,18,19 | 2 | KND | KND | 10 | Normal Hit Combo. [BA] |  |

## Launchers / knockdowns / stuns (on normal hit)  (69)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `3A+B` | El Fortune (synergy) | SM | 4 | 40 |  | KND |  |  | attack comes out on successful GI [GI] [4-14] vs mids | F3 |
| `BBB` | Divine Mist | MMMM | 14 | 12,14,14,16 | -6 | KND | KND | 6 | Tech Crouch[9-20] | F6 |
| `22B` | Guardian's Judgment | M | 14 | 20 | -26 | KND | KND | 9 | Tech Crouch[3-14]. Tech Jump[16-47]. Tech Crouch[49-59] | F5 F6 |
| `22BA` | Guardian's Judgment | MH | 14 | 10,7 | -22 | KND | KND | 0 | Tech Jump[1-44]. Tech Crouch[45-56] | F5 F6 |
| `22BAK` | Guardian's Judgment | MHM | 14 | 20,7,20 | -60 | KND | KND | 0 | Tech Jump[1-42]. Tech Crouch[45-56] | F5 F6 |
| `2BB4` | Guardian Strike | MM | 16 | 14,22,15 |  | KND | KND | 7 | Tech Crouch[16-RC] +10 damage with exact timing | F1 F3 F6 |
| `2BBB` | Guardian Strike | MM | 16 | 14,22,15 |  | LNC | LNC | 7 | Tech Crouch[16-RC] +5 damage with exact timing | F1 F3 F6 |
| `66K` | Plasma Blade | M | 16 | 16 | -14 | LNC | LNC | 9 |  | F5 |
| `4AA` | Cutlass Europa | HL | 18 | 18,15 | -16 | KND | KND | 2 | delayable |  |
| `4AAA` | Cutlass Europa | HLM | 18 | 18,15,25 | -24 | KND | KND | 2 | delayable |  |
| `4AB` | Cutlass Seraphim | HM | 18 | 18,20 | -12 | KND | KND | 6 | delayable. Normal Hit Combo |  |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] versus whiffed throws Tech Crouch[9-20] | F2 F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] on whiffed throw. Tech Crouch[9-20] | F2 F6 |
| `A+G(2)` | Widow Maker | H | 18 | 35 | KND | KND | KND |  | [TH] | F4 |
| `4A+G` | Holy Cracker | H | 18 | 40 | KND | KND | KND |  | [TH] | F4 |
| `4A+GA` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `4A+G4A` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `66A+G` | Heaven's Arch | H | 18 | 55 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 F5 |
| `66A+B` | Lodestar Strike | H | 18 | 40 | -7 | KND | KND | 9 | [LH] on run-counter versus backstep | F5 |
| `44A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | Tech Crouch[9-20] [LH] versus whiffed throws | F5 F6 |
| `3B` | Paladin Purifier | M | 20 | 22 | -14 | LNC | LNC | 9 | Tech Crouch[8-17] | F6 |
| `[2]A` | Shield Rush | H | 20 | 28 | -6 | KND | KND | 4 |  | F5 |
| `[8]A` | Inverse Shield Rush | H | 20 | 28 | -6 | KND | KND | 4 |  | F5 |
| `44B` | Guardian Upper | M | 22 | 30 | -16 | LNC | LNC | 9 | [LH] post GI. Tech Crouch[5-17] | F5 F6 |
| `66B` | Olympus Cannon | M | 23 | 26 | -3 | LNC | LNC | 9 |  | F5 |
| `9A` | Jumping Mirage Satellite | H | 24 | 35 | -8 | KND | KND | 4 | Tech Jump[7-32] |  |
| `66B+KAB` | Jet Stream Rush | MHM | 24 | 22,6,16 | -14 | LNC | LNC | 10 | Counter Hit Combo | F5 F7 |
| `B+KB` | Temperance Strike | MM | 26 | 16,22 | -20 | KND | KND | 5 | Counter Hit Combo. Tech Jump[2-14]. Tech Crouch[17-30] | F6 F7 |
| `11AA` | Silent Stream | LM | 26 | 14,26 | -14 | KND | KND | 1 | Tech Crouch[0-22]. Tech Jump[28-61] | F5 F6 |
| `11A(A)` | Silent Stream | LM | 26 | 14,40 | KND | KND | KND |  | [UA]. Tech Jump[6-31] | F5 |
| `22A+B` | Ascension | M | 26 | 28 | -14 | LNC | LNC | 15 | Tech Crouch[7-24] | F5 F6 |
| `[22/44]B+K` | Olympus Shower | M | 26 | 34 | -6 | LNC | LNC | 15 | Can also be done as 44B+K. [LH] when whiff punish | F5 |
| `44K` | Tornado High Kick | H | 28 | 25 | 0 | LNC | LNC | 4 |  | F5 |
| `8B+KA` | Angel Stroke | MML | 30 | 10,10,20 | -16 | KND | KND | 1 | Tech Jump[10-41]. Tech Crouch[43-60] | F6 |
| `8B+KAB` | Angel Stroke | MMLM | 30 | 10,10,20,24 | -2 | KND | KND | 5 | Tech Crouch[1-17] | F6 |
| `8B+KB` | Angel Fall | MMM | 30 | 10,10,40 | 2 | KND | KND | 10 | Tech Crouch[3-14]. Tech Jump[18-51]. Tech Crouch[51-67] | F6 |
| `8B+KK` | Angel's Sault | MMM | 30 | 10,10,22 | -20 | KND | KND |  | Launcher on airborne opponent. Normal Hit Combo. Tech Crouch[5-10]. Tech Jump[13-45]. Tech Crouch[43-59] | F6 |
| `1(K)` | Tornado Low Kick | L | 36 | 30 | -6 | KND | KND | 4 | [LH] after opponent misses a [GI] |  |
| `4(A)AAA` | Cutlass Europa | HLML | 38 | 30,15,15,13 | -16 | KND | KND | 2 | delayable. Normal Hit Combo |  |
| `4(A)B` | Cutlass Seraphim | HM | 38 | 30,28 | -12 | KND | KND | 6 | delayable Normal Hit Combo |  |
| `A+B` | Elk Strike | M | 38 | 35 | 8 | KND | KND | 15 | [LH] versus GI/RE. Tech Crouch[9-39] | F6 |
| `8A+B (on hit)` | Angel Fall | SM | 38 | 40 | -16 | KND | KND | 15 | Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `44kK` | Tornado Feint | M | 46 | 40 | 4 | LNC | LNC | 9 | Tech Crouch[5-25] | F5 F6 |
| `4B+K` | Heaven's Gate | M | 64 | 40 | LNC | LNC | LNC |  | [UA], cancel with G. Tech Jump[55-73] |  |
| `8(A)+(B) (on hit)` | Angel Fall | SM | 68 | 60 |  | KND | KND | 0 | [UA]. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F3 F6 |
| `6A+B` | Spinning Hilt | H |  | 10 |  | LNC |  |  | [GI] [4-12] vs mid horizontals | F2 F3 |
| `6A+BAK` | Guardian's Judgment | MMM |  | 20,11,28 |  | KND |  |  | [GI] [4-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `6A+B` | Tornado High Kick | H |  | 18 |  | LNC |  |  | [GI] [4-12] vs mid kicks | F2 F3 |
| `B+KB4` | Temperance Strike | MM |  | 16,22,15 |  | KND | KND |  | Counter Hit Combo +10 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `B+KBB` | Temperance Strike | MM |  | 16,22,15 |  | LNC | LNC |  | Counter Hit Combo +5 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `WR B+K` | Dawn of Eos | HM | 12 | 12,18 | -6 | KND | KND | 4 | Normal Hit Combo. Launcher on airborne opponent |  |
| `AS B4 (on hit)` | Painful Fate | M | 14 | 30,15 |  | KND | KND |  | +10 dmg on exact timing. Normal Hit Combo | F1 F3 |
| `AS BB` | Heaven's Rapture | M | 14 | 30,15 |  | KND | KND |  | +5 damage on exact timing. Normal Hit Combo | F1 F3 |
| `FC BB` | Guardian Strike | MM | 16 | 14 | -20 | KND | KND | 7 |  | F1 |
| `AS K` | Holy Arrow Kick | H | 16 | 20 | -6 | KND | KND | 9 | [LH] versus H attacks except [TH] |  |
| `TAS B` | Seraphim Strike | M | 16 | 35 | -14 | STN | STN | 9 | [LH] versus whiffed horizontals (except kicks) |  |
| `TAS B4` | Painful Fate | M | 16 | 35,21 |  | KND | KND |  | +7 damage on exact timing. | F1 F3 |
| `TAS BB` | Heaven's Rapture | M | 16 | 35,14 |  | KND | KND |  | +7 damage on exact timing | F1 F3 |
| `SIDE-L A+G` | Round Knocker | H | 18 | 50 | KND | KND | KND |  | [TH] Restores guard stamina upon landing | F4 F5 |
| `SIDE-R A+G` | Broken Promise | H | 18 | 70 | KND | KND | KND |  | [TH] | F4 F5 |
| `BACK A+G` | Bottoms Up | H | 18 | 50 | KND | KND | KND |  | [TH] | F4 F5 |
| `AS A` | Angel Satellite | M | 18 | 22 | -18 | KND | KND | 3 | Tech Crouch[3-19]. Tech Jump[21-48] | F6 |
| `AS AA` | Angel Satellite | ML | 18 | 22,18 | -14 | KND | KND | 2 | Tech Jump[0-29]. Tech Crouch[33-59] | F6 |
| `RUN K` | Sliding | L | 20 | 25 | -20 | KND | KND | 2 | Tech Crouch[11-46] | F6 |
| `TAS AB` | Seraphim Echo | MM | 20 | 18,35 | 4 | KND | KND | 12 | [BA]. [LH] on impact counter |  |
| `TAS K` | Tornado Feint | M | 34 | 30 | 4 | KND | KND | 9 | Tech Crouch[0-25] | F6 |
| `RE A6` | Celestial Blade ~ Angel Step | H |  | 20 | 6 | STN | STN | 33 | [SS] intoAS [LH] as initiator 2nd | F4 |
| `RE B` | Angel Vanguard | M |  | 21 | STN | LNC | LNC | 50 | Will always [GC] on 2nd round as initiator. [LH] as initiator 2nd round |  |
| `RE K` | Spiritual Spin Kick | M |  | 10 | -2 | KND | KND | 33 | [LH] as initiator 2nd round |  |

## Counter-hit upgrades (CH result better than hit)  (14)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `1A` | Iron Butterfly | L | 32 | 15 | -16 | -6 | KND | 4 | Tech Crouch[10-RC] | F6 |
| `1AA` | Iron Butterfly | LM | 32 | 15,25 | -14 | 6 | KND | 1 | Normal Hit Combo |  |
| `1BBBB` | Nasty Impale | LLLL | 20 | 10,8,8,8 | -14 | -4 | KND | 7 | Counter Hit Combo | F7 |
| `6K` | Holy Punishment | M | 16 | 20 | -6 | 6 | KND | 2 |  |  |
| `1K` | Tornado Low Kick | L | 20 | 18 | -14 | -2 | KND | 1 | 16 damage and -6 on tip hit |  |
| `6B+K` | Quick Strike | M | 18 | 26 | -6 | 2 | KND | 9 | Tech Crouch[8-31] | F6 |
| `8B+K` | Angel Stroke | MM | 30 | 10,10 | -8 | 2 | KND | 14 | Tech Crouch[5-14]. Tech Jump[14-36] | F6 |
| `44A` | Reverse Mirage | M | 24 | 20 | -6 | 4 | LNC | 4 | On CH, damage changes to 24,18. Tech Crouch[15-20] | F5 F6 |
| `44A6` | Reverse Mirage ~ Angel Step | M | 24 | 20 | -8 | 2 | LNC | 4 | No stance transition on CH. AS on NH or block. Tech Crouch[15-20] | F5 F6 |
| `66B+KA` | Jet Stream Rush | MH | 24 | 22,6 | -18 | -2 | LNC | 1 | l | F5 |
| `AS B` | Angel's Strike | M | 14 | 30 | -20 | -6 | KND | 2 | +6 damage on exact timing. Tech Crouch[4-22] | F6 |
| `TAS A` | Seraphim Blade | M | 18 | 18 | -14 | -4 | KND | 1 | Tech Crouch[3-33] | F6 |
| `TAS AA` | Seraphim Blade | ML | 18 | 18,18 | -12 | 6 | STN | 2 | Tech Crouch[0-RC] | F6 |
| `SC 22BAK` | Judgment Spark | MMMSM | 14 | 21,7,22,9 | -2 | KND | LNC | 25 | Tech Crouch[3-14]. Tech Jump. | F5 F6 |

## Lethal Hits (ALL)  (25)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `2BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `FC BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `1(K)` | Tornado Low Kick | L | 36 | 30 | -6 | KND | KND | 4 | [LH] after opponent misses a [GI] |  |
| `A+B` | Elk Strike | M | 38 | 35 | 8 | KND | KND | 15 | [LH] versus GI/RE. Tech Crouch[9-39] | F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] versus whiffed throws Tech Crouch[9-20] | F2 F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] on whiffed throw. Tech Crouch[9-20] | F2 F6 |
| `4A+GA` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `4A+G4A` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `66A+G` | Heaven's Arch | H | 18 | 55 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 F5 |
| `44B` | Guardian Upper | M | 22 | 30 | -16 | LNC | LNC | 9 | [LH] post GI. Tech Crouch[5-17] | F5 F6 |
| `66A+B` | Lodestar Strike | H | 18 | 40 | -7 | KND | KND | 9 | [LH] on run-counter versus backstep | F5 |
| `44A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | Tech Crouch[9-20] [LH] versus whiffed throws | F5 F6 |
| `[22/44]B+K` | Olympus Shower | M | 26 | 34 | -6 | LNC | LNC | 15 | Can also be done as 44B+K. [LH] when whiff punish | F5 |
| `AS K` | Holy Arrow Kick | H | 16 | 20 | -6 | KND | KND | 9 | [LH] versus H attacks except [TH] |  |
| `TAS AB` | Seraphim Echo | MM | 20 | 18,35 | 4 | KND | KND | 12 | [BA]. [LH] on impact counter |  |
| `TAS B` | Seraphim Strike | M | 16 | 35 | -14 | STN | STN | 9 | [LH] versus whiffed horizontals (except kicks) |  |
| `RE A` | Celestial Blade | H |  | 20 | -4 | 8 | 8 | 33 | [LH] as initiator 2nd round |  |
| `RE A6` | Celestial Blade ~ Angel Step | H |  | 20 | 6 | STN | STN | 33 | [SS] intoAS [LH] as initiator 2nd | F4 |
| `RE B` | Angel Vanguard | M |  | 21 | STN | LNC | LNC | 50 | Will always [GC] on 2nd round as initiator. [LH] as initiator 2nd round |  |
| `RE K` | Spiritual Spin Kick | M |  | 10 | -2 | KND | KND | 33 | [LH] as initiator 2nd round |  |
| `SC 4A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] versus whiffed throws |  |
| `SC 4A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] versus whiffed throws |  |
| `SC 44A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] | F5 |
| `SC 44A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] | F5 |
| `SC TAS B` | Seraphim Punisher | M | 14 | 42 | -8 | STN | STN | 9 | Tech Crouch[0-22] [LH]  versus whiffed horizontals (except kicks) | F6 |

## Break Attacks / Unblockables  (15)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `8(A)+(B) (on hit)` | Angel Fall | SM | 68 | 60 |  | KND | KND | 0 | [UA]. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F3 F6 |
| `4B+K` | Heaven's Gate | M | 64 | 40 | LNC | LNC | LNC |  | [UA], cancel with G. Tech Jump[55-73] |  |
| `11A(A)` | Silent Stream | LM | 26 | 14,40 | KND | KND | KND |  | [UA]. Tech Jump[6-31] | F5 |
| `TAS AB` | Seraphim Echo | MM | 20 | 18,35 | 4 | KND | KND | 12 | [BA]. [LH] on impact counter |  |
| `(B)+(G)` | Holy Resonance | M | 64 | 40 |  |  |  |  | [BA]. [RE] [6-50] | F3 |
| `SC 4AB` | Cutlass Empyrean | HM | 18 | 18,33 | 2 | KND | KND | 13 | Normal Hit Combo. [BA] |  |
| `SC BBBB` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,21 | 2 | KND | KND | 10 | [BA] |  |
| `SC BBB(B)` | Mystic Sword Rain | MMMMM | 14 | 12,14,14,16,64 | 8 | KND | KND | 10 | [BA] |  |
| `SC 4A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] versus whiffed throws |  |
| `SC 4A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] versus whiffed throws |  |
| `SC 44A+BB` | Twin Step Sword Rain | MMM | 18 | 14,16,21 | 2 | KND | KND | 12 | Normal Hit Combo. [BA]. [LH] | F5 |
| `SC 44A+B(B)` | Twin Step Sword Rain | MMM | 18 | 14,16,62 | 8 | KND | KND | 12 | [BA]. [LH] | F5 |
| `SC 44AB` | Mirage Cross | MM | 24 | 21,35 | 4 | LNC | LNC | 10 | [BA]. Tech Crouch[0-25] | F5 F6 |
| `SC AS AAB` | Sun's Corona | MLM | 18 | 23,19,13 | 4 | KND | KND | 15 | [BA]. Normal Hit Combo |  |
| `SC AS A+B` | Seraphim Castigation | MMSM | 16 | 14,18,19 | 2 | KND | KND | 10 | Normal Hit Combo. [BA] |  |

## Guard Impact moves — check WHAT each covers  (14)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `6A` | Roaring Stream | H | 22 | 12 | -8 | 0 | 0 | 1 | [GI][6-16] vs [L] attacks. Tech Crouch[6-14] | F6 |
| `6B` | Ascetic's Force | M | 20 | 14 | -10 | -2 | 4 | 2 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `6bA` | Ascetic's Blade | M | 44 | 24 | -12 | 4 | 4 | 4 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `1(K)` | Tornado Low Kick | L | 36 | 30 | -6 | KND | KND | 4 | [LH] after opponent misses a [GI] |  |
| `6A+B` | El Fortune |  | 4 |  |  |  |  |  | [GI] [4-12] vs mids | F2 |
| `6A+B` | Spinning Hilt | H |  | 10 |  | LNC |  |  | [GI] [4-12] vs mid horizontals | F2 F3 |
| `6A+BAK` | Guardian's Judgment | MMM |  | 20,11,28 |  | KND |  |  | [GI] [4-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `6A+B` | Tornado High Kick | H |  | 18 |  | LNC |  |  | [GI] [4-12] vs mid kicks | F2 F3 |
| `3A+B` | El Fortune (synergy) | SM | 4 | 40 |  | KND |  |  | attack comes out on successful GI [GI] [4-14] vs mids | F3 |
| `SC 6A+B` | El Fortune |  | 2 |  |  |  |  |  | [GI] [2-12] vs mids | F2 |
| `SC 6A+B` | Spinning Hilt | H |  | 10 |  | LNC |  |  | [GI] [2-12] vs mid horizontals | F2 F3 |
| `SC 6A+BAK` | Guardian's Judgment | MMMSM |  | 20,11,28,9 |  | KND |  |  | [GI] [2-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `SC 6A+B` | Tornado High Kick | H |  | 18 |  | LNC |  |  | [GI] [2-12] vs mid kicks | F2 F3 |
| `SC 3A+B` | El Fortune (synergy) | SM | 2 | 42 |  | KND |  |  | attack comes out on successful GI [GI] [2-12] vs mids | F3 |

## Tech Crouch (dodges HIGHS) / Tech Jump (dodges LOWS)  (79)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAA6` | Starlight Blade ~ Angel Step | HHH | 12 | 8,10,25 | -2 | 8 | 8 | 2 | Tech Crouch[4-RC]. AS | F6 |
| `2A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[8-RC] | F6 |
| `BBB` | Divine Mist | MMMM | 14 | 12,14,14,16 | -6 | KND | KND | 6 | Tech Crouch[9-20] | F6 |
| `4K` | Rising Temple | H | 14 | 20 | -2 | 8 | 8 | 1 | Tech Crouch[4-10] | F6 |
| `22B` | Guardian's Judgment | M | 14 | 20 | -26 | KND | KND | 9 | Tech Crouch[3-14]. Tech Jump[16-47]. Tech Crouch[49-59] | F5 F6 |
| `22BA` | Guardian's Judgment | MH | 14 | 10,7 | -22 | KND | KND | 0 | Tech Jump[1-44]. Tech Crouch[45-56] | F5 F6 |
| `22BAK` | Guardian's Judgment | MHM | 14 | 20,7,20 | -60 | KND | KND | 0 | Tech Jump[1-42]. Tech Crouch[45-56] | F5 F6 |
| `2B` | Guardian Strike | M | 16 | 14 | -10 | 0 | 4 | 2 | Tech Crouch[16-RC] | F6 |
| `2BB` | Guardian Strike | MM | 16 | 14,22 | -20 | 10 | 10 | 7 | Tech Crouch[16-RC] | F6 |
| `2BB4` | Guardian Strike | MM | 16 | 14,22,15 |  | KND | KND | 7 | Tech Crouch[16-RC] +10 damage with exact timing | F1 F3 F6 |
| `2BBB` | Guardian Strike | MM | 16 | 14,22,15 |  | LNC | LNC | 7 | Tech Crouch[16-RC] +5 damage with exact timing | F1 F3 F6 |
| `2BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `2K` | Spring Under kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[11-RC] | F6 |
| `3A` | Angel Punisher | M | 18 | 22 | -14 | -2 | -2 | 1 | Tech Crouch[9-35] | F6 |
| `4A` | Cutlass Europa | H | 18 | 18 | -10 | 4 | 4 | 1 | Tech Crouch[8-12] | F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] versus whiffed throws Tech Crouch[9-20] | F2 F6 |
| `4A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | [LH] on whiffed throw. Tech Crouch[9-20] | F2 F6 |
| `6B+K` | Quick Strike | M | 18 | 26 | -6 | 2 | KND | 9 | Tech Crouch[8-31] | F6 |
| `66A` | Silent Cross | M | 18 | 20 | -12 | 6 | 6 | 4 | Tech Crouch[6-20] | F5 F6 |
| `44A+B` | Twin Step Grace | MM | 18 | 14,16 | -6 | KND | KND | 9 | Tech Crouch[9-20] [LH] versus whiffed throws | F5 F6 |
| `6B` | Ascetic's Force | M | 20 | 14 | -10 | -2 | 4 | 2 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `3B` | Paladin Purifier | M | 20 | 22 | -14 | LNC | LNC | 9 | Tech Crouch[8-17] | F6 |
| `6A` | Roaring Stream | H | 22 | 12 | -8 | 0 | 0 | 1 | [GI][6-16] vs [L] attacks. Tech Crouch[6-14] | F6 |
| `6AA` | Roaring Stream | HL | 22 | 12,18 | -10 | -2 | -2 | 2 | Normal Hit Combo. Tech Crouch[6-14] | F6 |
| `6AA6` | Roaring Stream ~ Angel Step | HL | 22 | 12,18 | -2 | 6 | 6 | 2 | Normal Hit Combo. Tech Crouch[6-14]. [SS] into AS | F6 |
| `9K` | Holy Crest Kick | M | 22 | 18 | -6 | 6 | 6 | 2 | Tech Jump[8-32] |  |
| `44B` | Guardian Upper | M | 22 | 30 | -16 | LNC | LNC | 9 | [LH] post GI. Tech Crouch[5-17] | F5 F6 |
| `66B+K` | Jet Stream Rush | M | 22 | 22 | -8 | 0 | 0 | 9 | Tech Crouch[5-21] | F5 F6 |
| `9A` | Jumping Mirage Satellite | H | 24 | 35 | -8 | KND | KND | 4 | Tech Jump[7-32] |  |
| `7A` | Jumping Mirage Satellite | H | 24 | 25 | -8 | 2 | 2 | 4 | Tech Jump[7-32] |  |
| `44A` | Reverse Mirage | M | 24 | 20 | -6 | 4 | LNC | 4 | On CH, damage changes to 24,18. Tech Crouch[15-20] | F5 F6 |
| `44A6` | Reverse Mirage ~ Angel Step | M | 24 | 20 | -8 | 2 | LNC | 4 | No stance transition on CH. AS on NH or block. Tech Crouch[15-20] | F5 F6 |
| `B+K` | Temperance Strike | M | 26 | 16 | -12 | 0 | 0 | 9 | Tech Jump[2-14]. Tech Crouch[17-30] | F6 |
| `B+KB` | Temperance Strike | MM | 26 | 16,22 | -20 | KND | KND | 5 | Counter Hit Combo. Tech Jump[2-14]. Tech Crouch[17-30] | F6 F7 |
| `11A` | Silent Stream | L | 26 | 14 | -12 | -2 | -2 | 4 | Tech Crouch[13-RC] | F5 F6 |
| `11AA` | Silent Stream | LM | 26 | 14,26 | -14 | KND | KND | 1 | Tech Crouch[0-22]. Tech Jump[28-61] | F5 F6 |
| `11A(A)` | Silent Stream | LM | 26 | 14,40 | KND | KND | KND |  | [UA]. Tech Jump[6-31] | F5 |
| `22A+B` | Ascension | M | 26 | 28 | -14 | LNC | LNC | 15 | Tech Crouch[7-24] | F5 F6 |
| `8B+K` | Angel Stroke | MM | 30 | 10,10 | -8 | 2 | KND | 14 | Tech Crouch[5-14]. Tech Jump[14-36] | F6 |
| `8B+KA` | Angel Stroke | MML | 30 | 10,10,20 | -16 | KND | KND | 1 | Tech Jump[10-41]. Tech Crouch[43-60] | F6 |
| `8B+KAB` | Angel Stroke | MMLM | 30 | 10,10,20,24 | -2 | KND | KND | 5 | Tech Crouch[1-17] | F6 |
| `8B+KB` | Angel Fall | MMM | 30 | 10,10,40 | 2 | KND | KND | 10 | Tech Crouch[3-14]. Tech Jump[18-51]. Tech Crouch[51-67] | F6 |
| `8B+KK` | Angel's Sault | MMM | 30 | 10,10,22 | -20 | KND | KND |  | Launcher on airborne opponent. Normal Hit Combo. Tech Crouch[5-10]. Tech Jump[13-45]. Tech Crouch[43-59] | F6 |
| `1A` | Iron Butterfly | L | 32 | 15 | -16 | -6 | KND | 4 | Tech Crouch[10-RC] | F6 |
| `4(A)` | Cutlass Europa | H | 38 | 30 | -2 | 16 | 16 | 4 | Tech Crouch[8-28] | F6 |
| `9B` | Diving Exile | M | 38 | 18 | -4 | JGL | JGL | 9 | Tech Jump[7-31] | F4 |
| `7B` | Diving Exile | M | 38 | 18 | -4 | 8 | 8 | 9 | Tech Jump[7-31] |  |
| `A+B` | Elk Strike | M | 38 | 35 | 8 | KND | KND | 15 | [LH] versus GI/RE. Tech Crouch[9-39] | F6 |
| `8A+B (on hit)` | Angel Fall | SM | 38 | 40 | -16 | KND | KND | 15 | Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `8A+B (on whiff)` | Angel Fall | SM | 38 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `6bA` | Ascetic's Blade | M | 44 | 24 | -12 | 4 | 4 | 4 | [GI] [ M verticals 8-15]. Tech Crouch[8-26] | F6 |
| `44kK` | Tornado Feint | M | 46 | 40 | 4 | LNC | LNC | 9 | Tech Crouch[5-25] | F5 F6 |
| `4B+K` | Heaven's Gate | M | 64 | 40 | LNC | LNC | LNC |  | [UA], cancel with G. Tech Jump[55-73] |  |
| `8(A)+(B) (on hit)` | Angel Fall | SM | 68 | 60 |  | KND | KND | 0 | [UA]. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F3 F6 |
| `8(A)+(B) (on whiff)` | Angel Fall | SM | 68 | 0 | -16 | 14 | 14 | 0 | shockwave. Tech Crouch[7-11]. Tech Jump[13-41]. Tech Crouch[41-66] | F6 |
| `6A+BAK` | Guardian's Judgment | MMM |  | 20,11,28 |  | KND |  |  | [GI] [4-12] vs mid verticals Tech Crouch. Tech Jump | F3 F6 |
| `B+KB4` | Temperance Strike | MM |  | 16,22,15 |  | KND | KND |  | Counter Hit Combo +10 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `B+KBB` | Temperance Strike | MM |  | 16,22,15 |  | LNC | LNC |  | Counter Hit Combo +5 damage with exact timing Tech Jump[2-14]. Tech Crouch[17-30] | F1 F3 F6 F7 |
| `FC A` | Under Slide Blade | SL | 12 | 10 | -6 | 6 | 6 | 1 | Tech Crouch[0-9]. Tech Crouch[13-RC] | F6 |
| `WR B` | Exile | M | 14 | 20 | -6 | 4 | 4 | 2 | Tech Crouch[0-14] | F6 |
| `AS B` | Angel's Strike | M | 14 | 30 | -20 | -6 | KND | 2 | +6 damage on exact timing. Tech Crouch[4-22] | F6 |
| `WR A` | Full Turn Blade | M | 16 | 18 | -10 | 4 | 4 | 1 | Tech Crouch[0-10] | F6 |
| `BT 2A` | Under Slide Blade | SL | 16 | 14 | -4 | 6 | 6 | 1 | Tech Crouch[11-RC] | F6 |
| `FC B` | Guardian Strike | M | 16 | 14 | -10 | 0 | 4 | 2 | Tech Crouch[0-6]. Tech Crouch[16-RC] | F6 |
| `FC BK` | Guardian Spear Kick | MH | 16 | 14,20 | -12 | 10 | 10 | 7 | [LH] if hit opponent from back. Tech Crouch[0-16]. Tech Jump[16-35] | F6 |
| `FC 3B` | Under Splash | M | 16 | 18 | -8 | 2 | 2 | 2 | Tech Crouch[0-4]. Tech Crouch[18-RC] | F6 |
| `FC K` | Spring Under Kick | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch[0-4]. Tech Crouch[10-RC] | F6 |
| `WR K` | Angel's Spring | MM | 16 | 20 | -2 | 8 | 8 | 4 | Tech Crouch[0-12] | F1 F6 |
| `BT B+K` | Hip Charge | M | 16 | 24 | -8 | 8 | 14 | 15 | Tech Jump[16-29] |  |
| `AS A+B` | Angelic Retribution | MM | 16 | 14,18 | -6 | 2 | 2 | 4 | Tech Crouch[4-11]. Tech Jump[17-68]. Tech Crouch [70-92] | F6 |
| `BT 2B` | Turning Under Splash | M | 18 | 20 | -6 | 4 | 4 | 2 | Tech Crouch[13-RC] | F6 |
| `FC 1K` | Elysium Kick | L | 18 | 16 | -12 | 2 | 2 | 1 | Tech Crouch[0-10] | F6 |
| `BT 2K` | Turning Angel Sweep | L | 18 | 16 | -14 | -2 | -2 | 5 | Tech Crouch[13-RC] | F6 |
| `AS A` | Angel Satellite | M | 18 | 22 | -18 | KND | KND | 3 | Tech Crouch[3-19]. Tech Jump[21-48] | F6 |
| `AS AA` | Angel Satellite | ML | 18 | 22,18 | -14 | KND | KND | 2 | Tech Jump[0-29]. Tech Crouch[33-59] | F6 |
| `TAS A` | Seraphim Blade | M | 18 | 18 | -14 | -4 | KND | 1 | Tech Crouch[3-33] | F6 |
| `TAS AA` | Seraphim Blade | ML | 18 | 18,18 | -12 | 6 | STN | 2 | Tech Crouch[0-RC] | F6 |
| `RUN K` | Sliding | L | 20 | 25 | -20 | KND | KND | 2 | Tech Crouch[11-46] | F6 |
| `TAS K` | Tornado Feint | M | 34 | 30 | 4 | KND | KND | 9 | Tech Crouch[0-25] | F6 |

## Stance entries (`[SS]` / `~` transitions)  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAA6` | Starlight Blade ~ Angel Step | HHH | 12 | 8,10,25 | -2 | 8 | 8 | 2 | Tech Crouch[4-RC]. AS | F6 |
| `6AA6` | Roaring Stream ~ Angel Step | HL | 22 | 12,18 | -2 | 6 | 6 | 2 | Normal Hit Combo. Tech Crouch[6-14]. [SS] into AS | F6 |
| `44A6` | Reverse Mirage ~ Angel Step | M | 24 | 20 | -8 | 2 | LNC | 4 | No stance transition on CH. AS on NH or block. Tech Crouch[15-20] | F5 F6 |
| `RE A6` | Celestial Blade ~ Angel Step | H |  | 20 | 6 | STN | STN | 33 | [SS] intoAS [LH] as initiator 2nd | F4 |

## Throws  (10)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Widow Maker | H | 18 | 40 | 6 | 6 | 6 |  | [TH] |  |
| `A+G(2)` | Widow Maker | H | 18 | 35 | KND | KND | KND |  | [TH] | F4 |
| `4A+G` | Holy Cracker | H | 18 | 40 | KND | KND | KND |  | [TH] | F4 |
| `4A+GA` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `4A+G4A` | Heaven to Hell | H | 18 | 65 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 |
| `SIDE-L A+G` | Round Knocker | H | 18 | 50 | KND | KND | KND |  | [TH] Restores guard stamina upon landing | F4 F5 |
| `SIDE-R A+G` | Broken Promise | H | 18 | 70 | KND | KND | KND |  | [TH] | F4 F5 |
| `BACK A+G` | Bottoms Up | H | 18 | 50 | KND | KND | KND |  | [TH] | F4 F5 |
| `66A+G` | Heaven's Arch | H | 18 | 55 | KND | KND | KND |  | [TH] [LH] after 4+ successfull guard impacts | F4 F5 |
| `AS K` | Holy Arrow Kick | H | 16 | 20 | -6 | KND | KND | 9 | [LH] versus H attacks except [TH] |  |

## ⚑ Data-reliability flag index

| Flag | Rows |
|---|---|
| **F1** (18) | `2BB4` · `2BBB` · `FC BB` · `WR K` · `B+KB4` · `B+KBB` · `AS B4 (on hit)` · `AS BB` · `TAS B4` · `TAS BB` · `SC 2BB4` · `SC 2BBB` · `SC B+KB4` · `SC B+KBB` · `SC AS B4` · `SC AS BB` · `SC TAS B4` · `SC TAS BB` |
| **F2** (8) | `6A+B` · `4A+B` · `SC 6A+B` |
| **F3** (27) | `2BB4` · `2BBB` · `6A+B` · `6A+BAK` · `3A+B` · `8(A)+(B) (on hit)` · `B+KB4` · `B+KBB` · `AS B4 (on hit)` · `AS BB` · `TAS B4` · `TAS BB` · `B+G` · `(B)+(G)` · `SC 2BB4` · `SC 2BBB` · `SC 6A+B` · `SC 6A+BAK` · `SC 3A+B` · `SC B+KB4` · `SC B+KBB` · `SC AS B4` · `SC AS BB` · `SC TAS B4` · `SC TAS BB` |
| **F4** (10) | `9B` · `A+G(2)` · `4A+G` · `4A+GA` · `4A+G4A` · `SIDE-L A+G` · `SIDE-R A+G` · `BACK A+G` · `66A+G` · `RE A6` |
| **F5** (32) | `SIDE-L A+G` · `SIDE-R A+G` · `BACK A+G` · `66A+G` · `66A` · `[2]A` · `[8]A` · `44A` · `44A6` · `11A` · `11AA` · `11A(A)` · `66B` · `22B` · `22BA` · `22BAK` · `44B` · `66K` · `22K` · `44K` · `44kK` · `66A+B` · `22A+B` · `44A+B` · `66B+K` · `66B+KA` · `66B+KAB` · `[22/44]B+K` · `SC 44A+BB` · `SC 44A+B(B)` · `SC 44AB` · `SC 22BAK` |
| **F6** (80) | `AAA6` · `6A` · `6AA` · `6AA6` · `3A` · `2A` · `1A` · `4A` · `4(A)` · `FC A` · `WR A` · `BT 2A` · `BBB` · `6B` · `6bA` · `3B` · `2B` · `2BB` · `2BB4` · `2BBB` · `2BK` · `4B` · `FC B` · `FC BK` · `FC 3B` · `WR B` · `BT 2B` · `2K` · `4K` · `FC K` · `FC 1K` · `WR K` · `BT 2K` · `A+B` · `6A+BAK` · `4A+B` · `8A+B (on hit)` · `8A+B (on whiff)` · `8(A)+(B) (on hit)` · `8(A)+(B) (on whiff)` · `B+K` · `B+KB` · `B+KB4` · `B+KBB` · `6B+K` · `8B+K` · `8B+KA` · `8B+KAB` · `8B+KB` · `8B+KK` · `66A` · `44A` · `44A6` · `11A` · `11AA` · `22B` · `22BA` · `22BAK` · `44B` · `44kK` · `22A+B` · `44A+B` · `66B+K` · `RUN K` · `AS A` · `AS AA` · `AS B` · `AS A+B` · `TAS A` · `TAS AA` · `TAS K` · `SC 2BB` · `SC 2BB4` · `SC 2BBB` · `SC 6A+BAK` · `SC 44AB` · `SC 22BAK` · `SC AS B+K` · `SC TAS B` |
| **F7** (11) | `1BBBB` · `B+KB` · `B+KB4` · `B+KBB` · `66B+KAB` · `SC 2BB` · `SC 2BB4` · `SC 2BBB` · `SC B+KB` · `SC B+KB4` · `SC B+KBB` |

### Other source issues noticed by hand

| Where | Issue |
|---|---|
| Side/back throws | Wiki puts `KND` in the **Blk** column (throws can't be blocked) → ⚑ F4. |
| `8A+B` Angel Fall | Four rows: hit vs whiff (shockwave) × tap vs hold. Whiff version is still `14` on hit. |
| `SC 6A+B` | Three rows share the input (El Fortune GI → Spinning Hilt / Tornado High Kick depending on what it catches) → ⚑ F2. |
| `RE` rows | No `i` (RE follow-ups have no startup in the data). LH is "as initiator 2nd round". |

## ✅ Lab-confirmed additions

| Date | Input | Raw says | Lab says |
|---|---|---|---|
| — | — | — | _no lab time yet_ |
