# Soul Calibur VI — Notes

Living reference. Update as I test things.

## Files

**Root = generic / player files. One folder per character.**

| File | Use it when |
|---|---|
| `05-practice-queue.md` | ⭐ **Open before a session.** Drills + numbered Qs, linking to detail. |
| `01-system-mechanics.md` | Understanding *why* something works. Read away from the game. |
| `04-matchups.md` | Before/during a set vs. a specific character. |
| `06-dismissed.md` | Tried and rejected, so I don't re-litigate. |
| **`07-glossary.md`** | **Official abbreviations.** Authoritative — overrides my earlier notes. |
| `08-damage-model.md` | Combo scaling **fit** (unproven — see caveats there). |
| `combo.ps1` | Rough prediction only — ⚠️ hit 4+ multipliers are extrapolated, unknown |
| `99-data-sources.md` | How frame data is pulled and normalized. |

| Character | `gameplan.md` | `framedata.md` | Extra |
|---|---|---|---|
| **Xianghua** (main) | Moves, combos, stance rules | Normalized movelist + indexes | `mixup-loops.md` guard-break loops · `flowcharts.md` PlantUML · `community-guides.md` 📚 third-party guide + Discord combo sheet, with conflicts vs my notes |
| **Ivy** (secondary) | 4-step gameplan + moveset status + anti-jab chart (2026-11-20) | Throw index + stance model | `community-guides.md` 📚 combo sheet |
| **2B** (new 2026-10-14) | Draft trees, unlabbed | Normalized movelist + ⚑ flags + branch/suffix indexes | — |
| **Azwel** (new 2026-10-14) | Draft trees + per-mode punish table + 3-session plan · ✅ first lab notes 2026-11-20 | Normalized movelist + `Wpn` column + ⚑ flags + K/6K/4K families | — |
| **Nightmare** (opponent, 2026-10-24) | Playing *as* him to understand the matchup (2026-11-20, all ❓): whiff punish, armor → NTC, GS/NSS stances | Normalized movelist + `Armor` column + revenge index | `counter-matchup.md` — revenge/Soul Wave trees + Ivy counters · ✅ §0 lab results 2026-11-20 · `community-guides.md` 📚 "Nightmare Season 2" combo sheet + sheet-vs-wiki diff |
| **Sophitia** (new 2026-11-20) | Short-range mid/throw all-rounder; AS (`236`) / TAS (`236236`) stances, launcher → `TAS B` combos (all ❓) | Normalized movelist + ⚑ flags + branch/stance indexes | `community-guides.md` 📚 Sophitia Encyclopedia digest + verbatim Combos / Lethal Hits |
| **Setsuka** (new 2026-11-20) | Mid-range punisher; `236`/`214` instant-crouch inputs, SKY (`4B+K`) / WoH (`8B+K`) stances (all ❓) | Normalized movelist + ⚑ flags + branch/stance indexes | `community-guides.md` 📚 Setsuka Guide + Cheat Sheet digest + verbatim Combos / Punishers |

> Character `framedata.md` files are **wiki snapshots**, not ground truth. Raw values stay verbatim; lab results are added as dated notes beside them.

## Conventions

- Numpad notation. `6` fwd, `4` back, `2` down, `8` up, `3` down-fwd, `9` up-fwd.
- `(A)` = hold the input.
- Stance prefix = requirement to access:
  `FC` full crouch · `WR` while rising · `SC` soul charge ·
  `SXS`/`PXS` Silent/Playful Xia Sheng · `BHH` Bea Her Hua · `HL` Hou Lee ·
  `BT` back turned · `RE` reversal edge follow-up · `WD` while downed ·
  2B: `AGS` Aggression Shift · `AL` Aerial Leap (airborne) · `ANG` Angler Stance · `METER` costs gauge
  Azwel: `BoB`/`ToW`/`CoE` stances · `UNFORMED`/`SWORD`/`AX`/`SPEAR`/`ALMIGHTY` weapon-mode-gated · `METER ODD/EVEN` 236A+B+K count
  Nightmare: `NSS`/`NLS`/`NBS`/`GS` stances · `NTC` Night Terror Charge · `REVENGE` = after armor clicks (Dire Vengeance)
- **No stance prefix = usable from neutral standing.**

## Claim status

| Mark | Meaning |
|---|---|
| ✅ | Verified in game (by me) |
| 📊 | From frame data / wiki snapshot — **not** more reliable than the lab; unconfirmed |
| 📖 | Official in-game Style Lesson (designer intent, not frame proof) |
| 📚 | Community wiki (combos page etc.) — has known errors |
| ❓ | **Untested assumption. Do not build on it.** |

## Cross-file rule

⭐ **`05-practice-queue.md` is the only file I open before playing.**

Anything I need to *do* must appear there — as a numbered **Q** with a link to
the file holding the detail. Deep analysis lives in its own file
(`08-damage-model.md`, each character folder); the queue carries the **running order and checkboxes**.

**If a lab question only exists in an analysis file, it will be missed.**


