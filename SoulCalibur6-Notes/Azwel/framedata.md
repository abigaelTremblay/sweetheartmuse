# Azwel — Normalized Frame Data

> **Generated 2026-10-14** from the SuperCombo MediaWiki API (`Soulcalibur_VI/Azwel/Move_list`, wikitext).
> Same pipeline as `../2B/framedata.md`, plus a **Wpn** column. Generator: session artifact `genazwel.py`.
> **Raw wiki values are verbatim.** My additions: `Wpn`, `⚑`, Part 3, the dated lab section.
> **Snapshot, not ground truth.** Where it disagrees with the lab, the lab wins — record both.

## ⚠️ Read before using any number here

| Rule | Why |
|---|---|
| ⭐ **Weapon-switch penalty: +8f startup** | 📚 Strategy page: a move whose weapon ≠ current mode (or at round start, unformed) starts **8f slower**. ❓ Whether listed `i` is the in-mode value is assumed, not verified. Jumping moves reportedly exempt. Almighty / SC = all fast. |
| **String `i` = ? (first hit or branch?)** | Same unresolved question as Xianghua Q37. **Never derive a string's startup or a guaranteed follow-up from `i`.** |
| **Lvl on strings is cumulative** | The last letters are the branch; mixed `M`/`L` ≠ automatic 50/50. |
| **+N ≠ guaranteed** | Being plus does not make the next option uninterruptible. |
| **`Tech Crouch[x-y]` ≠ ends crouched** | Xianghua `3AK` lesson. Windows are listed here — most end long before recovery. |
| **`X6K`/`X4K` rows mostly have no frames** | Do **not** copy the `XK` (→BoB) values onto them. |
| **Damage cells are per-hit, unscaled** | Read the in-game counter. Azwel `3B` reportedly has built-in string scaling (`../08-damage-model.md` §1b). |

### `Wpn` column (mine, from the Notes text)

| Value | Meaning |
|---|---|
| `Sw` / `Ax` / `Sp` | Notes name that weapon → move **forms / uses** it (sets the mode) |
| `Alm` | Notes say Almighty (throws) |
| `req` | Weapon Art / mode-gated row — needs that mode, does **not** set it |
| *(blank)* | No weapon named — ❓ (stance moves, strings whose later hit changes weapon, or missing data) |

### ⚑ Flag legend

| Flag | Meaning |
|---|---|
| **F1** | Lvl hit-count ≠ Dmg hit-count — per-hit data incomplete or merged |
| **F2** | Same qualified input on 2+ rows (overloaded) |
| **F3** | Missing Blk/Hit — no frame data listed (most `X6K`/`X4K` stance-exit rows) |
| **F4** | Non-standard value or typo in the cell (e.g. `TOB`, `Jaills`, `8-RC`) |
| **F5** | Input notation normalised by me — confirm in in-game command list |
| **F6** | Notes mention Tech Crouch / crouch → ❓ FC/WR follow-up candidate (label ≠ ends crouched) |
| **F7** | Notes say “Counter Hit Combo” / “only if Nth hit” — later hits NOT guaranteed on normal hit |

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

No prefix = **usable from neutral standing** (weapon penalty may apply). Anything else is gated.

| Prefix | Means | Count |
|---|---|---|
| `(none)` | neutral standing | 79 |
| `FC` | full crouch | 14 |
| `BoB` | Beauty of Balance (sword stance) | 12 |
| `CoE` | Comedy of Errors (spear stance) | 10 |
| `BT` | back turned | 9 |
| `RE` | after winning Reversal Edge | 7 |
| `SC` | Soul Charge **state** (always Almighty) | 7 |
| `ToW` | Tragedy of War (axe stance) | 6 |
| `ALMIGHTY` | Almighty **mode** (after throw / AAA / BBB / 6A+B / 8WR A+B / RE BB) | 5 |
| `WR` | while rising | 3 |
| `UNFORMED` | no weapon formed (round start, after A+B / Weapon Art) | 3 |
| `SWORD` | in sword mode | 2 |
| `AX` | in axe mode | 2 |
| `SPEAR` | in spear mode | 2 |
| `METER` | ⚠️ costs meter, from neutral | 2 |
| `BACK` | throw from behind | 1 |
| `RUN` | while running | 1 |
| `METER ODD` | costs meter — 1st/3rd/5th… use of 236A+B+K | 1 |
| `METER EVEN` | costs meter — 2nd/4th… use | 1 |

### Input normalisation (⚑ F5)

| Wiki | Here | Means |
|---|---|---|
| `(3)_(6)_(9)` | `66` | forward run |
| `(1)_(4)_(7)` | `44` | back run |
| `(2)_(8)` | `22` | vertical run |
| `(2)_(8)_(1)_(4)_(7)_(3)_(6)_(9)` | `8WR` | run in any direction |
| `3_6_9K` / `1_4_7K` / `2_8K` | `[3/6/9]K` / `[1/4/7]K` / `[2/8]K` | **tap** any of those directions + K (not a run) |
| `+ (B)+(G)` | `(B)+(G)` | held RE (row continuation) |

## Stance & mode model — TWO independent layers

```
LAYER 1 — WEAPON MODE (persists between moves; wrong-mode move = +8f ❓)
  UNFORMED ──any Sw/Ax/Sp move──▶ SWORD | AX | SPEAR
  throw · AAA · BBB · 6A+B · 8WR A+B · RE BB ──▶ ALMIGHTY (all fast, one move?) ❓
  A+B or any Weapon Art (B+K / 6B+K / 4B+K) ──▶ UNFORMED again
  Soul Charge = permanent ALMIGHTY

LAYER 2 — STANCE (K button never kicks from neutral)
  K / [2/8]K   ─────────▶ BoB  (sword stance)    11 moves
  [3/6/9]K     ─────────▶ ToW  (axe stance)       5 moves
  [1/4/7]K     ─────────▶ CoE  (spear stance)     9 moves
  strings:  X K ──▶ BoB    X 6K ──▶ ToW    X 4K ──▶ CoE      ← the suffix router
  in-stance: K→BoB · 6K→ToW · 4K→CoE (stance-to-stance)
```

> 📚 Strategy: *"In general, don't perform stance transitions unless you hit. The exception is 22B."*

## Notation
Identical to Xianghua/2B — see `../07-glossary.md`. Azwel-specific:

| Token | Trap |
|---|---|
| `X K` / `X 6K` / `X 4K` suffix | stance exit, **not a kick** |
| `BoB.B`, `ToW.6K` | community dot-notation = `BoB B`, `ToW 6K` here |
| `Sword B+K` vs `B+K` | same button, different move per **mode** — see `UNFORMED`/`SWORD`/`AX`/`SPEAR`/`ALMIGHTY` |
| `6B:A` | just-frame (community combos) |
| `RCC` | Recovery Crouch Cancel — step out of crouch to get standing moves early (Dustloop) |

---

# PART 1 — NEUTRAL (79)

## Horizontal Attacks  (17)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Pilgrimage of Anthropos | Sw | H | 10 | 10 | -8 | -2 | -2 | 1 | Sword |  |
| `AA` | Pilgrimage of Anthropos | Sw | HH | 10 | 10,12 | -6 | 0 | 0 | 3 | Normal Hit Combo. Sword |  |
| `AAA` | Pilgrimage of Anthropos |  | HHMMMMM | 10 | 10,12,10,5,5,5,5,10 | -8 | 4 | 4 | 11 |  | F1 |
| `AAB` | Death To Defectors |  | HHM | 10 | 10,12,24 | -4 | 6 | 6 | 9 |  |  |
| `AB` | Tragedy of Humanity |  | HM | 10 | 10,23 | -20 | LNC | LNC | 8 |  |  |
| `6A` | Light in the Dark | Ax | H | 18 | 16 | -8 | 6 | 6 | 4 | Axe. Tech Crouch[9-26] | F6 |
| `6AA` | Light in the Dark | Ax | HH | 18 | 16,24 | 0 | KND | KND | 5 | Normal Hit Combo. Jails, Ax. Tech Crouch[9-26] | F6 |
| `3A` | Forbidden Path |  | M | 20 | 20 | -8 | 4 | STN | 4 |  |  |
| `2A` | Heretic's Sweep |  | SLSL | 14 | 8,8 | -10 | 2 | 2 | 2 | Tech Crouch[8-RC] | F4 F6 |
| `2AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `2A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `2A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `1A` | Peace Through Hardship | Sp | L | 26 | 30 | -12 | 6 | 6 | 4 | Spear. GI[41-66] vs M L |  |
| `4A` | Fell the Unworthy | Sp | H | 20 | 22 | -6 | 8 | 8 | 4 | Spear. GI[13-18] vs H |  |
| `9A` | Absolute Devotion |  | L | 32 | 22 | -16 | 2 | 2 | 4 |  |  |
| `8A` | Radical Liberty |  | M | 26 | 16 | -10 | 2 | 2 | 4 |  |  |
| `7A` | Thorough Impact |  | L | 40 | 28 | -18 | 4 | 4 | 4 |  |  |

## Vertical Attacks  (28)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B` | Heart on Trial | Sw | M | 14 | 12 | -10 | -2 | -2 | 2 | Sword |  |
| `BA` | Heart on Trial |  | MH | 14 | 12,22 | 0 | KND | KND | 4 |  |  |
| `BB` | Seven Sages' Aphorism | Sw | MM | 14 | 12,12 | -8 | 0 | 0 | 4 | Normal Hit Combo. Sword |  |
| `BBB` | Seven Sages' Aphorism |  | M | 14 | 12,12,14,8,8,16 | -6 | STN | STN | 13 |  | F1 |
| `BBK` | Seven Sages' Aphorism ~ Beauty of Balance | Sw | MM | 14 | 12.12 | -12 |  |  |  | Normal Hit Combo. Sword. SS into BOB | F1 |
| `BB6K` | Seven Sages' Aphorism ~ Tragedy of War |  | MM | 14 | 12,12 |  |  |  |  | SS into TOW | F3 |
| `BB4K` | Seven Sages' Aphorism ~ Comedy of Errors |  | MM | 14 | 12,12 |  |  |  |  | SS into COE | F3 |
| `BBA` | To The Gallows |  | MMH | 14 | 12,12,22 | -10 | 2 | 2 | 1 |  |  |
| `b6` | Adulation Blade | Sw | H | 22 | 24 | -2 | 6 | 6 | 9 | Sword. Tech Crouch[14-21] | F6 |
| `b4` | Tears of Pain |  | M | 16 | 24 | -8 | 2 | 2 | 2 | LH in post-GI |  |
| `6B` | Usurp the Autocracy | Ax | M | 14 | 16 | -6 | 0 | 0 | 5 | Axe |  |
| `6BA` | Usurp the Autocracy | Sp | MHHH | 14 | 16,10,10,15 | -4 | -8 | -8 | 8 | Spear |  |
| `6BB` | Truculent World |  | MM | 14 | 16,25 | 0 | KND | KND | 17 | Tech Jump[7-30]. Tech Crouch[30-56] | F6 |
| `6BaB` | Barbaric Lament | Sw | MM | 14 | 16,24 | -8 | 6 | 6 | 6 | Sword |  |
| `3B` | Eternal Conflict |  | M | 20 | 24 | -16 | LNC | LNC | 9 | LH vs crouch guard | F6 |
| `3BB` | Eternal Conflict |  | MM | 20 | 24,18 | -10 | KND | KND | 15 | LH vs crouch guard | F6 |
| `3B(B)` | Eternal Conflict |  | MM | 20 | 24,32 | -4 |  |  | 20 | LH vs crouch guard | F6 |
| `2B` | Path to Glory | Sw | M | 16 | 12 | -14 | 2 | 2 | 9 | Sword |  |
| `2BB` | Path To Glory | Sw | MM | 16 | 12,14 | -14 | 8 | 8 | 14 | Normal Hit Combo. Sword |  |
| `2BBK` | Path to Glory ~ Beauty of Balance | Sw | MM | 16 | 12 | -6 |  |  |  | Sword. SS into BOB | F1 |
| `2BB6K` | Path to Glory ~ Tragedy of War |  | MM | 16 | 12 |  |  |  |  | SS into TOW | F1 F3 |
| `2BB4K` | Path to Glory ~ Comedy of Errors |  | MM | 16 | 12 |  |  |  |  | SS into COE | F1 F3 |
| `1B` | Save the Betrayed |  | L | 18 | 16 | -16 | -4 | -4 | 9 | GI [11-24] vs L. SS |  |
| `1BB` | Save the Betrayed |  | LH | 18 | 16,24 | -8 | 8 | 8 | 14 | GI [11-24] vs L. SS |  |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `9B` | Extinction Betrayer |  | M | 32 | 38 | -4 | KND | KND | 15 | Tech Jump[10-31]. Tech Crouch[34-50] | F6 |
| `8B` | Biting Critique |  | M | 26 | 20 | -6 | 6 | 6 | 9 | Tech Jump[8-30] |  |
| `7B` | Revelatory Punishment | Sp | M | 40 | 22 | -18 | LNC | LNC | 9 | Spear. Tech Jump[8-31]. Tech Crouch[34-39] | F6 |

## Multi Attacks  (6)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `6A+B` | Epistemological Punishment |  | M | 32 | 14,9,8,16 | -6 | STN | STN | 9 | Tech Jump[16-69] | F1 |
| `2A+B` | Geometrical Precision |  | L | 26 | 0 | -12 | 8 | 8 |  | Quake |  |
| `4A+B` | Power of Pathos |  | M | 20 | 20 | -6 | 8 | 18 | 2 | Tech Crouch[18-45] | F6 |
| `8A+B` | Encyclopedic Mind |  | M | 38 | 30 | -22 | KND | KND | 9 |  |  |
| `214A+B` | Ophion's Omnipresence |  | M | 62 | 45 |  | LNC | LNC |  | UA. Normal Hit Combo. Tech Jump[60-81] |  |
| `K+G` | Appeal |  |  |  |  |  |  |  |  | Taunt. G cancels. Tech Crouch | F6 |

## Throws  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Modify the Weak | Alm | H | 18 | 50 |  | KND | KND |  | Almighty. TH |  |
| `4A+G` | Reformation | Alm | H | 18 | 60 |  | KND | KND |  | Almighty. TH |  |

## Run Attacks  (14)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Plunder the Depths | Ax | H | 20 | 26 | -1 | -12 |  | 2 | Projectile, Axe | F5 |
| `22A` | Subliminal Persuasion |  | H | 22 | 18 | -12 | 0 | STN | 4 | LH on run counter | F5 |
| `22AK` | Subliminal Persuasion ~ Beauty Of Balance | Sw | H |  | 18 | 0 | STN | STN | 4 | Sword. LH. SS into BOB | F5 |
| `22A6K` | Subliminal Persuasion ~ Tragedy Of War |  | H |  | 18 | 0 | STN | STN |  | LH. SS into TOW | F5 |
| `22A4K` | Subliminal Persuasion ~ Comedy Of Errors |  | H |  | 18 | 0 | STN | STN |  | LH. SS into COE | F5 |
| `44A` | Justice for All | Sp | H | 32 | 24 | 2 | KND | KND | 4 | Spear. Jumps but is not considered TechJump | F5 |
| `66B` | Trials of Conflict | Ax | M | 24 | 28 | -4 | LNC | LNC | 9 | Axe | F5 |
| `22B` | Unequivocal Love |  | M | 20 | 22 | -4 | STN | STN | 9 | LH versus whiffed attacks | F5 |
| `22BK` | Unequivocal Love ~ Beauty Of Balance | Sw | M | 20 |  | 12 | STN | STN |  | Sword. LH. SS into BOB | F5 |
| `22B6K` | Unequivocal Love ~ Tragedy Of War |  | M | 20 |  | 12 | STN | STN |  | LH. SS into TOW | F5 |
| `22B4K` | Unequivocal Love ~ Comedy Of Errors |  | M | 20 |  | 12 | STN | STN |  | LH. SS into COE | F5 |
| `44B` | No More Naysayers |  | M | 36 | 20 | -14 | -8 | -8 | 5 | LH on long-range hit | F5 |
| `44(B)` | No More Naysayers | Sp | M | 56 | 30 | -2 | STN | STN | 9 | Projectile, Spear. LH. BA | F5 |
| `8WR A+B` | March of Humanity |  | M | 30 | 40 | -12 | 4 | 4 | 10 | LH after hitting with sword, ax, and spear weapon arts | F5 |

## Weapon Arts  (3)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B+K` | Pleroma Ascension | req | MM | 18 | 18 | -20 | LNC | LNC | 14 | Normal Hit Combo. Projectile, Only in Sword or Almighty, Resets weapon | F1 |
| `6B+K` | O, Fallen Scholar | req | L | 22 | 20,34 | -24 | KND | KND | 4 | Only in Axe or Almighty, Resets weapon, +4 and no AT at tip. AT | F1 |
| `4B+K` | Aufheben Sublimation | req | MHH | 32 | 59 | -24 | LNC | LNC | 10 | Only in Spear or Almighty, Resets weapon. GI [4-16] vs M L | F1 |

## Beautyof Balance  (3)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Disillusionment |  |  |  |  |  |  |  |  | 20F. SS into BOB |  |
| `[2/8]K` | Beauty of Wonder |  |  |  |  |  |  |  |  | TS. SS into BOB | F5 |
| `22K` | Beauty of Performance |  |  |  |  |  |  |  |  | TS. SS into BOB | F5 |

## Tragedyof War  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `[3/6/9]K` | Tragedy of War |  |  |  |  |  |  |  |  | SS into TOW | F5 |
| `66K` | Tragedy of Performance |  |  |  |  |  |  |  |  | SS into TOW. Tech Crouch | F5 F6 |

## Comedyof Errors  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `[1/4/7]K` | Comedy of Errors | Sp |  |  |  |  |  |  |  | 20F, Spear. SS into COE | F5 |
| `44K` | Comedy of Performance |  |  |  |  |  |  |  |  | SS into COE | F5 |

## Reversal Edge Attacks  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Director of Fate |  | MMM | 48 | 40 | -4 |  |  | 16 | RE | F1 |
| `(B)+(G)` | Director of Fate |  | MMM | 68 | 50 | 8 |  |  | 20 | BA. RE | F1 F5 |

---

# PART 2 — GATED (88)

## FC  (14)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Heretic's Sweep |  | SLSL | 14 | 8,8 | -10 | 2 | 2 | 2 |  |  |
| `FC AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `FC A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `FC A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `FC 3A` | Impulse Pincer | Ax | HH | 18 | 16 | 0 | KND | KND | 5 | Normal Hit Combo. Axe | F1 |
| `FC 1A` | Righteous Judgment |  | L | 16 | 18 | -14 | 0 | 4 | 4 |  |  |
| `FC B` | Nihilism |  | M | 15 | 18 | -8 | 5 | 5 | 2 |  |  |
| `FC 3B` | Coup D'état | Ax | M | 16 | 22 | -12 | LNC | LNC | 9 | Axe |  |
| `FC 3BB` | Coup D'état | Ax | M | 16 | 22,19 | -8 | KND | KND | 15 | Normal Hit Combo. Axe | F1 |
| `FC 1B` | Talon Spear | Sp | M | 12 | 24 | -14 | LNC | LNC | 9 | Spear |  |
| `FC A+B` | Ascension Of The Three Magi |  | M | 12 | 16 | -8 | 4 | 4 | 2 | Tech Crouch[0-5] | F6 |
| `FC A+BK` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into BOB | F3 |
| `FC A+B6K` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into TOW | F3 |
| `FC A+B4K` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into COE | F3 |

## WR  (3)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `WR A` | Double Cross Baptism |  | M | 18 | 20 | -10 | 7 | 7 | 4 | Tech Crouch | F6 |
| `WR B` | Enlightenment | Sw | M | 14 | 16 | -8 | 2 | 2 | 9 | Sword |  |
| `WR BB` | Enlightenment | Sw | MM | 14 | 16 | -12 | 4 | 4 | 14 | Normal Hit Combo. Delayable. Sword | F1 |

## BoB  (12)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BoB A` | Salvation Doctrine | Sw | H | 12 | 10 | -6 | 0 | 0 | 4 | Sword |  |
| `BoB AA` | Salvation Doctrine | Sw | HH | 12 | 10,10 | -6 | 0 | 0 | 5 | Normal Hit Combo. Sword |  |
| `BoB AAA` | Salvation Doctrine | Sw | HHH | 12 | 10,10,20 | -8 | 10 | 10 | 7 | Sword |  |
| `BoB AAB` | Ideological Insight |  | HHM | 12 | 10,10,30 |  | KND | KND | 10 |  |  |
| `BoB AAK` | Ideological Insight ~ Beauty of Balance | Sw | HH | 12 | 10 | -2 | 8 | 8 |  | Normal Hit Combo. Sword. SS into BOB | F1 |
| `BoB AA6K` | Ideological Insight ~ Tragedy of War |  | HH | 12 | 10 |  |  |  |  | SS into TOW | F1 F3 |
| `BoB AA4K` | Ideological Insight ~ Comedy of Errors |  | HH | 12 | 10 |  |  |  |  | SS into COE | F1 F3 |
| `BoB AB` | Lower the Gavel |  | HMM | 12 | 10,8,16 | -18 | 8 | 8 | 14 |  |  |
| `BoB B` | Karmic Consequence |  | M | 20 | 28 | -8 | LNC | LNC | 15 | LH after guard crush |  |
| `BoB K` | Raconteur |  | H | 14 | 14 | -6 | 8 | STN | 1 |  |  |
| `BoB 6K` | Beauty of Balance ~ Tragedy of War |  |  |  |  |  |  |  |  | SS into TOW |  |
| `BoB 4K` | Beauty of Balance ~ Comedy of Errors |  |  |  |  |  |  |  |  | SS into COE |  |

## ToW  (6)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `ToW A` | Scream of Defiance | Ax | H | 22 | 40 | 2 | KND | KND | 9 | Axe. BA. Tech Crouch[1-5] | F6 |
| `ToW B` | War and Destruction |  | M | 28 | 45 | 8 | LNC | LNC | 15 | BA. LH on impact counter |  |
| `ToW 6K` | Fall of the Wise | Ax | LL | 24 | 14 | -14 | 0 | 0 | 3 | Normal Hit Combo. Axe. Tech Crouch[1-48] | F1 F6 |
| `ToW K` | Beauty of Balance |  |  |  |  |  |  |  |  | SS into BOB |  |
| `ToW [2/8]K` | Beauty of Wonder |  |  |  |  |  |  |  |  | SS into BOB | F5 |
| `ToW 4K` | Comedy of Errors |  |  |  |  |  |  |  |  | SS into COE |  |

## CoE  (10)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `CoE A` | Premonition of Abraxas |  | H | 24 | 18 | -8 | 4 | 4 | 4 | LH after changing modes with Pareidolia's Awakening 2 or more times, once per match. |  |
| `CoE AA` | Condemnation Of Transgressors | Ax | HH | 24 | 40 | 2 | KND | KND | 10 | Axe | F1 |
| `CoE AB` | Premonition of Abraxas | Sw | HM | 24 | 18 | -4 | KND | LNC | 16 | Sword | F1 |
| `CoE B` | Will to Dominate | Sp | M | 26 | 24 | -6 | 14 | 14 | 9 | Spear |  |
| `CoE BB` | Will to Dominate | Sp | MM | 26 | 14 | -12 | KND | KND | 15 | Normal Hit Combo. Projectile, Spear | F1 |
| `CoE 6B` | Executioner's Gavel | Sp | M | 28 | 30 | -12 | KND | KND | 9 | Projectile, Spear |  |
| `CoE 4K` | Advocate of Change |  | L | 28 | 22 | -12 | KND | KND | 2 |  |  |
| `CoE K` | Comedy of Errors ~ Beauty of Balance |  |  |  |  |  |  |  |  | SS into BOB |  |
| `CoE [2/8]K` | Beauty Of Wonder |  |  |  |  |  |  |  |  | SS into BOB | F5 |
| `CoE 6K` | Comedy of Errors ~ Tragedy of War |  |  |  |  |  |  |  |  | SS into TOW |  |

## UNFORMED  (3)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `UNFORMED A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `UNFORMED B+K` | Pareidolia's Awakening | req | SM | 10 | 0 | -18 | -4 | -4 | 0 |  |  |
| `UNFORMED B+KA` | Pareidolia's Awakening | req | SM | 10 | 0 |  |  |  | 0 | Different outcomes on 1st/2nd/3rd/4th use. Can use B or K instead of A for same result. | F3 |

## SWORD  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `SWORD A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `SWORD B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Tech Jump[37-43] |  |

## AX  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `AX A+B` | Rebellious Abandon | req | M | 42 | 40 | 8 | KND | KND | 25 | BA. LH upon impact counter. G cancels. Can be charged (for distance) by holding A+B |  |
| `AX B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Jaills (2 hits only on guard). GI vs Highs [5-18] | F4 |

## SPEAR  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `SPEAR B+K` | Aufheben Sublimation | req | MHH | 24 | 24,12,17 | -24 | LNC | LNC | 10 |  |  |

## ALMIGHTY  (5)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Same as sword. Tech Jump[37-43] |  |
| `ALMIGHTY 4B+K` | Aufheben Sublimation | req | MHH | 24 | 24,12,17 | -24 | LNC | LNC | 10 | Same as spear. |  |
| `ALMIGHTY 6B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Same as ax. |  |
| `ALMIGHTY 8B+K` | Almighty Paradox | req | MMMMM | 12 | 41 | -20 | LNC | LNC | 14 | Tech Jump[17-100] | F1 |

## BT  (9)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Faith Betrayal | Sw | H | 14 | 12 | -6 | 4 |  | 1 | Sword |  |
| `BT 2A` | Martyr of Progress |  | SL | 16 | 12 | -6 | 4 |  | 1 |  |  |
| `BT B` | Whistleblower | Sw | M | 16 | 18 | -8 | 2 |  | 2 | Sword |  |
| `BT 2B` | Cognitive Dissonance |  | M | 16 | 18 | -8 | 4 |  | 2 |  |  |
| `BT A+B` | Rebuttal |  | M | 20 | 22 | 6 | STN | STN | 9 | BA |  |
| `BT K` | Beauty of Balance |  |  |  |  |  |  |  |  | SS into BOB |  |
| `BT [2/8]K` | Beauty of Wonder |  |  |  |  |  |  |  |  | TS. SS into BOB | F5 |
| `BT [3/6/9]K` | Tragedy of War | Ax |  |  |  |  |  |  |  | Axe. SS into TOW. Tech Crouch | F5 F6 |
| `BT [1/4/7]K` | Comedy of Errors |  |  |  |  |  |  |  |  | SS into COE | F5 |

## RE  (7)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `RE A` | Standing Ovation |  |  |  | 17 | 2 | STN |  | 33 |  |  |
| `RE AK` | Standing Ovation ~ Beauty of Balance |  |  |  | 17 |  | STN |  | 33 | SS into BOB |  |
| `RE A6K` | Standing Ovation ~ Tragedy of War |  |  |  | 17 |  | STN |  | 33 | SS into TOW |  |
| `RE A4K` | Standing Ovation ~ Comedy of Errors |  |  |  | 17 |  | STN |  | 33 | SS into COE |  |
| `RE B` | Nebulous Critique |  |  |  | 18 |  |  |  | 50 |  |  |
| `RE BB` | Nebulous Critique |  |  |  | 26,10,8,8,16 |  |  |  | 50 |  |  |
| `RE K` | Disillusionment |  |  |  |  |  |  |  | 0 | Avoids all attacks |  |

## RUN  (1)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Philosophy Slide |  | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[6-27]. Tech Crouch[27-47] | F6 |

## SC  (7)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `SC 6A+B+K` | I Shall Save Humanity! |  | M | 32 | 11,5,5,8,110 | -30 | KND | KND | 1 | Tech Jump[10-38]. AT | F1 |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `SC 6A+B` | Viva Academia |  | MMMM | 32 | 15,8,9,18 | 4 | STN | STN | 9 | BA. Tech Jump[16-??] |  |
| `SC 8A+B` | Destiny's Choice |  | MMMM | 38 | 6,6,13 | -10 | KND | KND | 15 | Normal Hit Combo. Launcher on grounded. Tech Crouch[6-11]. Tech Jump[11-38] | F1 F6 |
| `SC 8B+K` | Everlasting Antithesis |  | MMMMM | 12 | 14,10,10,10,10 | -20 | LNC | LNC | 10 |  |  |
| `SC 8WR A+B` | New World Revolution |  | M | 30 | 11,5,5.5.12 | 2 | LNC | LNC | 10 | BA. LH | F1 F5 |

## METER  (2)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `METER A+B+K` | From Science, with Love | Sw | M | 14 | 20 | -20 | KND | KND | 10 | i13 in Sword or Almighty. AT |  |
| `METER 4A+B+K` | Soul Charge |  | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |

## METER ODD  (1)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `METER ODD 236A+B+K` | Spirit Sword Salvation |  | MMMM | 16 | 8,8,8,8 | -6 | 4 | 4 | 9 | Tech Jump |  |

## METER EVEN  (1)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `METER EVEN 236A+B+K` | Evil Sword's Embrace |  | SMSMSMSM | 16 | 22,4,4,4,10 | -2 | 12 | 12 | 20 | Tech Jump | F1 |

## BACK  (1)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BACK A+G` | Transmigration | Alm | H | 18 | 80 |  | KND | KND |  | Almighty. TH | F5 |

---

# PART 3 — DERIVED INDEXES

> Derived mechanically from the raw fields. **Inherits every ⚑ flag.** Not lab-verified.

## ⭐ Branch points with 3+ follow-ups (likely designed identity tools)

> Children are **options chosen before the next input**, not a guaranteed sequence. Interruptibility after block is ❓.

| Node | Attack branches (Blk/Hit) | Stance exits K / 6K / 4K | Total |
|---|---|---|---|
| ⭐ `BB` | `BBA` -10/2 · `BBB` -6/STN | `BB4K` –/– · `BB6K` –/– · `BBK` -12/– | 5 |
| ⭐ `BoB AA` | `AAA` -8/10 · `AAB` –/KND | `AA4K` –/– · `AA6K` –/– · `AAK` -2/8 | 5 |
| `22A` |  | `22A4K` 0/STN · `22A6K` 0/STN · `22AK` 0/STN | 3 |
| `22B` |  | `22B4K` 12/STN · `22B6K` 12/STN · `22BK` 12/STN | 3 |
| `2A` |  | `2A4K` –/– · `2A6K` –/– · `2AK` -2/10 | 3 |
| `2BB` |  | `2BB4K` –/– · `2BB6K` –/– · `2BBK` -6/– | 3 |
| `FC A` |  | `A4K` –/– · `A6K` –/– · `AK` -2/10 | 3 |
| `FC A+B` |  | `A+B4K` –/– · `A+B6K` –/– · `A+BK` –/– | 3 |
| `RE A` |  | `A4K` –/STN · `A6K` –/STN · `AK` –/STN | 3 |

> ⭐ = 3+ attack branches, or 2+ attack branches **plus** stance exits.

## K / 6K / 4K suffix families — same string, three stance exits

| Base | Base Blk/Hit | `K` → BoB | `6K` → ToW | `4K` → CoE | Hit-confirm window (📚) |
|---|---|---|---|---|---|
| `22B` | -4 / STN | **12 / STN** | 12 / STN | 12 / STN | 13f |
| `22A` | -12 / 0 | **0 / STN** | 0 / STN | 0 / STN | 5f |
| `2A` | -10 / 2 | **-2 / 10** | ? / ? | ? / ? | 9f |
| `FC A` | -10 / 2 | **-2 / 10** | ? / ? | ? / ? |  |
| `BoB AA` | -6 / 0 | **-2 / 8** | ? / ? | ? / ? |  |
| `2BB` | -14 / 8 | **-6 / ?** | ? / ? | ? / ? |  |
| `BB` | -8 / 0 | **-12 / ?** | ? / ? | ? / ? |  |
| `FC A+B` | -8 / 4 | **? / ?** | ? / ? | ? / ? |  |
| `RE A` | 2 / STN | **? / STN** | ? / STN | ? / STN |  |

> Sorted by `K` (→BoB) block value. **`6K`/`4K` frames mostly unlisted** (⚑F3) — `?` means unknown, not equal.
> Wiki counterplay table: vs ToW/CoE on block, **side-step crouch-block or i12 `2A`** negates the mixup. Opponents who know this will do it.

## Neutral / FC / WR stance entries — ranked by Blk

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `22BK` | Unequivocal Love ~ Beauty Of Balance | Sw | M | 20 |  | 12 | STN | STN |  | Sword. LH. SS into BOB | F5 |
| `22B6K` | Unequivocal Love ~ Tragedy Of War |  | M | 20 |  | 12 | STN | STN |  | LH. SS into TOW | F5 |
| `22B4K` | Unequivocal Love ~ Comedy Of Errors |  | M | 20 |  | 12 | STN | STN |  | LH. SS into COE | F5 |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `22AK` | Subliminal Persuasion ~ Beauty Of Balance | Sw | H |  | 18 | 0 | STN | STN | 4 | Sword. LH. SS into BOB | F5 |
| `22A6K` | Subliminal Persuasion ~ Tragedy Of War |  | H |  | 18 | 0 | STN | STN |  | LH. SS into TOW | F5 |
| `22A4K` | Subliminal Persuasion ~ Comedy Of Errors |  | H |  | 18 | 0 | STN | STN |  | LH. SS into COE | F5 |
| `2AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `FC AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `2BBK` | Path to Glory ~ Beauty of Balance | Sw | MM | 16 | 12 | -6 |  |  |  | Sword. SS into BOB | F1 |
| `1BB` | Save the Betrayed |  | LH | 18 | 16,24 | -8 | 8 | 8 | 14 | GI [11-24] vs L. SS |  |
| `BBK` | Seven Sages' Aphorism ~ Beauty of Balance | Sw | MM | 14 | 12.12 | -12 |  |  |  | Normal Hit Combo. Sword. SS into BOB | F1 |
| `1B` | Save the Betrayed |  | L | 18 | 16 | -16 | -4 | -4 | 9 | GI [11-24] vs L. SS |  |
| `2A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `2A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `FC A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `FC A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `BB6K` | Seven Sages' Aphorism ~ Tragedy of War |  | MM | 14 | 12,12 |  |  |  |  | SS into TOW | F3 |
| `BB4K` | Seven Sages' Aphorism ~ Comedy of Errors |  | MM | 14 | 12,12 |  |  |  |  | SS into COE | F3 |
| `2BB6K` | Path to Glory ~ Tragedy of War |  | MM | 16 | 12 |  |  |  |  | SS into TOW | F1 F3 |
| `2BB4K` | Path to Glory ~ Comedy of Errors |  | MM | 16 | 12 |  |  |  |  | SS into COE | F1 F3 |
| `FC A+BK` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into BOB | F3 |
| `FC A+B6K` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into TOW | F3 |
| `FC A+B4K` | Ascension Of The Three Magi |  | M | 12 | 16 |  |  |  |  | SS into COE | F3 |
| `K` | Disillusionment |  |  |  |  |  |  |  |  | 20F. SS into BOB |  |
| `[2/8]K` | Beauty of Wonder |  |  |  |  |  |  |  |  | TS. SS into BOB | F5 |
| `22K` | Beauty of Performance |  |  |  |  |  |  |  |  | TS. SS into BOB | F5 |
| `[3/6/9]K` | Tragedy of War |  |  |  |  |  |  |  |  | SS into TOW | F5 |
| `66K` | Tragedy of Performance |  |  |  |  |  |  |  |  | SS into TOW. Tech Crouch | F5 F6 |
| `[1/4/7]K` | Comedy of Errors | Sp |  |  |  |  |  |  |  | 20F, Spear. SS into COE | F5 |
| `44K` | Comedy of Performance |  |  |  |  |  |  |  |  | SS into COE | F5 |

## Moves by weapon (what each mode gives — neutral + FC + WR only)

| Mode | Moves (i, blk) |
|---|---|
| **Sword** (16) | `A` i10 -8 · `AA` i10 -6 · `BT A` i14 -6 · `B` i14 -10 · `BB` i14 -8 · `BBK` i14 -12 · `6BaB` i14 -8 · `WR B` i14 -8 · `WR BB` i14 -12 · `2B` i16 -14 · `2BB` i16 -14 · `2BBK` i16 -6 · `BT B` i16 -8 · `22BK` i20 12 · `b6` i22 -2 · `22AK` i? 0 |
| **Axe** (9) | `6B` i14 -6 · `FC 3B` i16 -12 · `FC 3BB` i16 -8 · `6A` i18 -8 · `6AA` i18 0 · `FC 3A` i18 0 · `66A` i20 -1 · `66B` i24 -4 · `BT [3/6/9]K` i?  |
| **Spear** (9) | `FC 1B` i12 -14 · `6BA` i14 -4 · `4A` i20 -6 · `1A` i26 -12 · `4B` i28 4 · `44A` i32 2 · `7B` i40 -18 · `44(B)` i56 -2 · `[1/4/7]K` i?  |

> Built from Notes text only; strings whose **later** hit forms a different weapon (e.g. `AB` sword→axe, `6BA` axe→spear per 📚) are not split here.

## Plus or neutral on BLOCK

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `UNFORMED A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `SWORD A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `22BK` | Unequivocal Love ~ Beauty Of Balance | Sw | M | 20 |  | 12 | STN | STN |  | Sword. LH. SS into BOB | F5 |
| `22B6K` | Unequivocal Love ~ Tragedy Of War |  | M | 20 |  | 12 | STN | STN |  | LH. SS into TOW | F5 |
| `22B4K` | Unequivocal Love ~ Comedy Of Errors |  | M | 20 |  | 12 | STN | STN |  | LH. SS into COE | F5 |
| `AX A+B` | Rebellious Abandon | req | M | 42 | 40 | 8 | KND | KND | 25 | BA. LH upon impact counter. G cancels. Can be charged (for distance) by holding A+B |  |
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ToW B` | War and Destruction |  | M | 28 | 45 | 8 | LNC | LNC | 15 | BA. LH on impact counter |  |
| `(B)+(G)` | Director of Fate |  | MMM | 68 | 50 | 8 |  |  | 20 | BA. RE | F1 F5 |
| `BT A+B` | Rebuttal |  | M | 20 | 22 | 6 | STN | STN | 9 | BA |  |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `SC 6A+B` | Viva Academia |  | MMMM | 32 | 15,8,9,18 | 4 | STN | STN | 9 | BA. Tech Jump[16-??] |  |
| `44A` | Justice for All | Sp | H | 32 | 24 | 2 | KND | KND | 4 | Spear. Jumps but is not considered TechJump | F5 |
| `ToW A` | Scream of Defiance | Ax | H | 22 | 40 | 2 | KND | KND | 9 | Axe. BA. Tech Crouch[1-5] | F6 |
| `CoE AA` | Condemnation Of Transgressors | Ax | HH | 24 | 40 | 2 | KND | KND | 10 | Axe | F1 |
| `RE A` | Standing Ovation |  |  |  | 17 | 2 | STN |  | 33 |  |  |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `SC 8WR A+B` | New World Revolution |  | M | 30 | 11,5,5.5.12 | 2 | LNC | LNC | 10 | BA. LH | F1 F5 |
| `6AA` | Light in the Dark | Ax | HH | 18 | 16,24 | 0 | KND | KND | 5 | Normal Hit Combo. Jails, Ax. Tech Crouch[9-26] | F6 |
| `FC 3A` | Impulse Pincer | Ax | HH | 18 | 16 | 0 | KND | KND | 5 | Normal Hit Combo. Axe | F1 |
| `BA` | Heart on Trial |  | MH | 14 | 12,22 | 0 | KND | KND | 4 |  |  |
| `6BB` | Truculent World |  | MM | 14 | 16,25 | 0 | KND | KND | 17 | Tech Jump[7-30]. Tech Crouch[30-56] | F6 |
| `22AK` | Subliminal Persuasion ~ Beauty Of Balance | Sw | H |  | 18 | 0 | STN | STN | 4 | Sword. LH. SS into BOB | F5 |
| `22A6K` | Subliminal Persuasion ~ Tragedy Of War |  | H |  | 18 | 0 | STN | STN |  | LH. SS into TOW | F5 |
| `22A4K` | Subliminal Persuasion ~ Comedy Of Errors |  | H |  | 18 | 0 | STN | STN |  | LH. SS into COE | F5 |
| `METER 4A+B+K` | Soul Charge |  | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |

## Safe (blk ≥ -8) AND fast (i ≤ 16)

> ⚠️ +8f if out of mode.

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `METER 4A+B+K` | Soul Charge |  | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `AAB` | Death To Defectors |  | HHM | 10 | 10,12,24 | -4 | 6 | 6 | 9 |  |  |
| `AA` | Pilgrimage of Anthropos | Sw | HH | 10 | 10,12 | -6 | 0 | 0 | 3 | Normal Hit Combo. Sword |  |
| `A` | Pilgrimage of Anthropos | Sw | H | 10 | 10 | -8 | -2 | -2 | 1 | Sword |  |
| `AAA` | Pilgrimage of Anthropos |  | HHMMMMM | 10 | 10,12,10,5,5,5,5,10 | -8 | 4 | 4 | 11 |  | F1 |
| `BoB AAK` | Ideological Insight ~ Beauty of Balance | Sw | HH | 12 | 10 | -2 | 8 | 8 |  | Normal Hit Combo. Sword. SS into BOB | F1 |
| `BoB A` | Salvation Doctrine | Sw | H | 12 | 10 | -6 | 0 | 0 | 4 | Sword |  |
| `BoB AA` | Salvation Doctrine | Sw | HH | 12 | 10,10 | -6 | 0 | 0 | 5 | Normal Hit Combo. Sword |  |
| `FC A+B` | Ascension Of The Three Magi |  | M | 12 | 16 | -8 | 4 | 4 | 2 | Tech Crouch[0-5] | F6 |
| `BoB AAA` | Salvation Doctrine | Sw | HHH | 12 | 10,10,20 | -8 | 10 | 10 | 7 | Sword |  |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `BA` | Heart on Trial |  | MH | 14 | 12,22 | 0 | KND | KND | 4 |  |  |
| `6BB` | Truculent World |  | MM | 14 | 16,25 | 0 | KND | KND | 17 | Tech Jump[7-30]. Tech Crouch[30-56] | F6 |
| `2AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `FC AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `6BA` | Usurp the Autocracy | Sp | MHHH | 14 | 16,10,10,15 | -4 | -8 | -8 | 8 | Spear |  |
| `BT A` | Faith Betrayal | Sw | H | 14 | 12 | -6 | 4 |  | 1 | Sword |  |
| `BBB` | Seven Sages' Aphorism |  | M | 14 | 12,12,14,8,8,16 | -6 | STN | STN | 13 |  | F1 |
| `6B` | Usurp the Autocracy | Ax | M | 14 | 16 | -6 | 0 | 0 | 5 | Axe |  |
| `BoB K` | Raconteur |  | H | 14 | 14 | -6 | 8 | STN | 1 |  |  |
| `BB` | Seven Sages' Aphorism | Sw | MM | 14 | 12,12 | -8 | 0 | 0 | 4 | Normal Hit Combo. Sword |  |
| `6BaB` | Barbaric Lament | Sw | MM | 14 | 16,24 | -8 | 6 | 6 | 6 | Sword |  |
| `WR B` | Enlightenment | Sw | M | 14 | 16 | -8 | 2 | 2 | 9 | Sword |  |
| `FC B` | Nihilism |  | M | 15 | 18 | -8 | 5 | 5 | 2 |  |  |
| `METER EVEN 236A+B+K` | Evil Sword's Embrace |  | SMSMSMSM | 16 | 22,4,4,4,10 | -2 | 12 | 12 | 20 | Tech Jump | F1 |
| `BT 2A` | Martyr of Progress |  | SL | 16 | 12 | -6 | 4 |  | 1 |  |  |
| `2BBK` | Path to Glory ~ Beauty of Balance | Sw | MM | 16 | 12 | -6 |  |  |  | Sword. SS into BOB | F1 |
| `METER ODD 236A+B+K` | Spirit Sword Salvation |  | MMMM | 16 | 8,8,8,8 | -6 | 4 | 4 | 9 | Tech Jump |  |
| `b4` | Tears of Pain |  | M | 16 | 24 | -8 | 2 | 2 | 2 | LH in post-GI |  |
| `FC 3BB` | Coup D'état | Ax | M | 16 | 22,19 | -8 | KND | KND | 15 | Normal Hit Combo. Axe | F1 |
| `BT B` | Whistleblower | Sw | M | 16 | 18 | -8 | 2 |  | 2 | Sword |  |
| `BT 2B` | Cognitive Dissonance |  | M | 16 | 18 | -8 | 4 |  | 2 |  |  |

## Lows — true `L` in the level string

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `FC 1A` | Righteous Judgment |  | L | 16 | 18 | -14 | 0 | 4 | 4 |  |  |
| `1B` | Save the Betrayed |  | L | 18 | 16 | -16 | -4 | -4 | 9 | GI [11-24] vs L. SS |  |
| `1BB` | Save the Betrayed |  | LH | 18 | 16,24 | -8 | 8 | 8 | 14 | GI [11-24] vs L. SS |  |
| `AX B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Jaills (2 hits only on guard). GI vs Highs [5-18] | F4 |
| `ALMIGHTY 6B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Same as ax. |  |
| `RUN K` | Philosophy Slide |  | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[6-27]. Tech Crouch[27-47] | F6 |
| `6B+K` | O, Fallen Scholar | req | L | 22 | 20,34 | -24 | KND | KND | 4 | Only in Axe or Almighty, Resets weapon, +4 and no AT at tip. AT | F1 |
| `ToW 6K` | Fall of the Wise | Ax | LL | 24 | 14 | -14 | 0 | 0 | 3 | Normal Hit Combo. Axe. Tech Crouch[1-48] | F1 F6 |
| `1A` | Peace Through Hardship | Sp | L | 26 | 30 | -12 | 6 | 6 | 4 | Spear. GI[41-66] vs M L |  |
| `2A+B` | Geometrical Precision |  | L | 26 | 0 | -12 | 8 | 8 |  | Quake |  |
| `CoE 4K` | Advocate of Change |  | L | 28 | 22 | -12 | KND | KND | 2 |  |  |
| `9A` | Absolute Devotion |  | L | 32 | 22 | -16 | 2 | 2 | 4 |  |  |
| `7A` | Thorough Impact |  | L | 40 | 28 | -18 | 4 | 4 | 4 |  |  |

### SL only (standing guard blocks these)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `2A` | Heretic's Sweep |  | SLSL | 14 | 8,8 | -10 | 2 | 2 | 2 | Tech Crouch[8-RC] | F4 F6 |
| `2AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `2A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `2A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `FC A` | Heretic's Sweep |  | SLSL | 14 | 8,8 | -10 | 2 | 2 | 2 |  |  |
| `FC AK` | Heretic's Sweep ~ Beauty of Balance |  | SLSL | 14 | 8,8 | -2 | 10 | 10 |  | SS into BOB |  |
| `FC A6K` | Heretic's Sweep ~ Tragedy of War |  | SLSL | 14 | 8,8 |  |  |  |  | SS into TOB | F3 F4 |
| `FC A4K` | Heretic's Sweep ~ Comedy of Errors |  | SLSL |  | 8,8 |  |  |  |  | SS into COE | F3 |
| `BT 2A` | Martyr of Progress |  | SL | 16 | 12 | -6 | 4 |  | 1 |  |  |

## Launchers / knockdowns / stuns (on normal hit)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `BoB AAB` | Ideological Insight |  | HHM | 12 | 10,10,30 |  | KND | KND | 10 |  |  |
| `BA` | Heart on Trial |  | MH | 14 | 12,22 | 0 | KND | KND | 4 |  |  |
| `6BB` | Truculent World |  | MM | 14 | 16,25 | 0 | KND | KND | 17 | Tech Jump[7-30]. Tech Crouch[30-56] | F6 |
| `METER A+B+K` | From Science, with Love | Sw | M | 14 | 20 | -20 | KND | KND | 10 | i13 in Sword or Almighty. AT |  |
| `FC 3BB` | Coup D'état | Ax | M | 16 | 22,19 | -8 | KND | KND | 15 | Normal Hit Combo. Axe | F1 |
| `6AA` | Light in the Dark | Ax | HH | 18 | 16,24 | 0 | KND | KND | 5 | Normal Hit Combo. Jails, Ax. Tech Crouch[9-26] | F6 |
| `FC 3A` | Impulse Pincer | Ax | HH | 18 | 16 | 0 | KND | KND | 5 | Normal Hit Combo. Axe | F1 |
| `3BB` | Eternal Conflict |  | MM | 20 | 24,18 | -10 | KND | KND | 15 | LH vs crouch guard | F6 |
| `AX B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Jaills (2 hits only on guard). GI vs Highs [5-18] | F4 |
| `ALMIGHTY 6B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Same as ax. |  |
| `RUN K` | Philosophy Slide |  | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[6-27]. Tech Crouch[27-47] | F6 |
| `6B+K` | O, Fallen Scholar | req | L | 22 | 20,34 | -24 | KND | KND | 4 | Only in Axe or Almighty, Resets weapon, +4 and no AT at tip. AT | F1 |
| `ToW A` | Scream of Defiance | Ax | H | 22 | 40 | 2 | KND | KND | 9 | Axe. BA. Tech Crouch[1-5] | F6 |
| `CoE AA` | Condemnation Of Transgressors | Ax | HH | 24 | 40 | 2 | KND | KND | 10 | Axe | F1 |
| `CoE AB` | Premonition of Abraxas | Sw | HM | 24 | 18 | -4 | KND | LNC | 16 | Sword | F1 |
| `CoE BB` | Will to Dominate | Sp | MM | 26 | 14 | -12 | KND | KND | 15 | Normal Hit Combo. Projectile, Spear | F1 |
| `CoE 6B` | Executioner's Gavel | Sp | M | 28 | 30 | -12 | KND | KND | 9 | Projectile, Spear |  |
| `CoE 4K` | Advocate of Change |  | L | 28 | 22 | -12 | KND | KND | 2 |  |  |
| `9B` | Extinction Betrayer |  | M | 32 | 38 | -4 | KND | KND | 15 | Tech Jump[10-31]. Tech Crouch[34-50] | F6 |
| `44A` | Justice for All | Sp | H | 32 | 24 | 2 | KND | KND | 4 | Spear. Jumps but is not considered TechJump | F5 |
| `SC 6A+B+K` | I Shall Save Humanity! |  | M | 32 | 11,5,5,8,110 | -30 | KND | KND | 1 | Tech Jump[10-38]. AT | F1 |
| `8A+B` | Encyclopedic Mind |  | M | 38 | 30 | -22 | KND | KND | 9 |  |  |
| `SC 8A+B` | Destiny's Choice |  | MMMM | 38 | 6,6,13 | -10 | KND | KND | 15 | Normal Hit Combo. Launcher on grounded. Tech Crouch[6-11]. Tech Jump[11-38] | F1 F6 |
| `UNFORMED A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `SWORD A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `AX A+B` | Rebellious Abandon | req | M | 42 | 40 | 8 | KND | KND | 25 | BA. LH upon impact counter. G cancels. Can be charged (for distance) by holding A+B |  |
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `AB` | Tragedy of Humanity |  | HM | 10 | 10,23 | -20 | LNC | LNC | 8 |  |  |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `FC 1B` | Talon Spear | Sp | M | 12 | 24 | -14 | LNC | LNC | 9 | Spear |  |
| `ALMIGHTY 8B+K` | Almighty Paradox | req | MMMMM | 12 | 41 | -20 | LNC | LNC | 14 | Tech Jump[17-100] | F1 |
| `SC 8B+K` | Everlasting Antithesis |  | MMMMM | 12 | 14,10,10,10,10 | -20 | LNC | LNC | 10 |  |  |
| `FC 3B` | Coup D'état | Ax | M | 16 | 22 | -12 | LNC | LNC | 9 | Axe |  |
| `SWORD B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Tech Jump[37-43] |  |
| `ALMIGHTY B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Same as sword. Tech Jump[37-43] |  |
| `B+K` | Pleroma Ascension | req | MM | 18 | 18 | -20 | LNC | LNC | 14 | Normal Hit Combo. Projectile, Only in Sword or Almighty, Resets weapon | F1 |
| `3B` | Eternal Conflict |  | M | 20 | 24 | -16 | LNC | LNC | 9 | LH vs crouch guard | F6 |
| `BoB B` | Karmic Consequence |  | M | 20 | 28 | -8 | LNC | LNC | 15 | LH after guard crush |  |
| `SPEAR B+K` | Aufheben Sublimation | req | MHH | 24 | 24,12,17 | -24 | LNC | LNC | 10 |  |  |
| `ALMIGHTY 4B+K` | Aufheben Sublimation | req | MHH | 24 | 24,12,17 | -24 | LNC | LNC | 10 | Same as spear. |  |
| `66B` | Trials of Conflict | Ax | M | 24 | 28 | -4 | LNC | LNC | 9 | Axe | F5 |
| `ToW B` | War and Destruction |  | M | 28 | 45 | 8 | LNC | LNC | 15 | BA. LH on impact counter |  |
| `SC 8WR A+B` | New World Revolution |  | M | 30 | 11,5,5.5.12 | 2 | LNC | LNC | 10 | BA. LH | F1 F5 |
| `4B+K` | Aufheben Sublimation | req | MHH | 32 | 59 | -24 | LNC | LNC | 10 | Only in Spear or Almighty, Resets weapon. GI [4-16] vs M L | F1 |
| `7B` | Revelatory Punishment | Sp | M | 40 | 22 | -18 | LNC | LNC | 9 | Spear. Tech Jump[8-31]. Tech Crouch[34-39] | F6 |
| `214A+B` | Ophion's Omnipresence |  | M | 62 | 45 |  | LNC | LNC |  | UA. Normal Hit Combo. Tech Jump[60-81] |  |
| `BBB` | Seven Sages' Aphorism |  | M | 14 | 12,12,14,8,8,16 | -6 | STN | STN | 13 |  | F1 |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `BT A+B` | Rebuttal |  | M | 20 | 22 | 6 | STN | STN | 9 | BA |  |
| `22B` | Unequivocal Love |  | M | 20 | 22 | -4 | STN | STN | 9 | LH versus whiffed attacks | F5 |
| `22BK` | Unequivocal Love ~ Beauty Of Balance | Sw | M | 20 |  | 12 | STN | STN |  | Sword. LH. SS into BOB | F5 |
| `22B6K` | Unequivocal Love ~ Tragedy Of War |  | M | 20 |  | 12 | STN | STN |  | LH. SS into TOW | F5 |
| `22B4K` | Unequivocal Love ~ Comedy Of Errors |  | M | 20 |  | 12 | STN | STN |  | LH. SS into COE | F5 |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `6A+B` | Epistemological Punishment |  | M | 32 | 14,9,8,16 | -6 | STN | STN | 9 | Tech Jump[16-69] | F1 |
| `SC 6A+B` | Viva Academia |  | MMMM | 32 | 15,8,9,18 | 4 | STN | STN | 9 | BA. Tech Jump[16-??] |  |
| `44(B)` | No More Naysayers | Sp | M | 56 | 30 | -2 | STN | STN | 9 | Projectile, Spear. LH. BA | F5 |
| `22AK` | Subliminal Persuasion ~ Beauty Of Balance | Sw | H |  | 18 | 0 | STN | STN | 4 | Sword. LH. SS into BOB | F5 |
| `22A6K` | Subliminal Persuasion ~ Tragedy Of War |  | H |  | 18 | 0 | STN | STN |  | LH. SS into TOW | F5 |
| `22A4K` | Subliminal Persuasion ~ Comedy Of Errors |  | H |  | 18 | 0 | STN | STN |  | LH. SS into COE | F5 |
| `RE A` | Standing Ovation |  |  |  | 17 | 2 | STN |  | 33 |  |  |
| `RE AK` | Standing Ovation ~ Beauty of Balance |  |  |  | 17 |  | STN |  | 33 | SS into BOB |  |
| `RE A6K` | Standing Ovation ~ Tragedy of War |  |  |  | 17 |  | STN |  | 33 | SS into TOW |  |
| `RE A4K` | Standing Ovation ~ Comedy of Errors |  |  |  | 17 |  | STN |  | 33 | SS into COE |  |

## Lethal Hits

> Overview page LH list (📚, conditions blank there): `b4` · `3B` · `4B` · `Unformed A+B` · `Sword/Ax/[Ax]/Spear/Almighty A+B` · `22A` · `22B` · `44B` · `44[B]` · `8WR A+B` · `BoB B` · `ToW B` · `CoE A` · `RE A` · `RE B` · `SC A+B` · `SC 8WR A+B`.

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `b4` | Tears of Pain |  | M | 16 | 24 | -8 | 2 | 2 | 2 | LH in post-GI |  |
| `3B` | Eternal Conflict |  | M | 20 | 24 | -16 | LNC | LNC | 9 | LH vs crouch guard | F6 |
| `3BB` | Eternal Conflict |  | MM | 20 | 24,18 | -10 | KND | KND | 15 | LH vs crouch guard | F6 |
| `3B(B)` | Eternal Conflict |  | MM | 20 | 24,32 | -4 |  |  | 20 | LH vs crouch guard | F6 |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `UNFORMED A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `SWORD A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `AX A+B` | Rebellious Abandon | req | M | 42 | 40 | 8 | KND | KND | 25 | BA. LH upon impact counter. G cancels. Can be charged (for distance) by holding A+B |  |
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `22A` | Subliminal Persuasion |  | H | 22 | 18 | -12 | 0 | STN | 4 | LH on run counter | F5 |
| `22AK` | Subliminal Persuasion ~ Beauty Of Balance | Sw | H |  | 18 | 0 | STN | STN | 4 | Sword. LH. SS into BOB | F5 |
| `22A6K` | Subliminal Persuasion ~ Tragedy Of War |  | H |  | 18 | 0 | STN | STN |  | LH. SS into TOW | F5 |
| `22A4K` | Subliminal Persuasion ~ Comedy Of Errors |  | H |  | 18 | 0 | STN | STN |  | LH. SS into COE | F5 |
| `22B` | Unequivocal Love |  | M | 20 | 22 | -4 | STN | STN | 9 | LH versus whiffed attacks | F5 |
| `22BK` | Unequivocal Love ~ Beauty Of Balance | Sw | M | 20 |  | 12 | STN | STN |  | Sword. LH. SS into BOB | F5 |
| `22B6K` | Unequivocal Love ~ Tragedy Of War |  | M | 20 |  | 12 | STN | STN |  | LH. SS into TOW | F5 |
| `22B4K` | Unequivocal Love ~ Comedy Of Errors |  | M | 20 |  | 12 | STN | STN |  | LH. SS into COE | F5 |
| `44B` | No More Naysayers |  | M | 36 | 20 | -14 | -8 | -8 | 5 | LH on long-range hit | F5 |
| `44(B)` | No More Naysayers | Sp | M | 56 | 30 | -2 | STN | STN | 9 | Projectile, Spear. LH. BA | F5 |
| `8WR A+B` | March of Humanity |  | M | 30 | 40 | -12 | 4 | 4 | 10 | LH after hitting with sword, ax, and spear weapon arts | F5 |
| `BoB B` | Karmic Consequence |  | M | 20 | 28 | -8 | LNC | LNC | 15 | LH after guard crush |  |
| `ToW B` | War and Destruction |  | M | 28 | 45 | 8 | LNC | LNC | 15 | BA. LH on impact counter |  |
| `CoE A` | Premonition of Abraxas |  | H | 24 | 18 | -8 | 4 | 4 | 4 | LH after changing modes with Pareidolia's Awakening 2 or more times, once per match. |  |
| `SC 8WR A+B` | New World Revolution |  | M | 30 | 11,5,5.5.12 | 2 | LNC | LNC | 10 | BA. LH | F1 F5 |

## Guard Impacts / dodges / invincibility — check WHAT each covers

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `1A` | Peace Through Hardship | Sp | L | 26 | 30 | -12 | 6 | 6 | 4 | Spear. GI[41-66] vs M L |  |
| `4A` | Fell the Unworthy | Sp | H | 20 | 22 | -6 | 8 | 8 | 4 | Spear. GI[13-18] vs H |  |
| `b4` | Tears of Pain |  | M | 16 | 24 | -8 | 2 | 2 | 2 | LH in post-GI |  |
| `1B` | Save the Betrayed |  | L | 18 | 16 | -16 | -4 | -4 | 9 | GI [11-24] vs L. SS |  |
| `1BB` | Save the Betrayed |  | LH | 18 | 16,24 | -8 | 8 | 8 | 14 | GI [11-24] vs L. SS |  |
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `AX B+K` | O, Fallen Scholar | req | L | 20 | 54 | -24 | KND | KND | 10 | Jaills (2 hits only on guard). GI vs Highs [5-18] | F4 |
| `4B+K` | Aufheben Sublimation | req | MHH | 32 | 59 | -24 | LNC | LNC | 10 | Only in Spear or Almighty, Resets weapon. GI [4-16] vs M L | F1 |
| `RE K` | Disillusionment |  |  |  |  |  |  |  | 0 | Avoids all attacks |  |
| `METER 4A+B+K` | Soul Charge |  | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |

## Break Attacks / Unblockables

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `4B` | Instruct the Unwise | Sp | M | 28 | 25 | 4 | STN | STN | 15 | Spear. BA. GI [15-28] vs M L. LH in post-GI. SS on GI |  |
| `UNFORMED A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `SWORD A+B` | Harmonius Abandon | req | M | 42 | 40 | 12 | KND | KND | 15 | BA. LH upon impact counter. G cancels |  |
| `AX A+B` | Rebellious Abandon | req | M | 42 | 40 | 8 | KND | KND | 25 | BA. LH upon impact counter. G cancels. Can be charged (for distance) by holding A+B |  |
| `SPEAR A+B` | Fraternal Abandon | req | M | 42 | 24 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `ALMIGHTY A+B` | Lawless Abandon | req | M | 42 | 32 | 8 | KND | KND | 15 | BA. LH upon impact counter. G cancels GI [11-22] vs M |  |
| `214A+B` | Ophion's Omnipresence |  | M | 62 | 45 |  | LNC | LNC |  | UA. Normal Hit Combo. Tech Jump[60-81] |  |
| `BT A+B` | Rebuttal |  | M | 20 | 22 | 6 | STN | STN | 9 | BA |  |
| `44(B)` | No More Naysayers | Sp | M | 56 | 30 | -2 | STN | STN | 9 | Projectile, Spear. LH. BA | F5 |
| `ToW A` | Scream of Defiance | Ax | H | 22 | 40 | 2 | KND | KND | 9 | Axe. BA. Tech Crouch[1-5] | F6 |
| `ToW B` | War and Destruction |  | M | 28 | 45 | 8 | LNC | LNC | 15 | BA. LH on impact counter |  |
| `(B)+(G)` | Director of Fate |  | MMM | 68 | 50 | 8 |  |  | 20 | BA. RE | F1 F5 |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `SC 6A+B` | Viva Academia |  | MMMM | 32 | 15,8,9,18 | 4 | STN | STN | 9 | BA. Tech Jump[16-??] |  |
| `SC 8WR A+B` | New World Revolution |  | M | 30 | 11,5,5.5.12 | 2 | LNC | LNC | 10 | BA. LH | F1 F5 |

## Projectiles

> Dustloop: projectiles don't trigger GI hitstun and are dodged by aGI.

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Plunder the Depths | Ax | H | 20 | 26 | -1 | -12 |  | 2 | Projectile, Axe | F5 |
| `44(B)` | No More Naysayers | Sp | M | 56 | 30 | -2 | STN | STN | 9 | Projectile, Spear. LH. BA | F5 |
| `B+K` | Pleroma Ascension | req | MM | 18 | 18 | -20 | LNC | LNC | 14 | Normal Hit Combo. Projectile, Only in Sword or Almighty, Resets weapon | F1 |
| `CoE BB` | Will to Dominate | Sp | MM | 26 | 14 | -12 | KND | KND | 15 | Normal Hit Combo. Projectile, Spear | F1 |
| `CoE 6B` | Executioner's Gavel | Sp | M | 28 | 30 | -12 | KND | KND | 9 | Projectile, Spear |  |

## Slide inputs (lowercase)

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `b6` | Adulation Blade | Sw | H | 22 | 24 | -2 | 6 | 6 | 9 | Sword. Tech Crouch[14-21] | F6 |
| `b4` | Tears of Pain |  | M | 16 | 24 | -8 | 2 | 2 | 2 | LH in post-GI |  |
| `6BaB` | Barbaric Lament | Sw | MM | 14 | 16,24 | -8 | 6 | 6 | 6 | Sword |  |

## Tech Crouch / Tech Jump → ❓ FC/WR candidates

> Azwel has **14 FC moves** (incl. `FC 1B` i12 LNC — 📚 "fastest crouch launcher in the game") and **3 WR moves**. A TC window ending before recovery means the move does **not** necessarily end crouched.

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `6A` | Light in the Dark | Ax | H | 18 | 16 | -8 | 6 | 6 | 4 | Axe. Tech Crouch[9-26] | F6 |
| `6AA` | Light in the Dark | Ax | HH | 18 | 16,24 | 0 | KND | KND | 5 | Normal Hit Combo. Jails, Ax. Tech Crouch[9-26] | F6 |
| `2A` | Heretic's Sweep |  | SLSL | 14 | 8,8 | -10 | 2 | 2 | 2 | Tech Crouch[8-RC] | F4 F6 |
| `WR A` | Double Cross Baptism |  | M | 18 | 20 | -10 | 7 | 7 | 4 | Tech Crouch | F6 |
| `b6` | Adulation Blade | Sw | H | 22 | 24 | -2 | 6 | 6 | 9 | Sword. Tech Crouch[14-21] | F6 |
| `6BB` | Truculent World |  | MM | 14 | 16,25 | 0 | KND | KND | 17 | Tech Jump[7-30]. Tech Crouch[30-56] | F6 |
| `3B` | Eternal Conflict |  | M | 20 | 24 | -16 | LNC | LNC | 9 | LH vs crouch guard | F6 |
| `3BB` | Eternal Conflict |  | MM | 20 | 24,18 | -10 | KND | KND | 15 | LH vs crouch guard | F6 |
| `3B(B)` | Eternal Conflict |  | MM | 20 | 24,32 | -4 |  |  | 20 | LH vs crouch guard | F6 |
| `9B` | Extinction Betrayer |  | M | 32 | 38 | -4 | KND | KND | 15 | Tech Jump[10-31]. Tech Crouch[34-50] | F6 |
| `8B` | Biting Critique |  | M | 26 | 20 | -6 | 6 | 6 | 9 | Tech Jump[8-30] |  |
| `7B` | Revelatory Punishment | Sp | M | 40 | 22 | -18 | LNC | LNC | 9 | Spear. Tech Jump[8-31]. Tech Crouch[34-39] | F6 |
| `6A+B` | Epistemological Punishment |  | M | 32 | 14,9,8,16 | -6 | STN | STN | 9 | Tech Jump[16-69] | F1 |
| `4A+B` | Power of Pathos |  | M | 20 | 20 | -6 | 8 | 18 | 2 | Tech Crouch[18-45] | F6 |
| `214A+B` | Ophion's Omnipresence |  | M | 62 | 45 |  | LNC | LNC |  | UA. Normal Hit Combo. Tech Jump[60-81] |  |
| `SWORD B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Tech Jump[37-43] |  |
| `ALMIGHTY B+K` | Pleroma Ascesion | req | MM | 18 | 18,22 | -20 | LNC | LNC | 14 | Same as sword. Tech Jump[37-43] |  |
| `ALMIGHTY 8B+K` | Almighty Paradox | req | MMMMM | 12 | 41 | -20 | LNC | LNC | 14 | Tech Jump[17-100] | F1 |
| `FC A+B` | Ascension Of The Three Magi |  | M | 12 | 16 | -8 | 4 | 4 | 2 | Tech Crouch[0-5] | F6 |
| `K+G` | Appeal |  |  |  |  |  |  |  |  | Taunt. G cancels. Tech Crouch | F6 |
| `RUN K` | Philosophy Slide |  | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump[6-27]. Tech Crouch[27-47] | F6 |
| `BT [3/6/9]K` | Tragedy of War | Ax |  |  |  |  |  |  |  | Axe. SS into TOW. Tech Crouch | F5 F6 |
| `66K` | Tragedy of Performance |  |  |  |  |  |  |  |  | SS into TOW. Tech Crouch | F5 F6 |
| `ToW A` | Scream of Defiance | Ax | H | 22 | 40 | 2 | KND | KND | 9 | Axe. BA. Tech Crouch[1-5] | F6 |
| `ToW 6K` | Fall of the Wise | Ax | LL | 24 | 14 | -14 | 0 | 0 | 3 | Normal Hit Combo. Axe. Tech Crouch[1-48] | F1 F6 |
| `METER ODD 236A+B+K` | Spirit Sword Salvation |  | MMMM | 16 | 8,8,8,8 | -6 | 4 | 4 | 9 | Tech Jump |  |
| `METER EVEN 236A+B+K` | Evil Sword's Embrace |  | SMSMSMSM | 16 | 22,4,4,4,10 | -2 | 12 | 12 | 20 | Tech Jump | F1 |
| `SC 6A+B+K` | I Shall Save Humanity! |  | M | 32 | 11,5,5,8,110 | -30 | KND | KND | 1 | Tech Jump[10-38]. AT | F1 |
| `SC AAA` | Road to Redemption |  | HHM | 10 | 10,10,11,5,5,6,11 | 2 | LNC | LNC | 11 | First 2 and last 6 hits Normal Hit Combo. BA. Tech Jump | F1 |
| `SC BBB` | Epistemophilia |  | MMMMMM | 14 | 13,13,15,8,9,18 | 4 | STN |  | 13 | BA. Tech Jump[16-??] |  |
| `SC 6A+B` | Viva Academia |  | MMMM | 32 | 15,8,9,18 | 4 | STN | STN | 9 | BA. Tech Jump[16-??] |  |
| `SC 8A+B` | Destiny's Choice |  | MMMM | 38 | 6,6,13 | -10 | KND | KND | 15 | Normal Hit Combo. Launcher on grounded. Tech Crouch[6-11]. Tech Jump[11-38] | F1 F6 |

## Throws

> Dustloop: universal `A+G` / `4A+G` are **High** throws → crouching avoids them. Throws put Azwel in **Almighty**.

| Input | Name | Wpn | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Modify the Weak | Alm | H | 18 | 50 |  | KND | KND |  | Almighty. TH |  |
| `4A+G` | Reformation | Alm | H | 18 | 60 |  | KND | KND |  | Almighty. TH |  |
| `BACK A+G` | Transmigration | Alm | H | 18 | 80 |  | KND | KND |  | Almighty. TH | F5 |

## ⚑ Data-reliability flag index

| Flag | Rows |
|---|---|
| **F1** (28) | `AAA` · `FC 3A` · `BBB` · `BBK` · `2BBK` · `2BB6K` · `2BB4K` · `FC 3BB` · `WR BB` · `6A+B` · `ALMIGHTY 8B+K` · `B+K` · `6B+K` · `4B+K` · `BoB AAK` · `BoB AA6K` · `BoB AA4K` · `ToW 6K` · `CoE AA` · `CoE AB` · `CoE BB` · `B+G` · `(B)+(G)` · `METER EVEN 236A+B+K` · `SC 6A+B+K` · `SC AAA` · `SC 8A+B` · `SC 8WR A+B` |
| **F2** (0) |  |
| **F3** (14) | `2A6K` · `2A4K` · `FC A6K` · `FC A4K` · `BB6K` · `BB4K` · `2BB6K` · `2BB4K` · `UNFORMED B+KA` · `FC A+BK` · `FC A+B6K` · `FC A+B4K` · `BoB AA6K` · `BoB AA4K` |
| **F4** (4) | `2A` · `2A6K` · `FC A6K` · `AX B+K` |
| **F5** (28) | `BACK A+G` · `66A` · `22A` · `22AK` · `22A6K` · `22A4K` · `44A` · `66B` · `22B` · `22BK` · `22B6K` · `22B4K` · `44B` · `44(B)` · `8WR A+B` · `[2/8]K` · `BT [2/8]K` · `22K` · `[3/6/9]K` · `BT [3/6/9]K` · `66K` · `ToW [2/8]K` · `[1/4/7]K` · `BT [1/4/7]K` · `44K` · `CoE [2/8]K` · `(B)+(G)` · `SC 8WR A+B` |
| **F6** (20) | `6A` · `6AA` · `2A` · `WR A` · `b6` · `6BB` · `3B` · `3BB` · `3B(B)` · `9B` · `7B` · `4A+B` · `FC A+B` · `K+G` · `RUN K` · `BT [3/6/9]K` · `66K` · `ToW A` · `ToW 6K` · `SC 8A+B` |
| **F7** (0) |  |

### Other source issues noticed by hand

| Where | Issue |
|---|---|
| `2A6K`, `FC A6K` | Notes say `SS into TOB` — almost certainly ToW. |
| `AX B+K` | Notes say `Jaills` = jails (2nd hit only on guard). |
| `2A`, `FC A` | `Tech Crouch[8-RC]` — "RC" undefined; maybe "until recovery crouch". ❓ |
| `AAA` | Lvl 7 hits, Dmg 8 values. Official lesson: `AAA` activates Almighty — Notes do not say so. |
| `BBK` | Dmg cell `12.12` (period, not comma); Blk -12, Hit blank, Notes "Normal Hit Combo". |
| `B+K` (neutral, WeaponArts) vs `SWORD B+K` | Same move listed twice: WeaponArts row Dmg `18` vs mode row `18,22`. Neutral `6B+K` i22 vs `AX B+K` i20; `4B+K` i32 vs `SPEAR B+K` i24. ❓ which applies when. |
| Official Style Lesson (Adept) | Says `4B+K` performs "Eternal Conflict" — that is `3BB`. `4B+K` is Aufheben Sublimation. Lesson text error. |
| Lesson vs Strategy page | Lesson: Almighty from **throws, AAA, BBB, 6A+B, 8WR A+B**. Strategy page omits AAA/BBB. RE lesson adds **RE BB**. |
| Wiki Combos page | Damage values from v2.21 noted inline; uses `5B+K` and `B4` (= `b4`) notation; `6B:A` is a just-frame. |

## ✅ Lab-confirmed additions

*(none yet — Azwel not labbed. Add dated rows; never edit Part 1/2 cells.)*

| Date | Input | Raw says | Lab says |
|---|---|---|---|

