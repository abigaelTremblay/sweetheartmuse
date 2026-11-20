# 2B — Normalized Frame Data

> **Generated 2026-10-14** from the SuperCombo MediaWiki API (`Soulcalibur_VI/2B/Move_list`, wikitext).
> Same pipeline as `../Xianghua/framedata.md`, plus wiki section headings. Generator: session artifact `gen2b.py`.
> **Raw wiki values are verbatim.** My additions live ONLY in the `⚑` column, Part 3, and the dated lab section.
> **This file is a snapshot, not ground truth.** Where it disagrees with the lab, the lab wins — record both.

## ⚠️ Read before using any number here

| Rule | Why |
|---|---|
| **String `i` = ? (first hit or branch?)** | Xianghua `BB`=i14 vs `BBK`=i20 is unresolved (Q37). **Never derive a string's startup or a guaranteed follow-up from `i`.** |
| **Lvl on strings is cumulative** (`AAA` = `HHHHH`) | The last letters are the branch; mixed `M`/`L` strings are **not** automatically a 50/50 — gaps untested. |
| **+N ≠ guaranteed** | Being +4 does not make the next string uninterruptible. |
| **`Tech Crouch` ≠ ends crouched** | Xianghua `3AK` is labelled TC but ends standing. Every FC/WR chain below is ❓ until labbed. |
| **`Counter Hit Combo`** | Later hits combo only on CH. On normal hit there may be a gap. |
| **Damage cells are per-hit, unscaled** | Read the in-game counter; never sum. |

### ⚑ Flag legend

| Flag | Meaning |
|---|---|
| **F1** | Lvl hit-count ≠ Dmg hit-count — per-hit data incomplete or merged |
| **F2** | Same qualified input on 2+ rows (overloaded) — rows differ by hold length / CH |
| **F3** | Missing Blk/Hit — no frame data listed |
| **F4** | Non-standard value (e.g. `16G`) — likely wiki typo |
| **F5** | Input notation normalised by me — confirm in in-game command list |
| **F6** | Notes say returns/ends crouching or Tech Crouch → ❓ FC/WR follow-up candidate (label ≠ guarantee) |
| **F7** | Notes say “Counter Hit Combo”/“if Nth hit whiffs” — later hits NOT guaranteed on normal hit |

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

No prefix = **usable from neutral standing**. Anything else is gated.

| Prefix | Means | Count |
|---|---|---|
| `(none)` | neutral standing | 125 |
| `AGS` | Aggression Shift stance | 22 |
| `ANG` | Angler Stance | 14 |
| `AL` | Aerial Leap stance (airborne) | 13 |
| `WR` | while rising | 7 |
| `RE` | after winning Reversal Edge | 7 |
| `SC` | Soul Charge **state** | 7 |
| `SC AGS` | Soul Charge **and** AGS | 5 |
| `METER` | ⚠️ costs meter, usable from neutral (CE / SC activation) | 4 |
| `BT` | back turned | 3 |
| `FC` | full crouch | 2 |
| `METER AL` | costs meter, from AL (CE) | 2 |
| `SC AL` | Soul Charge **and** AL | 2 |
| `SIDE-L` | throw from opponent's left side | 1 |
| `SIDE-R` | throw from opponent's right side | 1 |
| `BACK` | throw from behind | 1 |
| `RUN` | while running | 1 |

### Run-input normalisation (⚑ F5)

| Wiki | Here | Means |
|---|---|---|
| `(3)_(6)_(9)` | `66` | forward run (33/66/99) |
| `(1)_(4)_(7)` | `44` | back run (11/44/77) |
| `(2)_(8)` | `22` | vertical run (22/88) |
| `(1)_(7)` | `11` | diagonal-back run (11/77) |
| `(2)_(8)_(1)_(4)_(7)_(3)_(6)_(9)` | `8WR` | run in any of the 8 directions |
| `(4)` | `[4]` | ❓ **unclear** — back only? hold 4? Check the in-game list |

## Stance model — 2B is a SUFFIX-ROUTER

```
                 X6 ─────────────▶ AGS (Aggression Shift)   ← main stance, 22 moves
  many strings ─ X4 ─ backstep ──▶ AGS                      (always worse frames than X6)
                 X8 ─────────────▶ AL  (Aerial Leap)        ← airborne, 13 moves
  3B / 3(B) / WR BK / AGS BB ────▶ AL
  (K) / 1(K) / 66(K) ────────────▶ ANG (Angler Stance)       ← 14 moves

  AL  6 / 4  ──▶ AGS     AL 8 = glide/delay
  ANG 236 / 214 ──▶ AGS  ANG 8B+K ──▶ AL
  neutral 236 / 214 ──▶ AGS   (slow: act after 29 / 39 f)
```

**Nested, not flat.** AGS⇄AL loop (`AGS A8`, `AL 6`), ANG feeds both. `AGS A6`/`AGS K6` loop AGS → AGS.
Contrast Ivy (SE, SL flat) and Xianghua (PXS ⊃ SXS).

## Notation
Identical to Xianghua — see `../Xianghua/framedata.md` and `../07-glossary.md`.

| Token | Trap |
|---|---|
| `X6` / `X4` / `X8` suffix | **direction after the string** = stance branch, not a new move |
| `+` | simultaneous press — `B+K` is a sibling of `B` |
| `(X)` | hold. Only `[SS]` = stance change |
| lowercase `a` `b` | slide input (`aB`, `b6`, `2bA`, `66aK`) |
| `AP` | Analysis Points — 2B resource, see `../07-glossary.md` |

---

# PART 1 — NEUTRAL (125)

## Horizontal Attacks  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A` | Slash Sequence | H | 12 | 8 | -6 | 2 | 2 | 1 | Cancel with G |  |
| `AA` | Slash Sequence | HH | 12 | 8,10 | -10 | 0 | 0 | 3 | Normal Hit Combo |  |
| `AAA` | Slash Sequence | HHHHH | 12 | 8,10,4,4,4 | -4 | 2 | 2 | 7 | Counter Hit Combo if 1st hit whiffs | F7 |
| `AAA6` | Slash Sequence ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | 6 | 12 | 12 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `AAA4` | Slash Sequence ~ Back Step ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | -14 | -8 | -8 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `AAA8` | Slash Sequence ~ Aerial Leap | HHHHH | 12 | 8,10,4,4,4 | -10 | -4 | -4 | 7 | [SS] into AL on hit or block for 5th hit |  |
| `AAAA` | Slash Sequence | HHHHHH | 12 | 8,10,4,4,4,24 | -8 | KND | KND | 9 |  |  |
| `AAAB` | Slash Assault: Ii | HHHHHMMM | 12 | 8,10,4,4,4,6,6,25 | -14 | KND | KND | 17 | Counter Hit Combo if 1st hit whiffs | F7 |
| `AAB` | Slash Assault: I | HHMMM | 12 | 8,10,6,6,25 | -14 | KND | KND | 13 | [GC] |  |
| `(A)` | Augmented Revolving Slash | HHMMM | 12 | 8,8,6,6,14 | -6 | 10 | 10 | 7 | Counter Hit Combo if 2nd hit lands as CH, +12 if 3rd or 5th hit lands as CH, returns to c… | F6 F7 |
| `aB` | Revolving Strike | H | 28 | 22 | -4 | KND | LNC | 9 |  |  |
| `6A` | Slash Support | H | 16 | 16 | -8 | 2 | 2 | 1 |  |  |
| `6AA` | Slash Support | HHH | 16 | 16,10,14 | -2 | 10 | 10 | 5 |  |  |
| `3A` | Revolving Assault | MM | 16 | 10,12 | -12 | 2 | 2 | 3 | Normal Hit Combo |  |
| `3AA` | Revolving Assault | MMMM | 16 | 10,12,16,24 | -16 | KND | KND | 10 | Counter Hit Combo if 1st hit whiffs, cancel 2nd hit with G, ends in crouch | F6 F7 |
| `2A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `1A` | Blade Sweep | LLL | 30 | 8,8,10 | -12 | 2 | 2 | 4 | Normal Hit Combo. Returns to crouching | F6 |
| `4A` | Assault Helix | HH | 18 | 10,16 | -6 | 6 | 6 | 2 | Normal Hit Combo. [LH] if own soul gauge full |  |
| `9A` | Leaping Horizontal Assault | MHH | 42 | 18,7,18 | -38 | LNC | LNC | 9 | [GC] no followups possible after GC |  |

## Vertical Attacks  (28)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B` | Severing Sweep | M | 14 | 12 | -10 | -4 | 4 | 2 | Cancel with G |  |
| `BA` | Severing Sweep | MLLL | 14 | 12,8,8,10 | -12 | 2 | 2 | 7 | Counter Hit Combo Returns to crouching | F6 F7 |
| `BB` | Severing Sequence | MM | 14 | 12,9 | -8 | -2 | -2 | 4 | Normal Hit Combo |  |
| `BBB` | Severing Sequence | MMMM | 14 | 12,9,10,16 | -14 | 0 | 0 | 11 | Counter Hit Combo | F7 |
| `(B)` | Augmented Severing Thrust | MH | 14 | 12,24 | -2 | KND | KND | 9 | Normal Hit Combo on standing opponent, Launcher behind if 2nd strike is CH |  |
| `b6` | Hilt Assault | H | 14 | 16 | 0 | 6 | 10 | 2 | [GC] |  |
| `6B` | Projectile Slash Sequence | MM | 18 | 10,8 | -12 | 0 | 4 | 4 |  |  |
| `6BB` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -24 | -6 | KND | 12 | Normal Hit Combo. [LH] upon hitting opponent from the back |  |
| `6BB6` | Projectile Slash Sequence ~ Aggression Shift | MMMMM | 18 | 10,8,6,6,6 | -2 | 16G | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… | F4 |
| `6BB4` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -20 | -4 | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… |  |
| `6BB8` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -18 | 0 | LNC | 12 | Normal Hit Combo. [SS] into AL on hit or block for 5th hit [LH] upon hitting opponent fro… |  |
| `6BBB` | Projectile Slash Sequence | MMMMMMM | 18 | 10,8,6,6,6,10,24 | -8 | 6 | KND | 21 | Counter Hit Combo. [LH] upon hitting opponent from the back | F7 |
| `6(B)` | Augmented Spear Slash Sequence | MMMMM | 18 | 10,8,22,8,18 | 0 | LNC | LNC | 15 | [BA]. [GC]. Counter Hit Combo | F7 |
| `6BK` | Reversed Core Disruption | MMM | 18 | 10,8,10,12 | -8 | 2 | 2 | 7 | Normal Hit Combo, +2AP on hit or [LH] upon hitting an opponent whose stun build-up is at … | F1 |
| `6B(K)` | Reverse Augmented Seismic Smash | MMMM | 18 | 10,8,10,16 | -4 | KND | KND | 10 | Normal Hit Combo. [GC] |  |
| `3B` | First Strike ~ Aerial Leap | M | 20 | 26 | 0 | LNC | LNC | 9 | [SS] into AL |  |
| `3(B)` | Augmented First Strike ~ Aerial Leap | MSMSMSM | 32 | 22,4,3,3,2 | 6 | LNC | LNC | 12 | [SS] into AL | F1 |
| `2B` | Downward Severing Blade | M | 16 | 20 | -8 | 2 | KND | 2 |  |  |
| `2bA` | Revolving Slash | HMMM | 16 | 8,6,6,14 | -6 | 10 | 10 | 9 | Counter Hit Combo +12 if 2nd or 4th hit lands as CH, returns to crouching | F6 F7 |
| `1B` | Ground Thrust | L | 18 | 18 | -14 | -4 | 0 | 2 |  |  |
| `1B6` | Ground Thrust ~ Aggression Shift | L | 18 | 18 | -6 | 2 | 6 | 2 | [SS] into AGS on hit or block |  |
| `1B4` | Ground Thrust ~ Back Step ~ Aggression Shift | L | 18 | 18 | -26 | -18 | -14 | 2 | [SS] into AGS on hit or block |  |
| `1B8` | Ground Thrust ~ Aerial Leap | L | 18 | 18 | -22 | -14 | -10 | 2 | [SS] into AL on hit or block |  |
| `4B` | Assault Pattern | M | 24 | 24 | -14 | LNC | LNC | 9 | [GC] |  |
| `4BB` | Assault Pattern | MM | 24 | 24,16 | -20 | LNC | LNC | 20 | [GC]. Normal Hit Combo |  |
| `4BBB` | Assault Pattern | MMM | 24 | 24,16,26 | -28 | KND | KND | 29 | [GC]. Normal Hit Combo |  |
| `4BB6B` | Assault Skewer | MMM | 24 | 24,16,16 | -10 | KND | KND | 24 | [GC]. Normal Hit Combo last hit delayable, delay necessary for 3rd hit to connect if oppo… |  |
| `9B` | Leaping Projectile Blade | SM | 24 | 24 | -10 | -2 | 0 | 9 | [GC] |  |

## Kick Attacks  (18)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `K` | Android Kick | H | 12 | 12 | -8 | 2 | 2 | 2 | Cancel with G |  |
| `(K)` | Android Kick | H | 12 | 12 | -16 | -6 | -6 | 2 | [SS] into ANG |  |
| `6K` | Multistrike Kick | MMM | 16 | 6,4,6 | -10 | 2 | 10 | 5 | Normal Hit Combo |  |
| `6K6` | Multistrike Kick ~ Aggression Shift | MMM | 16 | 6,4,6 | -6 | 6 | 14 | 5 | Normal Hit Combo. [SS] into AGS on hit or block for 3rd hit |  |
| `6K4` | Multistrike Kick | MMM | 16 | 6,4,6 | -26 | -14 | -6 | 5 | Normal Hit Combo. [SS] into AGS on hit or block for 3rd hit |  |
| `6K8` | Multistrike Kick | MMM | 16 | 6,4,6 | -22 | -10 | -2 | 5 | Normal Hit Combo. [SS] into AL on hit or block for 3rd hit |  |
| `6KB` | Multistrike | MMMM | 16 | 6,4,6,40 | -18 | KND | KND | 15 | Counter Hit Combo | F7 |
| `6KK` | Multistrike Kick | MMMHH | 16 | 6,4,6,6,12 | -6 | 8 | 8 | 8 | Normal Hit Combo, +1AP on hit |  |
| `6K(K)` | Charging Kick | MMMH | 16 | 6,4,6,24 | 2 | KND | KND | 10 | [GI] H M |  |
| `3K` | Brake Kick | MM | 14 | 10,10 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `3(K)` | Brake Kick | MM | 14 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `3(K)` | Brake Kick | MM | 14 | 10,22 | -2 | 8 | 8 | 9 | Counter Hit Combo +2AP on hit | F2 F7 |
| `2K` | Lower Unarmed Kick | L | 16 | 12 | -12 | -4 | -4 | 1 |  |  |
| `1K` | Examine | L | 20 | 14 | -14 | 0 | 0 | 2 | +1AP on hit |  |
| `1(K)` | Examine | L | 20 | 14 | -22 | -8 | 0 | 2 | [SS] into ANG |  |
| `4K` | Core Disruption | MM | 16 | 10,12 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `4(K)` | Augmented Seismic Smash | MM | 16 | 10,16 | -4 | KND | KND | 9 | Normal Hit Combo. [GC] |  |
| `9K` | Leaping Unarmed Strike | M | 38 | 36 | -8 | KND | KND | 2 | +4AP on hit |  |

## Multi Attacks  (15)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Pod Program R050: Spear | SM | 38 | 28 | 0 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `(A)+(B)` | Pod Program R050: Spear | SM | 50 | 32 | 4 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `6A+B` | Pod Program R010: Laser | H | 40 | 45 | -14 | STN | STN | 15 | [GC] |  |
| `6(A)+(B)` | Pod Program R010: Laser | H | 64 | 80 | -8 | KND | KND | 15 | [GC] |  |
| `2A+B` | Pod Program R020: Mirage | SMSMSMSMSM | 44 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Dodges H / M / L attacks starting i32 |  |
| `2(A)+(B)` | Pod Program R020: Mirage | SMSMSMSMSM | 56 | 12,9,7,6,6 | -12 | LNC | LNC | 12 | Dodges H / M / L attacks starting i44 |  |
| `4A+B` | Pod Program R010: Laser | H | 23 | 37 |  | KND | KND |  | [BA] |  |
| `4(A)+(B)` | Pod Program R010: Laser | H | 35 | 47 |  | KND | KND |  | [BA] |  |
| `8A+B` | Pod Program A080: Wave | SMSLSLSL | 58 | 16,2,2,2 | -8 | 10 | 10 | 11 | Deals 3 chip damage when guarded |  |
| `8(A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 74 | 24,3,3,3 | -4 | 14 | KND | 19 | [LH] If own guard gauge full, deals 6 chip damage when guarded |  |
| `B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges high/middle attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks… |  |
| `2B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges middle/low attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks,… |  |
| `6B+K` | Crushing Kick | MMM | 24 | 22,6,14 | -14 | 6 | LNC | 14 | Normal Hit Combo. [GC] 1st and 3rd hits Tech Jump i10 |  |
| `3B+K` | Aerial Support Assault | MH | 18 | 22,24 | -16 | KND | KND | 15 | Normal Hit Combo. [GC]. Tech Crouch i4 | F6 |
| `4B+K` | Hilt Bash | MHM | 36 | 16,8,14 | -12 | 4 | STN | 14 | Normal Hit Combo. [GC] |  |

## Throws  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Suppression: Slash Kick | H | 18 | 45 | KND | KND | KND |  | [TH] |  |
| `4A+G` | Suppression: Impaling Slash | H | 18 | 50 | KND | KND | KND |  | [TH] |  |
| `66A+G` | Suppression: Unarmed Leg Throw | H | 18 | 55 | KND | KND | KND |  | [TH] +2AP Restores 6% Guard Stamina | F5 |

## Run Attacks  (40)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `66A` | Mobilize: Slash Pattern | LH | 20 | 10,10 | -14 | -7 | -7 | 2 | Normal Hit Combo -36 if 2nd hit ducked | F5 |
| `66A6` | Mobilize: Slash Pattern ~ Aggression Shift | LH | 20 | 10,10 | -6 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `66A4` | Mobilize: Slash Pattern ~ Back Step ~ Aggression Shift | LH | 20 | 10,10 | -21 | -15 | -15 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `66A8` | Mobilize: Slash Pattern ~ Aerial Leap | LH | 20 | 10,10 | -8 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AL if 2nd hit blocked or connected | F5 |
| `66aK` | Mobilize: Slashing Unarmed Kick | LHL | 20 | 10,14,12 | -14 | -4 | -4 | 4 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs | F5 |
| `66a(K)` | Mobilize: Crush Sequence | LHM | 20 | 10,14,24 | -14 | -6 | -6 | 7 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs, [LH] if 2nd strike whiffs an… | F5 |
| `66K` | Mobilize: Disposal Kick | M | 16 | 20 | -8 | KND | KND | 5 | [LH] upon hitting an opponent in the middle of a technique that uses their soul gauge | F5 |
| `66(K)` | Mobilize: Disposal Kick ~ Angler Stance | M | 16 | 20 | -6 | KND | KND | 5 | [SS] | F5 |
| `22A` | Mobilize: Spear Spin | HH | 20 | 12,10 | -12 | 0 | 0 | 3 | Normal Hit Combo | F5 |
| `22AA` | Mobilize: Spear Spin | HHH | 20 | 12,10,16 | -2 | 10 | 12 | 5 | Normal Hit Combo Opponent backturned normal hit | F5 |
| `22AB` | Mobilize: Spear Sequence | HHM | 20 | 12,10,22 | -10 | 2 | 2 | 8 | Normal Hit Combo Returns to Crouching | F5 F6 |
| `44A` | Mobilize: Horizontal Assault | MM | 34 | 22,22 | -16 | STN | KND | 5 | Normal Hit Combo | F5 |
| `44(A)` | Mobilize: Augmented Horizontal Assault | MMMMM | 36 | 22,8,8,8,15 | -16 | KND | KND | 10 | Normal Hit Combo | F5 |
| `66B` | Mobilize: Piercing Thrust | M | 16 | 22 | -8 | 2 | STN | 5 |  | F5 |
| `66B6` | Mobilize: Piercing Thrust ~ Aggression Shift | M | 16 | 22 | 2 | 12 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `66B4` | Mobilize: Piercing Thrust ~ Back Step ~ Aggression Shift | M | 16 | 22 | -18 | -4 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `66B8` | Mobilize: Piercing Thrust ~ Aerial Leap | M | 16 | 22 | -16 | -4 | STN | 5 | [SS] into AL on hit or block | F5 |
| `22B` | Mobilize: Skewer | M | 18 | 22 | -18 | 4 | STN | 9 | [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B6` | Mobilize: Skewer ~ Aggression Shift | M | 18 | 22 | -8 | 15 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B4` | Mobilize: Skewer ~ Back Step ~ Aggression Shift | M | 18 | 22 | -28 | -7 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B8` | Mobilize: Skewer ~ Aerial Leap | M | 18 | 22 | -24 | -2 | STN | 9 | [SS] into AL. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `44B` | Mobilize: Rotating Slash Assault | M | 32 | 40 | -14 | KND | KND | 9 | [GC] | F5 |
| `44B6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 32 | 40 | -8 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44B4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44B8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AL on hit or block | F5 |
| `44(B)` | Mobilize: Rotating Slash Assault | M | 40 | 50 | 0 | STN | STN | 15 | [BA]. [GC] | F5 |
| `44(B)6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 40 | 50 | 6 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 40 | 50 | -8 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 40 | 50 | -4 | STN | KND | 15 | [BA]. [GC]. [SS] into AL on hit or block | F5 |
| `22K` | Mobilize: Spinning Strike | LHHH | 22 | 20,4,4,4 | -12 | 4 | 4 | 7 | Counter Hit Combo | F5 F7 |
| `22KK` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,24 | -14 | KND | KND | 9 |  | F5 |
| `22K(K)` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,40 | 6 | KND | LNC | 12 | [BA]. [GC] | F5 |
| `44K` | Mobilize: Cyclone Kick | HHH | 20 | 10,5,15 | -8 | KND | KND | 4 | +2 AP on hit | F5 |
| `44(K)` | Mobilize: Cyclone Kick | HHH | 28 | 15,5,20 | -4 | KND | KND | 4 | +3 AP on hit if fully held | F5 |
| `8WR A+B` | Mobilized Pod Program R040: Blade | MMMM | 22 | 8,6,6,14 | -20 | KND | KND | 5 | Normal Hit Combo | F5 |
| `66B+K` | Mobilize: Projectile Slash Pattern | MMMMM | 24 | 8,6,6,6,16 | -12 | KND | KND | 10 | Normal Hit Combo. [GC]. [LH] after 1 successful dodge with Counter Bomb | F5 |
| `22B+K` | Mobilize: Scatter Spear | MM | 28 | 10,8,16 | -4 | LNC | LNC | 13 | Normal Hit Combo | F1 F5 |
| `11B+K` | Mobilze: Crushing Kick | M | 32 | 38 | 8 | LNC | LNC | 15 | [BA]. [GC] | F5 |
| `11(B)+(K)` | Mobilize: Heavy Assault | MMMM | 32 | 10,10,10,14 | -16 | LNC | LNC | 15 | Normal Hit Combo. [GC] | F5 |
| `[4]B+K` | Mobilize: Reversed Severing Spin | MMM | 58 | 16,16,27,9 |  | LNC | LNC |  | Normal Hit Combo. [UA] | F1 F5 |

## Reversal Edge Attacks  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Soul Stance: Aggressive Defense | M | 46 | 35 | -10 |  |  | 16 | [RE] |  |
| `(B)+(G)` | Soul Stance: Aggressive Defense | M | 64 | 45 | 8 |  |  | 20 | [RE]. [BA]. [GC] |  |

---

# PART 2 — GATED (92)

## AGS  (22)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AGS 236` | Aggression Shift |  | 31 |  |  |  |  |  | [SS] actions in AGS possible after 29 frames |  |
| `AGS 214` | Back Step |  | 43 |  |  |  |  |  | [SS] actions in AGS possible after 39 frames |  |
| `AGS A` | Shifted Revolving Slash | MM | 14 | 10,8 | -12 | -2 | 2 | 2 | Normal Hit Combo |  |
| `AGS A6` | Shifted Revolving Slash ~ Aggression Shift | MM | 14 | 10,8 | -4 | 6 | 6 | 2 | Normal Hit Combo. [SS] into AGS |  |
| `AGS A4` | Shifted Revolving Slash ~ Back Step ~ Aggression Shift | MM | 14 | 10,8 | -14 | -6 | -6 | 2 | Normal Hit Combo. [SS] into AGS |  |
| `AGS A8` | Shifted Revolving Slash ~ Aerial Leap | MM | 14 | 10,8 | -14 | -4 | -4 | 2 | Normal Hit Combo. [SS] into AL |  |
| `AGS AA` | Shifted Revolving Slash | MMMMMM | 14 | 10,8,3,3,8 | -8 | -4 | -4 | 7 | Normal Hit Combo | F1 |
| `AGS 2A` | Shifted Projectile Blade | M | 28 | 36 | -12 | KND | KND | 9 | [GC] GI [4-14] horizontal attacks |  |
| `AGS B` | Shifted Support Kick | L | 28 | 16 | -18 | -12 | -12 | 2 |  |  |
| `AGS BA` | Shifted Support Kick | LLL | 28 | 16,18,22 | -24 | KND | KND | 6 | Normal Hit Combo |  |
| `AGS BB` | Shifted Support Kick | LSM | 28 | 16,16 | -6 | KND | KND | 9 | Normal Hit Combo. [SS] into AL |  |
| `AGS (B)` | Shifted Support Skewer (augmented) | M | 28 | 36 | -12 | STN | STN | 9 | [GC] |  |
| `AGS K` | Shifted Strike Sequence | MMMM | 16 | 6,6,6,6 | -12 | -6 | -6 | 5 | [GC]. Normal Hit Combo |  |
| `AGS K6` | Shifted Strike Sequence ~ Aggression Shift | MMMM | 16 | 6,6,6,6 | 0 | 6 | 6 | 5 | [GC]. Normal Hit Combo. [SS] into AGS |  |
| `AGS K4` | Shifted Strike Sequence | MMMM | 16 | 6,6,6,6 | -16 | -10 | -10 | 5 | [GC]. Normal Hit Combo. [SS] into AGS |  |
| `AGS K8` | Shifted Strike Sequence | MMMM | 16 | 6,6,6,6 | -12 | -6 | -6 | 5 | [GC]. Normal Hit Combo. [SS] into AGS |  |
| `AGS KK` | Shifted Strike Sequence | MMMMH | 16 | 6,6,6,6,18 | -8 | LNC | LNC | 10 | [GC]. Counter Hit Combo | F7 |
| `AGS A+B` | Pod Program R020: Mirage | SMSLSLSL | 22 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Normal Hit Combo Dodges all attacks starting i10 | F1 |
| `AGS (A)+(B)` | Pod Program R020: Mirage | SMSLSLSL | 34 | 12,9,7,6,6 | -8 | LNC | LNC | 12 | Normal Hit Combo Dodges all attacks starting i22 | F1 |
| `AGS B+K` | Shifted Crushing Rocket | M | 32 | 64 | -30 | 10 | 10 | 8 | [GC] (no followup possible), Shifts to [TH] on hit |  |
| `AGS A+G` | Suppression: Composite Kick | H | 18 | 61 | KND | KND | KND |  | [TH] |  |
| `AGS 4A+G` | Suppression: Composite Slash | H | 18 | 40 | LNC | LNC | LNC |  | [TH] |  |

## SC AGS  (5)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC AGS A` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -3 | KND | KND | 4 | Normal Hit Combo |  |
| `SC AGS A6` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | 6 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS A4` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -7 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS A8` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -4 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS BB` | Shifted Support Kick | LSMSM | 28 | 16,17,11 | 6 | KND | KND | 13 | Normal Hit Combo. [SS] into AL |  |

## AL  (13)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AL A` | Support Blade | HH | 12 | 8 |  |  |  |  |  | F1 F3 |
| `AL AA` | Airborne Slash Pattern | HH | 12 | 8,6 |  |  |  |  |  | F3 |
| `AL AAA` | Airborne Slash Pattern | HHHHH | 12 | 8,6,6,5,6 |  |  |  |  |  | F3 |
| `AL AAB` | Airborne Assault | HHMM | 12 | 8,6,12,23 | -16 | KND | KND | 19 | [GC]. Normal Hit Combo |  |
| `AL AAK` | Airborne Unarmed Strike | HHM | 12 | 8,6,28 | -28 | KND | KND | 10 | [GC] (no followups possible), +2AP or [LH] upon hitting opponent whose stun build-up is a… |  |
| `AL B` | Airborne Spear Cleave | MMM | 16 | 10,8,18 | -16 | KND | KND | 9 | Normal Hit Combo |  |
| `AL K` | Airborne Support Kick | HHH | 16 | 8,7,6 | -6 | KND | 14 | 4 | Normal Hit Combo can hold directions to slightly shift where 2B lands |  |
| `AL A+B` | Pod Program A080: Wave | SMSLSLSL | 24 | 16,2,2,2 | -8 | 10 | 10 | 11 | Normal Hit Combo Deals 3 chip damage when guarded |  |
| `AL (A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 40 | 24,3,3,3 | -4 | 14 | KND | 19 | Normal Hit Combo. [LH] If own guard gauge full, deals 6 chip damage when guarded |  |
| `AL B+K` | Aerial Support Gambit | HH | 24 | 10,12 |  |  |  | 6 | [GC] (vs Astaroth only) [SS] | F3 |
| `AL 6` | Airborne Aggression Shift |  | 23 |  |  |  |  |  | [SS] actions in AGS possible after 23 frames |  |
| `AL 4` | Airborne Back Step |  | 33 |  |  |  |  |  | [SS] actions in AGS possible after 33 frames |  |
| `AL 8` | Glide |  | 10 |  |  |  |  |  | [SS] allows delayed AL inputs, hold 8, 7 or 9 to extend delay and float down to ground in… |  |

## SC AL  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC AL AAA` | Airborne Slash Pattern: Charged Laser | HHHHHH | 12 | 8,6,6,5,6,11 |  | LNC | LNC |  | Normal Hit Combo |  |
| `SC AL B` | Airborne Spear Cleave: Charged Spear | MMMSM | 16 | 10,8,15,14 | 0 | LNC | LNC | 13 | Normal Hit Combo. [GC] |  |

## METER AL  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `METER AL A+B+K` | Supression: Extermination Gambit | M | 14 | 80 | -16 | KND | KND | 10 | [CE]. [GC] Restores 10% guard stamina |  |
| `METER AL AAA+B+K` | Supression: Extermination Gambit | M | 12 | 8,6,54 | -16 | KND | KND | 10 | [CE]. [GC] Restores 10% guard stamina, last input can be delayed | F1 |

## ANG  (14)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `ANG A` | Support Blade | HH | 16 | 16,16 | -14 | -4 |  | 5 | Normal Hit Combo |  |
| `ANG (A)` | Support Blade | HH | 16 | 16,16 | 2 | 14 |  | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `ANG B` | Support Gatling | HHH | 16 | 4,4,4 | -22 | -10 | STN | 5 | Normal Hit Combo |  |
| `ANG (B)` | Support Gatling | HHH | 16 | 4,4,4 | 0 | 8 | STN | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `ANG K` | Support Casting | M | 24 | 10 | -20 | 16 | 16 | 9 | [AT] |  |
| `ANG (K)` | Support Casting | M | 24 | 10 | -4 | 16 | 16 | 9 | [AT]. [SS] Angler Stance on block or whiff |  |
| `ANG 6K` | Support Casting | M | 26 | 10 | -22 | 16 | 16 | 9 | [AT] |  |
| `ANG 6(K)` | Support Casting | M | 26 | 10 | -6 | 16 | 16 | 9 | [AT]. [SS] Angler Stance on block or whiff |  |
| `ANG 4K` | Support Casting | M | 24 | 10 | -20 | 16 | 16 | 9 | [AT] |  |
| `ANG 4(K)` | Support Casting | M | 24 | 10 | -4 | 16 | 16 | 9 | [AT]. [SS] Angler Stance on block or whiff |  |
| `ANG A+B` | Revolving Support | M | 26 | 28 | -10 | KND | KND | 4 |  |  |
| `ANG 236` | Aggression Shift |  | 31 |  |  |  |  |  | [SS] actions in AGS possible after 31 frames |  |
| `ANG 214` | Back Step |  | 43 |  |  |  |  |  | [SS] actions in AGS possible after 43 frames |  |
| `ANG 8B+K` | Aerial Leap |  | 35 |  |  |  |  |  | [SS] actions in AL possible after 35 frames |  |

## FC  (2)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 | Returns to crouching | F6 |
| `FC B+K` | Floating Assault | M | 26 | 42 | -12 | LNC | LNC | 15 | [GC] |  |

## WR  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `WR A` | Rising Slash Sequence | MH | 18 | 10,14 | -4 | 6 | 6 | 3 | Tech Crouch | F6 |
| `WR B` | Rising Spear Slice | M | 16 | 18 | -14 | KND | KND | 2 |  |  |
| `WR BB` | Rising Spear Slice | MM | 16 | 18,19 | -12 | KND | KND | 9 | Normal Hit Combo |  |
| `WR BK` | Rising Android Kick ~ Aerial Leap | MM | 16 | 18,15 | -14 | LNC | KND | 9 | Counter Hit Combo. [SS] into AL | F7 |
| `WR K` | Rising Brake Kick | MM | 12 | 10,10 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `WR (K)` | Rising Brake Kick | MM | 12 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `WR (K)` | Rising Brake Kick | MM | 12 | 10,22 | -2 | 8 | 8 | 9 | Counter Hit Combo | F2 F7 |

## BT  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Reversed Slash | H | 14 | 12 | -4 | 6 | 6 | 1 |  |  |
| `BT 2A` | Lower Reversed Slash | SL | 14 | 10 | -4 | 6 | 6 | 1 |  |  |
| `BT B+K` | Acrobatic Counter Assault | HM | 22 | 10,21 | -14 | KND | KND | 9 | [GI] A [4-14] Normal Hit Combo |  |

## RE  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RE A6` | Inverted Support ~ Aggression Shift | H |  | 22 | -2 | 2 | 2 | 33 | [SS]. STN on LH upon winning 2nd round |  |
| `RE AA` | Inverted Support | HHH |  | 22,6,6 | 0 | 8 | 8 | 34 | Normal Hit Combo. [LH] upon winning 2nd round |  |
| `RE AAA` | Inverted Support | HHHMM |  | 22,6,6,4,9 | -12 | KND | KND | 38 | Normal Hit Combo. [GC]. [LH] upon winning 2nd round |  |
| `RE AB` | Inverted Assault Volley | HMMMM |  | 29,6,6,6,6 | -14 | LNC | LNC | 38 | [GC], Normal Hit Combo on [LH] upon winning 2nd round |  |
| `RE B` | Inverted Skewer Sequence | MM |  | 14,22 |  | STN | STN | 50 | Normal Hit Combo. [BA]. [GC]. [LH] upon winning 2nd round |  |
| `RE (B)` | Inverted Skewer: Augmented | MM |  | 19,20,20 |  | LNC | LNC | 50 | [BA]. [GC]. Normal Hit Combo on [LH] upon winning 2nd round | F1 |
| `RE K` | Inverted Orbit Strike ~ Aerial Leap | M |  | 24 | 6 | LNC | LNC | 33 | [SS]. [GC]. [LH] upon winning 2nd round then does 26+30 damage and launches higher |  |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding Charge | L | 20 | 26 | -24 | KND | KND | 9 | [GC] |  |

## SC  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SC AAAA` | Slash Sequence: Charged Blade | HHHHHHM | 12 | 8,10,4,4,4,12,25 | 4 | KND | KND | 14 | [GC] |  |
| `SC 3AK` | Revolving Strike (First Class) ~ Aerial Leap | MMHH | 16 | 11,12,8,8 | -10 | 0 | 2 | 6 | Normal Hit Combo first 2 hits and last 2 hits, delayable |  |
| `SC 3AKK` | Revolving Strike (First Class) ~ Aerial Leap | MMHHM | 16 | 11,13,8,9,16 | -6 | LNC | LNC | 19 | Normal Hit Combo first 2 hits and last 3 hits, delayable, [SS] into AL |  |
| `SC BBBB` | Severing Sequence (First Class) ~ Aerial Leap | MMMMM | 14 | 12,10,10,17,21 | -4 | LNC | LNC | 15 | Counter Hit Combo 64 damage total [GC]. [SS] into AL | F7 |
| `SC 4BBB` | Assault Pattern: Charged Gatling | MMMSMSMSM | 24 | 25,17,27,3,2,2 | 2 | STN | STN | 35 | Normal Hit Combo |  |
| `SC 22AAA` | Mobilize: Spear Spin (first Class) | HHHH | 20 | 12,10,17,9 | -6 | KND | KND | 6 | Normal Hit Combo. [LH] upon hitting an opponent when your helath is full | F5 |
| `SC 66BB` | Mobilize: Piercing Assault (first Class) | MM | 16 | 23,39 | -8 | KND | KND | 17 | Normal Hit Combo | F5 |

## METER  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `METER A+B+K` | Supression: Extermination Gambit | M | 16 | 80 | -16 | KND | KND | 10 | [CE]. [GC] |  |
| `METER 6A+B+K` | Limiter Release: Self-Destruct | M | 36 | 116 | -32 | KND | KND | 10 | [CE]. [GC] |  |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `METER 236A+B+K` | Soul Stance: Charged Support | MMM | 16 | 24,4,11 | -2 | 4 | 4 | 9 | Normal Hit Combo |  |

## SIDE-L  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-L A+G` | Suppression: Reversed Projectile Blade | H | 18 | 70 | KND | KND | KND |  | [TH] | F5 |

## SIDE-R  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `SIDE-R A+G` | Suppression: Support Thrust | H | 18 | 60 | KND | KND | KND |  | [TH] +1AP Restores 4% Guard Stamina | F5 |

## BACK  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BACK A+G` | Suppression: Multistrike Protocol | H | 18 | 69 | KND | KND | KND |  | [TH] +11 Damage with Just Frame | F5 |

---

# PART 3 — DERIVED INDEXES

> Derived mechanically from the raw fields above. **Inherits every ⚑ flag.** Not lab-verified.

## ⭐ Branch points with 3+ follow-ups (likely designed identity tools)

> A node with many children = the designers built a decision there. **Children are options, not a guaranteed sequence** — whether each branch is interruptible after the node is blocked is ❓.

| Node | Attack branches | Stance exits (6/4/8) | Total |
|---|---|---|---|
| ⭐ `6K` | `6K(K)` 2/KND · `6KB` -18/KND · `6KK` -6/8 | `6K4` -26/-14 · `6K6` -6/6 · `6K8` -22/-10 | 6 |
| ⭐ `AAA` | `AAAA` -8/KND · `AAAB` -14/KND | `AAA4` -14/-8 · `AAA6` 6/12 · `AAA8` -10/-4 | 5 |
| `6BB` | `6BBB` -8/6 | `6BB4` -20/-4 · `6BB6` -2/16G · `6BB8` -18/0 | 4 |
| `AGS A` | `AA` -8/-4 | `A4` -14/-6 · `A6` -4/6 · `A8` -14/-4 | 4 |
| `AGS K` | `KK` -8/LNC | `K4` -16/-10 · `K6` 0/6 · `K8` -12/-6 | 4 |
| `1B` |  | `1B4` -26/-18 · `1B6` -6/2 · `1B8` -22/-14 | 3 |
| `22B` |  | `22B4` -28/-7 · `22B6` -8/15 · `22B8` -24/-2 | 3 |
| `44(B)` |  | `44(B)4` -8/STN · `44(B)6` 6/STN · `44(B)8` -4/STN | 3 |
| `44B` |  | `44B4` -18/KND · `44B6` -8/KND · `44B8` -18/KND | 3 |
| `66A` |  | `66A4` -21/-15 · `66A6` -6/0 · `66A8` -8/0 | 3 |
| `66B` |  | `66B4` -18/-4 · `66B6` 2/12 · `66B8` -16/-4 | 3 |
| ⭐ `6B` | `6B(K)` -4/KND · `6BB` -24/-6 · `6BK` -8/2 |  | 3 |
| ⭐ `AL AA` | `AAA` –/– · `AAB` -16/KND · `AAK` -28/KND |  | 3 |
| `SC AGS A` |  | `A4` -7/KND · `A6` 6/KND · `A8` -4/KND | 3 |

> ⭐ = 3+ real attack branches, or 2+ attack branches **plus** a stance exit. Pure 6/4/8 nodes are a single "go to stance" decision with three flavours.

## 6 / 4 / 8 suffix families — same string, three stance exits

| Base | `→AGS` 6 (Blk/Hit) | `→AGS` 4 backstep | `→AL` 8 |
|---|---|---|---|
| `AAA` | **6** / 12 | -14 / -8 | -10 / -4 |
| `44(B)` | **6** / STN | -8 / STN | -4 / STN |
| `SC AGS A` | **6** / KND | -7 / KND | -4 / KND |
| `66B` | **2** / 12 | -18 / -4 | -16 / -4 |
| `AGS K` | **0** / 6 | -16 / -10 | -12 / -6 |
| `6BB` | **-2** / 16G | -20 / -4 | -18 / 0 |
| `AGS A` | **-4** / 6 | -14 / -6 | -14 / -4 |
| `1B` | **-6** / 2 | -26 / -18 | -22 / -14 |
| `6K` | **-6** / 6 | -26 / -14 | -22 / -10 |
| `66A` | **-6** / 0 | -21 / -15 | -8 / 0 |
| `22B` | **-8** / 15 | -28 / -7 | -24 / -2 |
| `44B` | **-8** / KND | -18 / KND | -18 / KND |

> Sorted by the 6-branch block value. **`X6` dominates `X4` and `X8` on frames in every family** — 4/8 exist for positioning / AL access, not advantage.

## Neutral / WR stance entries — ranked by Blk

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAA6` | Slash Sequence ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | 6 | 12 | 12 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `3(B)` | Augmented First Strike ~ Aerial Leap | MSMSMSM | 32 | 22,4,3,3,2 | 6 | LNC | LNC | 12 | [SS] into AL | F1 |
| `44(B)6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 40 | 50 | 6 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `66B6` | Mobilize: Piercing Thrust ~ Aggression Shift | M | 16 | 22 | 2 | 12 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `3B` | First Strike ~ Aerial Leap | M | 20 | 26 | 0 | LNC | LNC | 9 | [SS] into AL |  |
| `6BB6` | Projectile Slash Sequence ~ Aggression Shift | MMMMM | 18 | 10,8,6,6,6 | -2 | 16G | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… | F4 |
| `44(B)8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 40 | 50 | -4 | STN | KND | 15 | [BA]. [GC]. [SS] into AL on hit or block | F5 |
| `1B6` | Ground Thrust ~ Aggression Shift | L | 18 | 18 | -6 | 2 | 6 | 2 | [SS] into AGS on hit or block |  |
| `6K6` | Multistrike Kick ~ Aggression Shift | MMM | 16 | 6,4,6 | -6 | 6 | 14 | 5 | Normal Hit Combo. [SS] into AGS on hit or block for 3rd hit |  |
| `66A6` | Mobilize: Slash Pattern ~ Aggression Shift | LH | 20 | 10,10 | -6 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `66(K)` | Mobilize: Disposal Kick ~ Angler Stance | M | 16 | 20 | -6 | KND | KND | 5 | [SS] | F5 |
| `66A8` | Mobilize: Slash Pattern ~ Aerial Leap | LH | 20 | 10,10 | -8 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AL if 2nd hit blocked or connected | F5 |
| `22B6` | Mobilize: Skewer ~ Aggression Shift | M | 18 | 22 | -8 | 15 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `44B6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 32 | 40 | -8 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 40 | 50 | -8 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `AAA8` | Slash Sequence ~ Aerial Leap | HHHHH | 12 | 8,10,4,4,4 | -10 | -4 | -4 | 7 | [SS] into AL on hit or block for 5th hit |  |
| `AAA4` | Slash Sequence ~ Back Step ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | -14 | -8 | -8 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `WR BK` | Rising Android Kick ~ Aerial Leap | MM | 16 | 18,15 | -14 | LNC | KND | 9 | Counter Hit Combo. [SS] into AL | F7 |
| `(K)` | Android Kick | H | 12 | 12 | -16 | -6 | -6 | 2 | [SS] into ANG |  |
| `66B8` | Mobilize: Piercing Thrust ~ Aerial Leap | M | 16 | 22 | -16 | -4 | STN | 5 | [SS] into AL on hit or block | F5 |
| `6BB8` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -18 | 0 | LNC | 12 | Normal Hit Combo. [SS] into AL on hit or block for 5th hit [LH] upon hitting opponent fro… |  |
| `66B4` | Mobilize: Piercing Thrust ~ Back Step ~ Aggression Shift | M | 16 | 22 | -18 | -4 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `44B4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44B8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AL on hit or block | F5 |
| `6BB4` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -20 | -4 | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… |  |
| `66A4` | Mobilize: Slash Pattern ~ Back Step ~ Aggression Shift | LH | 20 | 10,10 | -21 | -15 | -15 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `1B8` | Ground Thrust ~ Aerial Leap | L | 18 | 18 | -22 | -14 | -10 | 2 | [SS] into AL on hit or block |  |
| `6K8` | Multistrike Kick | MMM | 16 | 6,4,6 | -22 | -10 | -2 | 5 | Normal Hit Combo. [SS] into AL on hit or block for 3rd hit |  |
| `1(K)` | Examine | L | 20 | 14 | -22 | -8 | 0 | 2 | [SS] into ANG |  |
| `22B8` | Mobilize: Skewer ~ Aerial Leap | M | 18 | 22 | -24 | -2 | STN | 9 | [SS] into AL. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `1B4` | Ground Thrust ~ Back Step ~ Aggression Shift | L | 18 | 18 | -26 | -18 | -14 | 2 | [SS] into AGS on hit or block |  |
| `6K4` | Multistrike Kick | MMM | 16 | 6,4,6 | -26 | -14 | -6 | 5 | Normal Hit Combo. [SS] into AGS on hit or block for 3rd hit |  |
| `22B4` | Mobilize: Skewer ~ Back Step ~ Aggression Shift | M | 18 | 22 | -28 | -7 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |

## Plus or neutral on BLOCK

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `11B+K` | Mobilze: Crushing Kick | M | 32 | 38 | 8 | LNC | LNC | 15 | [BA]. [GC] | F5 |
| `(B)+(G)` | Soul Stance: Aggressive Defense | M | 64 | 45 | 8 |  |  | 20 | [RE]. [BA]. [GC] |  |
| `AAA6` | Slash Sequence ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | 6 | 12 | 12 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `3(B)` | Augmented First Strike ~ Aerial Leap | MSMSMSM | 32 | 22,4,3,3,2 | 6 | LNC | LNC | 12 | [SS] into AL | F1 |
| `44(B)6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 40 | 50 | 6 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `22K(K)` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,40 | 6 | KND | LNC | 12 | [BA]. [GC] | F5 |
| `RE K` | Inverted Orbit Strike ~ Aerial Leap | M |  | 24 | 6 | LNC | LNC | 33 | [SS]. [GC]. [LH] upon winning 2nd round then does 26+30 damage and launches higher |  |
| `SC AGS A6` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | 6 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS BB` | Shifted Support Kick | LSMSM | 28 | 16,17,11 | 6 | KND | KND | 13 | Normal Hit Combo. [SS] into AL |  |
| `(A)+(B)` | Pod Program R050: Spear | SM | 50 | 32 | 4 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `SC AAAA` | Slash Sequence: Charged Blade | HHHHHHM | 12 | 8,10,4,4,4,12,25 | 4 | KND | KND | 14 | [GC] |  |
| `6K(K)` | Charging Kick | MMMH | 16 | 6,4,6,24 | 2 | KND | KND | 10 | [GI] H M |  |
| `66B6` | Mobilize: Piercing Thrust ~ Aggression Shift | M | 16 | 22 | 2 | 12 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `ANG (A)` | Support Blade | HH | 16 | 16,16 | 2 | 14 |  | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `SC 4BBB` | Assault Pattern: Charged Gatling | MMMSMSMSM | 24 | 25,17,27,3,2,2 | 2 | STN | STN | 35 | Normal Hit Combo |  |
| `b6` | Hilt Assault | H | 14 | 16 | 0 | 6 | 10 | 2 | [GC] |  |
| `6(B)` | Augmented Spear Slash Sequence | MMMMM | 18 | 10,8,22,8,18 | 0 | LNC | LNC | 15 | [BA]. [GC]. Counter Hit Combo | F7 |
| `3B` | First Strike ~ Aerial Leap | M | 20 | 26 | 0 | LNC | LNC | 9 | [SS] into AL |  |
| `A+B` | Pod Program R050: Spear | SM | 38 | 28 | 0 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges high/middle attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks… |  |
| `2B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges middle/low attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks,… |  |
| `44(B)` | Mobilize: Rotating Slash Assault | M | 40 | 50 | 0 | STN | STN | 15 | [BA]. [GC] | F5 |
| `AGS K6` | Shifted Strike Sequence ~ Aggression Shift | MMMM | 16 | 6,6,6,6 | 0 | 6 | 6 | 5 | [GC]. Normal Hit Combo. [SS] into AGS |  |
| `ANG (B)` | Support Gatling | HHH | 16 | 4,4,4 | 0 | 8 | STN | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `RE AA` | Inverted Support | HHH |  | 22,6,6 | 0 | 8 | 8 | 34 | Normal Hit Combo. [LH] upon winning 2nd round |  |
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `SC AL B` | Airborne Spear Cleave: Charged Spear | MMMSM | 16 | 10,8,15,14 | 0 | LNC | LNC | 13 | Normal Hit Combo. [GC] |  |

## Safe (blk ≥ -8) AND fast (i ≤ 16)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 | 0 | invincible since i4. Pushback happens at i6 |  |
| `AAA6` | Slash Sequence ~ Aggression Shift | HHHHH | 12 | 8,10,4,4,4 | 6 | 12 | 12 | 7 | [SS] into AGS on hit or block for 5th hit |  |
| `SC AAAA` | Slash Sequence: Charged Blade | HHHHHHM | 12 | 8,10,4,4,4,12,25 | 4 | KND | KND | 14 | [GC] |  |
| `WR (K)` | Rising Brake Kick | MM | 12 | 10,22 | -2 | 8 | 8 | 9 | Counter Hit Combo | F2 F7 |
| `AAA` | Slash Sequence | HHHHH | 12 | 8,10,4,4,4 | -4 | 2 | 2 | 7 | Counter Hit Combo if 1st hit whiffs | F7 |
| `A` | Slash Sequence | H | 12 | 8 | -6 | 2 | 2 | 1 | Cancel with G |  |
| `(A)` | Augmented Revolving Slash | HHMMM | 12 | 8,8,6,6,14 | -6 | 10 | 10 | 7 | Counter Hit Combo if 2nd hit lands as CH, +12 if 3rd or 5th hit lands as CH, returns to c… | F6 F7 |
| `2A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `FC A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 | Returns to crouching | F6 |
| `WR (K)` | Rising Brake Kick | MM | 12 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `AAAA` | Slash Sequence | HHHHHH | 12 | 8,10,4,4,4,24 | -8 | KND | KND | 9 |  |  |
| `K` | Android Kick | H | 12 | 12 | -8 | 2 | 2 | 2 | Cancel with G |  |
| `WR K` | Rising Brake Kick | MM | 12 | 10,10 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `SC AGS A6` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | 6 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `b6` | Hilt Assault | H | 14 | 16 | 0 | 6 | 10 | 2 | [GC] |  |
| `(B)` | Augmented Severing Thrust | MH | 14 | 12,24 | -2 | KND | KND | 9 | Normal Hit Combo on standing opponent, Launcher behind if 2nd strike is CH |  |
| `3(K)` | Brake Kick | MM | 14 | 10,22 | -2 | 8 | 8 | 9 | Counter Hit Combo +2AP on hit | F2 F7 |
| `SC AGS A` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -3 | KND | KND | 4 | Normal Hit Combo |  |
| `BT A` | Reversed Slash | H | 14 | 12 | -4 | 6 | 6 | 1 |  |  |
| `BT 2A` | Lower Reversed Slash | SL | 14 | 10 | -4 | 6 | 6 | 1 |  |  |
| `AGS A6` | Shifted Revolving Slash ~ Aggression Shift | MM | 14 | 10,8 | -4 | 6 | 6 | 2 | Normal Hit Combo. [SS] into AGS |  |
| `SC BBBB` | Severing Sequence (First Class) ~ Aerial Leap | MMMMM | 14 | 12,10,10,17,21 | -4 | LNC | LNC | 15 | Counter Hit Combo 64 damage total [GC]. [SS] into AL | F7 |
| `SC AGS A8` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -4 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `3(K)` | Brake Kick | MM | 14 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `SC AGS A4` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -7 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `BB` | Severing Sequence | MM | 14 | 12,9 | -8 | -2 | -2 | 4 | Normal Hit Combo |  |
| `3K` | Brake Kick | MM | 14 | 10,10 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `AGS AA` | Shifted Revolving Slash | MMMMMM | 14 | 10,8,3,3,8 | -8 | -4 | -4 | 7 | Normal Hit Combo | F1 |
| `6K(K)` | Charging Kick | MMMH | 16 | 6,4,6,24 | 2 | KND | KND | 10 | [GI] H M |  |
| `66B6` | Mobilize: Piercing Thrust ~ Aggression Shift | M | 16 | 22 | 2 | 12 | STN | 5 | [SS] into AGS on hit or block | F5 |
| `ANG (A)` | Support Blade | HH | 16 | 16,16 | 2 | 14 |  | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `AGS K6` | Shifted Strike Sequence ~ Aggression Shift | MMMM | 16 | 6,6,6,6 | 0 | 6 | 6 | 5 | [GC]. Normal Hit Combo. [SS] into AGS |  |
| `ANG (B)` | Support Gatling | HHH | 16 | 4,4,4 | 0 | 8 | STN | 5 | Normal Hit Combo. [SS] Angler Stance |  |
| `SC AL B` | Airborne Spear Cleave: Charged Spear | MMMSM | 16 | 10,8,15,14 | 0 | LNC | LNC | 13 | Normal Hit Combo. [GC] |  |
| `6AA` | Slash Support | HHH | 16 | 16,10,14 | -2 | 10 | 10 | 5 |  |  |
| `METER 236A+B+K` | Soul Stance: Charged Support | MMM | 16 | 24,4,11 | -2 | 4 | 4 | 9 | Normal Hit Combo |  |
| `4(K)` | Augmented Seismic Smash | MM | 16 | 10,16 | -4 | KND | KND | 9 | Normal Hit Combo. [GC] |  |
| `2bA` | Revolving Slash | HMMM | 16 | 8,6,6,14 | -6 | 10 | 10 | 9 | Counter Hit Combo +12 if 2nd or 4th hit lands as CH, returns to crouching | F6 F7 |
| `6K6` | Multistrike Kick ~ Aggression Shift | MMM | 16 | 6,4,6 | -6 | 6 | 14 | 5 | Normal Hit Combo. [SS] into AGS on hit or block for 3rd hit |  |
| `6KK` | Multistrike Kick | MMMHH | 16 | 6,4,6,6,12 | -6 | 8 | 8 | 8 | Normal Hit Combo, +1AP on hit |  |
| `66(K)` | Mobilize: Disposal Kick ~ Angler Stance | M | 16 | 20 | -6 | KND | KND | 5 | [SS] | F5 |
| `AL K` | Airborne Support Kick | HHH | 16 | 8,7,6 | -6 | KND | 14 | 4 | Normal Hit Combo can hold directions to slightly shift where 2B lands |  |
| `SC 3AKK` | Revolving Strike (First Class) ~ Aerial Leap | MMHHM | 16 | 11,13,8,9,16 | -6 | LNC | LNC | 19 | Normal Hit Combo first 2 hits and last 3 hits, delayable, [SS] into AL |  |
| `6A` | Slash Support | H | 16 | 16 | -8 | 2 | 2 | 1 |  |  |
| `2B` | Downward Severing Blade | M | 16 | 20 | -8 | 2 | KND | 2 |  |  |
| `4K` | Core Disruption | MM | 16 | 10,12 | -8 | 2 | 2 | 4 | Normal Hit Combo |  |
| `66K` | Mobilize: Disposal Kick | M | 16 | 20 | -8 | KND | KND | 5 | [LH] upon hitting an opponent in the middle of a technique that uses their soul gauge | F5 |
| `66B` | Mobilize: Piercing Thrust | M | 16 | 22 | -8 | 2 | STN | 5 |  | F5 |
| `AGS KK` | Shifted Strike Sequence | MMMMH | 16 | 6,6,6,6,18 | -8 | LNC | LNC | 10 | [GC]. Counter Hit Combo | F7 |
| `SC 66BB` | Mobilize: Piercing Assault (first Class) | MM | 16 | 23,39 | -8 | KND | KND | 17 | Normal Hit Combo | F5 |

## Lows — true `L` in the level string (SL listed separately)

> ⚠️ For strings the `L` may be a later hit. Whether it is guaranteed after the earlier hits are blocked is ❓.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `BA` | Severing Sweep | MLLL | 14 | 12,8,8,10 | -12 | 2 | 2 | 7 | Counter Hit Combo Returns to crouching | F6 F7 |
| `2K` | Lower Unarmed Kick | L | 16 | 12 | -12 | -4 | -4 | 1 |  |  |
| `1B` | Ground Thrust | L | 18 | 18 | -14 | -4 | 0 | 2 |  |  |
| `1B6` | Ground Thrust ~ Aggression Shift | L | 18 | 18 | -6 | 2 | 6 | 2 | [SS] into AGS on hit or block |  |
| `1B4` | Ground Thrust ~ Back Step ~ Aggression Shift | L | 18 | 18 | -26 | -18 | -14 | 2 | [SS] into AGS on hit or block |  |
| `1B8` | Ground Thrust ~ Aerial Leap | L | 18 | 18 | -22 | -14 | -10 | 2 | [SS] into AL on hit or block |  |
| `1K` | Examine | L | 20 | 14 | -14 | 0 | 0 | 2 | +1AP on hit |  |
| `1(K)` | Examine | L | 20 | 14 | -22 | -8 | 0 | 2 | [SS] into ANG |  |
| `66A` | Mobilize: Slash Pattern | LH | 20 | 10,10 | -14 | -7 | -7 | 2 | Normal Hit Combo -36 if 2nd hit ducked | F5 |
| `66A6` | Mobilize: Slash Pattern ~ Aggression Shift | LH | 20 | 10,10 | -6 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `66A4` | Mobilize: Slash Pattern ~ Back Step ~ Aggression Shift | LH | 20 | 10,10 | -21 | -15 | -15 | 2 | Normal Hit Combo. [SS] into AGS if 2nd hit blocked or connected | F5 |
| `66A8` | Mobilize: Slash Pattern ~ Aerial Leap | LH | 20 | 10,10 | -8 | 0 | 0 | 2 | Normal Hit Combo. [SS] into AL if 2nd hit blocked or connected | F5 |
| `66aK` | Mobilize: Slashing Unarmed Kick | LHL | 20 | 10,14,12 | -14 | -4 | -4 | 4 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs | F5 |
| `66a(K)` | Mobilize: Crush Sequence | LHM | 20 | 10,14,24 | -14 | -6 | -6 | 7 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs, [LH] if 2nd strike whiffs an… | F5 |
| `RUN K` | Sliding Charge | L | 20 | 26 | -24 | KND | KND | 9 | [GC] |  |
| `22K` | Mobilize: Spinning Strike | LHHH | 22 | 20,4,4,4 | -12 | 4 | 4 | 7 | Counter Hit Combo | F5 F7 |
| `22KK` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,24 | -14 | KND | KND | 9 |  | F5 |
| `22K(K)` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,40 | 6 | KND | LNC | 12 | [BA]. [GC] | F5 |
| `AGS B` | Shifted Support Kick | L | 28 | 16 | -18 | -12 | -12 | 2 |  |  |
| `AGS BA` | Shifted Support Kick | LLL | 28 | 16,18,22 | -24 | KND | KND | 6 | Normal Hit Combo |  |
| `AGS BB` | Shifted Support Kick | LSM | 28 | 16,16 | -6 | KND | KND | 9 | Normal Hit Combo. [SS] into AL |  |
| `SC AGS BB` | Shifted Support Kick | LSMSM | 28 | 16,17,11 | 6 | KND | KND | 13 | Normal Hit Combo. [SS] into AL |  |
| `1A` | Blade Sweep | LLL | 30 | 8,8,10 | -12 | 2 | 2 | 4 | Normal Hit Combo. Returns to crouching | F6 |

### SL only (standing guard blocks these)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `2A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 |  |  |
| `FC A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 | Returns to crouching | F6 |
| `BT 2A` | Lower Reversed Slash | SL | 14 | 10 | -4 | 6 | 6 | 1 |  |  |
| `8A+B` | Pod Program A080: Wave | SMSLSLSL | 58 | 16,2,2,2 | -8 | 10 | 10 | 11 | Deals 3 chip damage when guarded |  |
| `8(A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 74 | 24,3,3,3 | -4 | 14 | KND | 19 | [LH] If own guard gauge full, deals 6 chip damage when guarded |  |
| `AGS A+B` | Pod Program R020: Mirage | SMSLSLSL | 22 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Normal Hit Combo Dodges all attacks starting i10 | F1 |
| `AGS (A)+(B)` | Pod Program R020: Mirage | SMSLSLSL | 34 | 12,9,7,6,6 | -8 | LNC | LNC | 12 | Normal Hit Combo Dodges all attacks starting i22 | F1 |
| `AL A+B` | Pod Program A080: Wave | SMSLSLSL | 24 | 16,2,2,2 | -8 | 10 | 10 | 11 | Normal Hit Combo Deals 3 chip damage when guarded |  |
| `AL (A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 40 | 24,3,3,3 | -4 | 14 | KND | 19 | Normal Hit Combo. [LH] If own guard gauge full, deals 6 chip damage when guarded |  |

## Launchers / knockdowns / stuns (on normal hit)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `AAAA` | Slash Sequence | HHHHHH | 12 | 8,10,4,4,4,24 | -8 | KND | KND | 9 |  |  |
| `AAAB` | Slash Assault: Ii | HHHHHMMM | 12 | 8,10,4,4,4,6,6,25 | -14 | KND | KND | 17 | Counter Hit Combo if 1st hit whiffs | F7 |
| `AAB` | Slash Assault: I | HHMMM | 12 | 8,10,6,6,25 | -14 | KND | KND | 13 | [GC] |  |
| `AL AAB` | Airborne Assault | HHMM | 12 | 8,6,12,23 | -16 | KND | KND | 19 | [GC]. Normal Hit Combo |  |
| `AL AAK` | Airborne Unarmed Strike | HHM | 12 | 8,6,28 | -28 | KND | KND | 10 | [GC] (no followups possible), +2AP or [LH] upon hitting opponent whose stun build-up is a… |  |
| `METER AL AAA+B+K` | Supression: Extermination Gambit | M | 12 | 8,6,54 | -16 | KND | KND | 10 | [CE]. [GC] Restores 10% guard stamina, last input can be delayed | F1 |
| `SC AAAA` | Slash Sequence: Charged Blade | HHHHHHM | 12 | 8,10,4,4,4,12,25 | 4 | KND | KND | 14 | [GC] |  |
| `(B)` | Augmented Severing Thrust | MH | 14 | 12,24 | -2 | KND | KND | 9 | Normal Hit Combo on standing opponent, Launcher behind if 2nd strike is CH |  |
| `METER AL A+B+K` | Supression: Extermination Gambit | M | 14 | 80 | -16 | KND | KND | 10 | [CE]. [GC] Restores 10% guard stamina |  |
| `SC AGS A` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -3 | KND | KND | 4 | Normal Hit Combo |  |
| `SC AGS A6` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | 6 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS A4` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -7 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `SC AGS A8` | Shifted Slice: Charged Blade | MMM | 14 | 10,5,10 | -4 | KND | KND | 4 | Normal Hit Combo. [SS] into AGS |  |
| `3AA` | Revolving Assault | MMMM | 16 | 10,12,16,24 | -16 | KND | KND | 10 | Counter Hit Combo if 1st hit whiffs, cancel 2nd hit with G, ends in crouch | F6 F7 |
| `WR B` | Rising Spear Slice | M | 16 | 18 | -14 | KND | KND | 2 |  |  |
| `WR BB` | Rising Spear Slice | MM | 16 | 18,19 | -12 | KND | KND | 9 | Normal Hit Combo |  |
| `6KB` | Multistrike | MMMM | 16 | 6,4,6,40 | -18 | KND | KND | 15 | Counter Hit Combo | F7 |
| `6K(K)` | Charging Kick | MMMH | 16 | 6,4,6,24 | 2 | KND | KND | 10 | [GI] H M |  |
| `4(K)` | Augmented Seismic Smash | MM | 16 | 10,16 | -4 | KND | KND | 9 | Normal Hit Combo. [GC] |  |
| `66K` | Mobilize: Disposal Kick | M | 16 | 20 | -8 | KND | KND | 5 | [LH] upon hitting an opponent in the middle of a technique that uses their soul gauge | F5 |
| `66(K)` | Mobilize: Disposal Kick ~ Angler Stance | M | 16 | 20 | -6 | KND | KND | 5 | [SS] | F5 |
| `AL B` | Airborne Spear Cleave | MMM | 16 | 10,8,18 | -16 | KND | KND | 9 | Normal Hit Combo |  |
| `AL K` | Airborne Support Kick | HHH | 16 | 8,7,6 | -6 | KND | 14 | 4 | Normal Hit Combo can hold directions to slightly shift where 2B lands |  |
| `METER A+B+K` | Supression: Extermination Gambit | M | 16 | 80 | -16 | KND | KND | 10 | [CE]. [GC] |  |
| `SC 66BB` | Mobilize: Piercing Assault (first Class) | MM | 16 | 23,39 | -8 | KND | KND | 17 | Normal Hit Combo | F5 |
| `6B(K)` | Reverse Augmented Seismic Smash | MMMM | 18 | 10,8,10,16 | -4 | KND | KND | 10 | Normal Hit Combo. [GC] |  |
| `3B+K` | Aerial Support Assault | MH | 18 | 22,24 | -16 | KND | KND | 15 | Normal Hit Combo. [GC]. Tech Crouch i4 | F6 |
| `AGS A+G` | Suppression: Composite Kick | H | 18 | 61 | KND | KND | KND |  | [TH] |  |
| `44K` | Mobilize: Cyclone Kick | HHH | 20 | 10,5,15 | -8 | KND | KND | 4 | +2 AP on hit | F5 |
| `RUN K` | Sliding Charge | L | 20 | 26 | -24 | KND | KND | 9 | [GC] |  |
| `SC 22AAA` | Mobilize: Spear Spin (first Class) | HHHH | 20 | 12,10,17,9 | -6 | KND | KND | 6 | Normal Hit Combo. [LH] upon hitting an opponent when your helath is full | F5 |
| `BT B+K` | Acrobatic Counter Assault | HM | 22 | 10,21 | -14 | KND | KND | 9 | [GI] A [4-14] Normal Hit Combo |  |
| `22KK` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,24 | -14 | KND | KND | 9 |  | F5 |
| `22K(K)` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,40 | 6 | KND | LNC | 12 | [BA]. [GC] | F5 |
| `8WR A+B` | Mobilized Pod Program R040: Blade | MMMM | 22 | 8,6,6,14 | -20 | KND | KND | 5 | Normal Hit Combo | F5 |
| `4A+B` | Pod Program R010: Laser | H | 23 | 37 |  | KND | KND |  | [BA] |  |
| `4BBB` | Assault Pattern | MMM | 24 | 24,16,26 | -28 | KND | KND | 29 | [GC]. Normal Hit Combo |  |
| `4BB6B` | Assault Skewer | MMM | 24 | 24,16,16 | -10 | KND | KND | 24 | [GC]. Normal Hit Combo last hit delayable, delay necessary for 3rd hit to connect if oppo… |  |
| `66B+K` | Mobilize: Projectile Slash Pattern | MMMMM | 24 | 8,6,6,6,16 | -12 | KND | KND | 10 | Normal Hit Combo. [GC]. [LH] after 1 successful dodge with Counter Bomb | F5 |
| `ANG A+B` | Revolving Support | M | 26 | 28 | -10 | KND | KND | 4 |  |  |
| `aB` | Revolving Strike | H | 28 | 22 | -4 | KND | LNC | 9 |  |  |
| `44(K)` | Mobilize: Cyclone Kick | HHH | 28 | 15,5,20 | -4 | KND | KND | 4 | +3 AP on hit if fully held | F5 |
| `AGS 2A` | Shifted Projectile Blade | M | 28 | 36 | -12 | KND | KND | 9 | [GC] GI [4-14] horizontal attacks |  |
| `AGS BA` | Shifted Support Kick | LLL | 28 | 16,18,22 | -24 | KND | KND | 6 | Normal Hit Combo |  |
| `AGS BB` | Shifted Support Kick | LSM | 28 | 16,16 | -6 | KND | KND | 9 | Normal Hit Combo. [SS] into AL |  |
| `SC AGS BB` | Shifted Support Kick | LSMSM | 28 | 16,17,11 | 6 | KND | KND | 13 | Normal Hit Combo. [SS] into AL |  |
| `44B` | Mobilize: Rotating Slash Assault | M | 32 | 40 | -14 | KND | KND | 9 | [GC] | F5 |
| `44B6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 32 | 40 | -8 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44B4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AGS on hit or block | F5 |
| `44B8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 32 | 40 | -18 | KND | KND | 9 | [GC]. [SS] into AL on hit or block | F5 |
| `4(A)+(B)` | Pod Program R010: Laser | H | 35 | 47 |  | KND | KND |  | [BA] |  |
| `44(A)` | Mobilize: Augmented Horizontal Assault | MMMMM | 36 | 22,8,8,8,15 | -16 | KND | KND | 10 | Normal Hit Combo | F5 |
| `METER 6A+B+K` | Limiter Release: Self-Destruct | M | 36 | 116 | -32 | KND | KND | 10 | [CE]. [GC] |  |
| `9K` | Leaping Unarmed Strike | M | 38 | 36 | -8 | KND | KND | 2 | +4AP on hit |  |
| `A+B` | Pod Program R050: Spear | SM | 38 | 28 | 0 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `(A)+(B)` | Pod Program R050: Spear | SM | 50 | 32 | 4 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `6(A)+(B)` | Pod Program R010: Laser | H | 64 | 80 | -8 | KND | KND | 15 | [GC] |  |
| `B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges high/middle attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks… |  |
| `2B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges middle/low attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks,… |  |
| `RE AAA` | Inverted Support | HHHMM |  | 22,6,6,4,9 | -12 | KND | KND | 38 | Normal Hit Combo. [GC]. [LH] upon winning 2nd round |  |
| `SC AL AAA` | Airborne Slash Pattern: Charged Laser | HHHHHH | 12 | 8,6,6,5,6,11 |  | LNC | LNC |  | Normal Hit Combo |  |
| `SC BBBB` | Severing Sequence (First Class) ~ Aerial Leap | MMMMM | 14 | 12,10,10,17,21 | -4 | LNC | LNC | 15 | Counter Hit Combo 64 damage total [GC]. [SS] into AL | F7 |
| `WR BK` | Rising Android Kick ~ Aerial Leap | MM | 16 | 18,15 | -14 | LNC | KND | 9 | Counter Hit Combo. [SS] into AL | F7 |
| `AGS KK` | Shifted Strike Sequence | MMMMH | 16 | 6,6,6,6,18 | -8 | LNC | LNC | 10 | [GC]. Counter Hit Combo | F7 |
| `SC 3AKK` | Revolving Strike (First Class) ~ Aerial Leap | MMHHM | 16 | 11,13,8,9,16 | -6 | LNC | LNC | 19 | Normal Hit Combo first 2 hits and last 3 hits, delayable, [SS] into AL |  |
| `SC AL B` | Airborne Spear Cleave: Charged Spear | MMMSM | 16 | 10,8,15,14 | 0 | LNC | LNC | 13 | Normal Hit Combo. [GC] |  |
| `6(B)` | Augmented Spear Slash Sequence | MMMMM | 18 | 10,8,22,8,18 | 0 | LNC | LNC | 15 | [BA]. [GC]. Counter Hit Combo | F7 |
| `AGS 4A+G` | Suppression: Composite Slash | H | 18 | 40 | LNC | LNC | LNC |  | [TH] |  |
| `3B` | First Strike ~ Aerial Leap | M | 20 | 26 | 0 | LNC | LNC | 9 | [SS] into AL |  |
| `AGS A+B` | Pod Program R020: Mirage | SMSLSLSL | 22 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Normal Hit Combo Dodges all attacks starting i10 | F1 |
| `4B` | Assault Pattern | M | 24 | 24 | -14 | LNC | LNC | 9 | [GC] |  |
| `4BB` | Assault Pattern | MM | 24 | 24,16 | -20 | LNC | LNC | 20 | [GC]. Normal Hit Combo |  |
| `FC B+K` | Floating Assault | M | 26 | 42 | -12 | LNC | LNC | 15 | [GC] |  |
| `22B+K` | Mobilize: Scatter Spear | MM | 28 | 10,8,16 | -4 | LNC | LNC | 13 | Normal Hit Combo | F1 F5 |
| `3(B)` | Augmented First Strike ~ Aerial Leap | MSMSMSM | 32 | 22,4,3,3,2 | 6 | LNC | LNC | 12 | [SS] into AL | F1 |
| `11B+K` | Mobilze: Crushing Kick | M | 32 | 38 | 8 | LNC | LNC | 15 | [BA]. [GC] | F5 |
| `11(B)+(K)` | Mobilize: Heavy Assault | MMMM | 32 | 10,10,10,14 | -16 | LNC | LNC | 15 | Normal Hit Combo. [GC] | F5 |
| `AGS (A)+(B)` | Pod Program R020: Mirage | SMSLSLSL | 34 | 12,9,7,6,6 | -8 | LNC | LNC | 12 | Normal Hit Combo Dodges all attacks starting i22 | F1 |
| `9A` | Leaping Horizontal Assault | MHH | 42 | 18,7,18 | -38 | LNC | LNC | 9 | [GC] no followups possible after GC |  |
| `2A+B` | Pod Program R020: Mirage | SMSMSMSMSM | 44 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Dodges H / M / L attacks starting i32 |  |
| `2(A)+(B)` | Pod Program R020: Mirage | SMSMSMSMSM | 56 | 12,9,7,6,6 | -12 | LNC | LNC | 12 | Dodges H / M / L attacks starting i44 |  |
| `[4]B+K` | Mobilize: Reversed Severing Spin | MMM | 58 | 16,16,27,9 |  | LNC | LNC |  | Normal Hit Combo. [UA] | F1 F5 |
| `RE AB` | Inverted Assault Volley | HMMMM |  | 29,6,6,6,6 | -14 | LNC | LNC | 38 | [GC], Normal Hit Combo on [LH] upon winning 2nd round |  |
| `RE (B)` | Inverted Skewer: Augmented | MM |  | 19,20,20 |  | LNC | LNC | 50 | [BA]. [GC]. Normal Hit Combo on [LH] upon winning 2nd round | F1 |
| `RE K` | Inverted Orbit Strike ~ Aerial Leap | M |  | 24 | 6 | LNC | LNC | 33 | [SS]. [GC]. [LH] upon winning 2nd round then does 26+30 damage and launches higher |  |
| `SC 4BBB` | Assault Pattern: Charged Gatling | MMMSMSMSM | 24 | 25,17,27,3,2,2 | 2 | STN | STN | 35 | Normal Hit Combo |  |
| `AGS (B)` | Shifted Support Skewer (augmented) | M | 28 | 36 | -12 | STN | STN | 9 | [GC] |  |
| `44A` | Mobilize: Horizontal Assault | MM | 34 | 22,22 | -16 | STN | KND | 5 | Normal Hit Combo | F5 |
| `6A+B` | Pod Program R010: Laser | H | 40 | 45 | -14 | STN | STN | 15 | [GC] |  |
| `44(B)` | Mobilize: Rotating Slash Assault | M | 40 | 50 | 0 | STN | STN | 15 | [BA]. [GC] | F5 |
| `44(B)6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 40 | 50 | 6 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 40 | 50 | -8 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 40 | 50 | -4 | STN | KND | 15 | [BA]. [GC]. [SS] into AL on hit or block | F5 |
| `RE B` | Inverted Skewer Sequence | MM |  | 14,22 |  | STN | STN | 50 | Normal Hit Combo. [BA]. [GC]. [LH] upon winning 2nd round |  |

## Lethal Hits / AP conditions

> 2B's LH conditions are unusually **stateful**: own soul gauge full, own guard gauge full, Analysis Points, health full, winning RE round 2.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `4A` | Assault Helix | HH | 18 | 10,16 | -6 | 6 | 6 | 2 | Normal Hit Combo. [LH] if own soul gauge full |  |
| `6BB` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -24 | -6 | KND | 12 | Normal Hit Combo. [LH] upon hitting opponent from the back |  |
| `6BB6` | Projectile Slash Sequence ~ Aggression Shift | MMMMM | 18 | 10,8,6,6,6 | -2 | 16G | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… | F4 |
| `6BB4` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -20 | -4 | LNC | 12 | Normal Hit Combo. [SS] into AGS on hit or block for 5th hit [LH] upon hitting opponent fr… |  |
| `6BB8` | Projectile Slash Sequence | MMMMM | 18 | 10,8,6,6,6 | -18 | 0 | LNC | 12 | Normal Hit Combo. [SS] into AL on hit or block for 5th hit [LH] upon hitting opponent fro… |  |
| `6BBB` | Projectile Slash Sequence | MMMMMMM | 18 | 10,8,6,6,6,10,24 | -8 | 6 | KND | 21 | Counter Hit Combo. [LH] upon hitting opponent from the back | F7 |
| `6BK` | Reversed Core Disruption | MMM | 18 | 10,8,10,12 | -8 | 2 | 2 | 7 | Normal Hit Combo, +2AP on hit or [LH] upon hitting an opponent whose stun build-up is at … | F1 |
| `6KK` | Multistrike Kick | MMMHH | 16 | 6,4,6,6,12 | -6 | 8 | 8 | 8 | Normal Hit Combo, +1AP on hit |  |
| `3(K)` | Brake Kick | MM | 14 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `3(K)` | Brake Kick | MM | 14 | 10,22 | -2 | 8 | 8 | 9 | Counter Hit Combo +2AP on hit | F2 F7 |
| `1K` | Examine | L | 20 | 14 | -14 | 0 | 0 | 2 | +1AP on hit |  |
| `WR (K)` | Rising Brake Kick | MM | 12 | 10,16 | -6 | 4 | 4 | 4 | Partial hold Normal Hit Combo +1AP on hit | F2 |
| `9K` | Leaping Unarmed Strike | M | 38 | 36 | -8 | KND | KND | 2 | +4AP on hit |  |
| `A+B` | Pod Program R050: Spear | SM | 38 | 28 | 0 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `(A)+(B)` | Pod Program R050: Spear | SM | 50 | 32 | 4 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `8(A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 74 | 24,3,3,3 | -4 | 14 | KND | 19 | [LH] If own guard gauge full, deals 6 chip damage when guarded |  |
| `SIDE-R A+G` | Suppression: Support Thrust | H | 18 | 60 | KND | KND | KND |  | [TH] +1AP Restores 4% Guard Stamina | F5 |
| `66A+G` | Suppression: Unarmed Leg Throw | H | 18 | 55 | KND | KND | KND |  | [TH] +2AP Restores 6% Guard Stamina | F5 |
| `66a(K)` | Mobilize: Crush Sequence | LHM | 20 | 10,14,24 | -14 | -6 | -6 | 7 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs, [LH] if 2nd strike whiffs an… | F5 |
| `66K` | Mobilize: Disposal Kick | M | 16 | 20 | -8 | KND | KND | 5 | [LH] upon hitting an opponent in the middle of a technique that uses their soul gauge | F5 |
| `22B` | Mobilize: Skewer | M | 18 | 22 | -18 | 4 | STN | 9 | [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B6` | Mobilize: Skewer ~ Aggression Shift | M | 18 | 22 | -8 | 15 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B4` | Mobilize: Skewer ~ Back Step ~ Aggression Shift | M | 18 | 22 | -28 | -7 | STN | 9 | [SS] into AGS. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `22B8` | Mobilize: Skewer ~ Aerial Leap | M | 18 | 22 | -24 | -2 | STN | 9 | [SS] into AL. [LH] upon hitting opponent at tip range after they missed an attack | F5 |
| `44K` | Mobilize: Cyclone Kick | HHH | 20 | 10,5,15 | -8 | KND | KND | 4 | +2 AP on hit | F5 |
| `44(K)` | Mobilize: Cyclone Kick | HHH | 28 | 15,5,20 | -4 | KND | KND | 4 | +3 AP on hit if fully held | F5 |
| `66B+K` | Mobilize: Projectile Slash Pattern | MMMMM | 24 | 8,6,6,6,16 | -12 | KND | KND | 10 | Normal Hit Combo. [GC]. [LH] after 1 successful dodge with Counter Bomb | F5 |
| `AL AAK` | Airborne Unarmed Strike | HHM | 12 | 8,6,28 | -28 | KND | KND | 10 | [GC] (no followups possible), +2AP or [LH] upon hitting opponent whose stun build-up is a… |  |
| `AL (A)+(B)` | Pod Program A080: Wave | SMSLSLSL | 40 | 24,3,3,3 | -4 | 14 | KND | 19 | Normal Hit Combo. [LH] If own guard gauge full, deals 6 chip damage when guarded |  |
| `RE A6` | Inverted Support ~ Aggression Shift | H |  | 22 | -2 | 2 | 2 | 33 | [SS]. STN on LH upon winning 2nd round |  |
| `RE AA` | Inverted Support | HHH |  | 22,6,6 | 0 | 8 | 8 | 34 | Normal Hit Combo. [LH] upon winning 2nd round |  |
| `RE AAA` | Inverted Support | HHHMM |  | 22,6,6,4,9 | -12 | KND | KND | 38 | Normal Hit Combo. [GC]. [LH] upon winning 2nd round |  |
| `RE AB` | Inverted Assault Volley | HMMMM |  | 29,6,6,6,6 | -14 | LNC | LNC | 38 | [GC], Normal Hit Combo on [LH] upon winning 2nd round |  |
| `RE B` | Inverted Skewer Sequence | MM |  | 14,22 |  | STN | STN | 50 | Normal Hit Combo. [BA]. [GC]. [LH] upon winning 2nd round |  |
| `RE (B)` | Inverted Skewer: Augmented | MM |  | 19,20,20 |  | LNC | LNC | 50 | [BA]. [GC]. Normal Hit Combo on [LH] upon winning 2nd round | F1 |
| `RE K` | Inverted Orbit Strike ~ Aerial Leap | M |  | 24 | 6 | LNC | LNC | 33 | [SS]. [GC]. [LH] upon winning 2nd round then does 26+30 damage and launches higher |  |
| `SC 22AAA` | Mobilize: Spear Spin (first Class) | HHHH | 20 | 12,10,17,9 | -6 | KND | KND | 6 | Normal Hit Combo. [LH] upon hitting an opponent when your helath is full | F5 |

## Guard Impacts / dodges — check WHAT each covers

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `6K(K)` | Charging Kick | MMMH | 16 | 6,4,6,24 | 2 | KND | KND | 10 | [GI] H M |  |
| `2A+B` | Pod Program R020: Mirage | SMSMSMSMSM | 44 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Dodges H / M / L attacks starting i32 |  |
| `2(A)+(B)` | Pod Program R020: Mirage | SMSMSMSMSM | 56 | 12,9,7,6,6 | -12 | LNC | LNC | 12 | Dodges H / M / L attacks starting i44 |  |
| `B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges high/middle attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks… |  |
| `2B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges middle/low attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks,… |  |
| `BT B+K` | Acrobatic Counter Assault | HM | 22 | 10,21 | -14 | KND | KND | 9 | [GI] A [4-14] Normal Hit Combo |  |
| `66B+K` | Mobilize: Projectile Slash Pattern | MMMMM | 24 | 8,6,6,6,16 | -12 | KND | KND | 10 | Normal Hit Combo. [GC]. [LH] after 1 successful dodge with Counter Bomb | F5 |
| `AGS 2A` | Shifted Projectile Blade | M | 28 | 36 | -12 | KND | KND | 9 | [GC] GI [4-14] horizontal attacks |  |
| `AGS A+B` | Pod Program R020: Mirage | SMSLSLSL | 22 | 8,6,5,4,4 | -16 | LNC | LNC | 9 | Normal Hit Combo Dodges all attacks starting i10 | F1 |
| `AGS (A)+(B)` | Pod Program R020: Mirage | SMSLSLSL | 34 | 12,9,7,6,6 | -8 | LNC | LNC | 12 | Normal Hit Combo Dodges all attacks starting i22 | F1 |

## Break Attacks / Unblockables

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `6(B)` | Augmented Spear Slash Sequence | MMMMM | 18 | 10,8,22,8,18 | 0 | LNC | LNC | 15 | [BA]. [GC]. Counter Hit Combo | F7 |
| `A+B` | Pod Program R050: Spear | SM | 38 | 28 | 0 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `(A)+(B)` | Pod Program R050: Spear | SM | 50 | 32 | 4 | KND | KND | 15 | [BA]. [GC]. [LH] upon impact counter |  |
| `4A+B` | Pod Program R010: Laser | H | 23 | 37 |  | KND | KND |  | [BA] |  |
| `4(A)+(B)` | Pod Program R010: Laser | H | 35 | 47 |  | KND | KND |  | [BA] |  |
| `B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges high/middle attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks… |  |
| `2B+K` | Angler Stance / Counter Bomb | M |  | 40 | 0 | KND | KND | 15 | Dodges middle/low attacks [4-14]. After successful dodge. [BA]. [GC]. [GI] H/M/L attacks,… |  |
| `44(B)` | Mobilize: Rotating Slash Assault | M | 40 | 50 | 0 | STN | STN | 15 | [BA]. [GC] | F5 |
| `44(B)6` | Mobilize: Rotating Slash Assault ~ Aggression Shift | M | 40 | 50 | 6 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)4` | Mobilize: Rotating Slash Assault ~ Back Step ~ Aggression Shift | M | 40 | 50 | -8 | STN | KND | 15 | [BA]. [GC]. [SS] into AGS on hit or block | F5 |
| `44(B)8` | Mobilize: Rotating Slash Assault ~ Aerial Leap | M | 40 | 50 | -4 | STN | KND | 15 | [BA]. [GC]. [SS] into AL on hit or block | F5 |
| `22K(K)` | Mobilize: Spinning Strike | LHHHM | 22 | 20,4,4,4,40 | 6 | KND | LNC | 12 | [BA]. [GC] | F5 |
| `11B+K` | Mobilze: Crushing Kick | M | 32 | 38 | 8 | LNC | LNC | 15 | [BA]. [GC] | F5 |
| `[4]B+K` | Mobilize: Reversed Severing Spin | MMM | 58 | 16,16,27,9 |  | LNC | LNC |  | Normal Hit Combo. [UA] | F1 F5 |
| `(B)+(G)` | Soul Stance: Aggressive Defense | M | 64 | 45 | 8 |  |  | 20 | [RE]. [BA]. [GC] |  |
| `RE B` | Inverted Skewer Sequence | MM |  | 14,22 |  | STN | STN | 50 | Normal Hit Combo. [BA]. [GC]. [LH] upon winning 2nd round |  |
| `RE (B)` | Inverted Skewer: Augmented | MM |  | 19,20,20 |  | LNC | LNC | 50 | [BA]. [GC]. Normal Hit Combo on [LH] upon winning 2nd round | F1 |

## Slide inputs (lowercase)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `aB` | Revolving Strike | H | 28 | 22 | -4 | KND | LNC | 9 |  |  |
| `b6` | Hilt Assault | H | 14 | 16 | 0 | 6 | 10 | 2 | [GC] |  |
| `2bA` | Revolving Slash | HMMM | 16 | 8,6,6,14 | -6 | 10 | 10 | 9 | Counter Hit Combo +12 if 2nd or 4th hit lands as CH, returns to crouching | F6 F7 |
| `66aK` | Mobilize: Slashing Unarmed Kick | LHL | 20 | 10,14,12 | -14 | -4 | -4 | 4 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs | F5 |
| `66a(K)` | Mobilize: Crush Sequence | LHM | 20 | 10,14,24 | -14 | -6 | -6 | 7 | Normal Hit Combo first 2 hits or 1st+3rd hit and 2nd whiffs, [LH] if 2nd strike whiffs an… | F5 |

## Tech Crouch / Tech Jump / ends-crouching → ❓ FC/WR candidates

> 2B has only **2 FC moves** (`FC A` SL, `FC B+K` LNC i26) and **7 WR moves**. Rows below are **candidates** — the Xianghua lesson is that the label is an indicator, not a guarantee.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `(A)` | Augmented Revolving Slash | HHMMM | 12 | 8,8,6,6,14 | -6 | 10 | 10 | 7 | Counter Hit Combo if 2nd hit lands as CH, +12 if 3rd or 5th hit lands as CH, returns to c… | F6 F7 |
| `3AA` | Revolving Assault | MMMM | 16 | 10,12,16,24 | -16 | KND | KND | 10 | Counter Hit Combo if 1st hit whiffs, cancel 2nd hit with G, ends in crouch | F6 F7 |
| `1A` | Blade Sweep | LLL | 30 | 8,8,10 | -12 | 2 | 2 | 4 | Normal Hit Combo. Returns to crouching | F6 |
| `FC A` | Lower Slash | SL | 12 | 12 | -6 | 6 | 6 | 1 | Returns to crouching | F6 |
| `WR A` | Rising Slash Sequence | MH | 18 | 10,14 | -4 | 6 | 6 | 3 | Tech Crouch | F6 |
| `BA` | Severing Sweep | MLLL | 14 | 12,8,8,10 | -12 | 2 | 2 | 7 | Counter Hit Combo Returns to crouching | F6 F7 |
| `2bA` | Revolving Slash | HMMM | 16 | 8,6,6,14 | -6 | 10 | 10 | 9 | Counter Hit Combo +12 if 2nd or 4th hit lands as CH, returns to crouching | F6 F7 |
| `6B+K` | Crushing Kick | MMM | 24 | 22,6,14 | -14 | 6 | LNC | 14 | Normal Hit Combo. [GC] 1st and 3rd hits Tech Jump i10 |  |
| `3B+K` | Aerial Support Assault | MH | 18 | 22,24 | -16 | KND | KND | 15 | Normal Hit Combo. [GC]. Tech Crouch i4 | F6 |
| `22AB` | Mobilize: Spear Sequence | HHM | 20 | 12,10,22 | -10 | 2 | 2 | 8 | Normal Hit Combo Returns to Crouching | F5 F6 |

## Throws

> ❓ Whether crouching evades all of these is untested. Escape is by direction.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes | ⚑ |
|---|---|---|---|---|---|---|---|---|---|---|
| `A+G` | Suppression: Slash Kick | H | 18 | 45 | KND | KND | KND |  | [TH] |  |
| `4A+G` | Suppression: Impaling Slash | H | 18 | 50 | KND | KND | KND |  | [TH] |  |
| `SIDE-L A+G` | Suppression: Reversed Projectile Blade | H | 18 | 70 | KND | KND | KND |  | [TH] | F5 |
| `SIDE-R A+G` | Suppression: Support Thrust | H | 18 | 60 | KND | KND | KND |  | [TH] +1AP Restores 4% Guard Stamina | F5 |
| `BACK A+G` | Suppression: Multistrike Protocol | H | 18 | 69 | KND | KND | KND |  | [TH] +11 Damage with Just Frame | F5 |
| `66A+G` | Suppression: Unarmed Leg Throw | H | 18 | 55 | KND | KND | KND |  | [TH] +2AP Restores 6% Guard Stamina | F5 |
| `AGS B+K` | Shifted Crushing Rocket | M | 32 | 64 | -30 | 10 | 10 | 8 | [GC] (no followup possible), Shifts to [TH] on hit |  |
| `AGS A+G` | Suppression: Composite Kick | H | 18 | 61 | KND | KND | KND |  | [TH] |  |
| `AGS 4A+G` | Suppression: Composite Slash | H | 18 | 40 | LNC | LNC | LNC |  | [TH] |  |

## ⚑ Data-reliability flag index

| Flag | Rows |
|---|---|
| **F1** (10) | `6BK` · `3(B)` · `22B+K` · `[4]B+K` · `AGS AA` · `AGS A+B` · `AGS (A)+(B)` · `AL A` · `RE (B)` · `METER AL AAA+B+K` |
| **F2** (4) | `3(K)` · `WR (K)` |
| **F3** (4) | `AL A` · `AL AA` · `AL AAA` · `AL B+K` |
| **F4** (1) | `6BB6` |
| **F5** (46) | `SIDE-L A+G` · `SIDE-R A+G` · `BACK A+G` · `66A+G` · `66A` · `66A6` · `66A4` · `66A8` · `66aK` · `66a(K)` · `66K` · `66(K)` · `22A` · `22AA` · `22AB` · `44A` · `44(A)` · `66B` · `66B6` · `66B4` · `66B8` · `22B` · `22B6` · `22B4` · `22B8` · `44B` · `44B6` · `44B4` · `44B8` · `44(B)` · `44(B)6` · `44(B)4` · `44(B)8` · `22K` · `22KK` · `22K(K)` · `44K` · `44(K)` · `8WR A+B` · `66B+K` · `22B+K` · `11B+K` · `11(B)+(K)` · `[4]B+K` · `SC 22AAA` · `SC 66BB` |
| **F6** (9) | `(A)` · `3AA` · `1A` · `FC A` · `WR A` · `BA` · `2bA` · `3B+K` · `22AB` |
| **F7** (16) | `AAA` · `AAAB` · `(A)` · `3AA` · `BA` · `BBB` · `6BBB` · `6(B)` · `2bA` · `WR BK` · `6KB` · `3(K)` · `WR (K)` · `22K` · `AGS KK` · `SC BBBB` |

### Other source issues noticed by hand

| Where | Issue |
|---|---|
| `3(K)`, `WR (K)` | Two rows each: partial hold (-6/+4) vs full hold (-2/+8). Same input string. |
| `6BB6` | Hit = `16G` — non-numeric. Probably +16. |
| `AGS BB` | Hit = `KND` but Notes say `[SS] into AL`; the Style Lesson describes it as a low into a launch. What happens on block vs hit is unclear. |
| `AL A`, `AL AA`, `AL AAA` | No frame data — AL is airborne; values may not apply in the usual sense. |
| `AGS 236`, `AGS 214`, `ANG 236` … | Stance-transition rows have only `i` (= frames until stance actions). Not an attack startup. |
| `B+K`, `2B+K` | No `i` listed — counter stances. Dodge window [4-14] only. |
| Wiki Combos page | `FC B+K, SC 66BB` listed twice with **63** and **83** dmg. A table titled `44[B]` actually holds `22B+K` routes. |
| Community summaries | Web guides list `AGS B+G` and "AGS K low sweep" — **neither exists in this data** (`AGS K` is MMMM). Treat secondary guides as low-confidence. |

## ✅ Lab-confirmed additions

*(none yet — 2B not labbed. Add dated rows here; never edit Part 1/2 cells.)*

| Date | Input | Raw says | Lab says |
|---|---|---|---|

