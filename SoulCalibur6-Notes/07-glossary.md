# Glossary — official abbreviations

Source: `https://wiki.supercombo.gg/w/Soulcalibur_VI/Glossary`
**Authoritative.** Where this contradicts my earlier notes, this wins.

---

## ⚠️ `[SS]` means SPECIAL STANCE, not sidestep

| Abbrev | Actually means |
|---|---|
| **`SS`** | **Special Stance** — "an attack that transitions to a stance" |

I previously used "SS cancels" as a *sidestep* metric when scoring characters.
**That was wrong.** Every `[SS]` count I quoted was a count of **stance transitions**.
(Character-selection scores in `04-matchups.md` are affected — see `06-dismissed.md`.)

⚠️ Note `SS` is overloaded in character-specific contexts:
Mitsurugi `SS` = Silent Step · Ivy `SS` = Summon Suffering.

---

## System mechanics

| Abbrev | Name | Definition |
|---|---|---|
| `CE` | Critical Edge | Metered super, one stock of Soul Gauge |
| `GC` | Guard Crush | Guard broken when **Guard Stamina** is depleted |
| `GI` | Guard Impact | Parry; reward varies by what you parried |
| `RE` | Reversal Edge | Parries **on startup**, leads to RPS clash on hit |
| `SC` | Soul Charge | Metered, **fully invincible** burst; pushes away + powers up |
| `SG` | Soul Gauge | Meter for CE, SC, and metered options |
| **`RI`** | **Resist Impact** | ⭐ **Metered GI that parries Break Attacks AND Unblockables.** Drains an SC opponent's meter. |
| `Re-GI` | Reverse Impact | GI-ing immediately after the opponent GIs *your* attack |

---

## Attack properties

| Abbrev | Name | Definition |
|---|---|---|
| `H` | High | Hits standing, **whiffs on crouching** |
| `M` | Mid | Hits both; **must be blocked standing** |
| `L` | Low | Hits both; **must be blocked crouching**. Whiffs on airborne |
| `SM` | Special Mid | Blockable standing **or** crouching. **Hits airborne** |
| `SL` | Special Low | Blockable standing **or** crouching. **Whiffs on airborne** |
| `AT` | Attack Throw | Normal attack that becomes a throw cutscene on condition |
| **`BA`** | **Break Attack** | Big Guard Stamina damage, **generally plus on block**, and ⭐ **cannot be countered by GI or RE**. Blue lightning. |
| `LH` | Lethal Hit | Enhanced properties on hit if a condition is met |
| `SS` | Special Stance | Attack that transitions to a stance |
| `TH` | Throw | Pierces standing guard. Escapable |
| **`UA`** | **Unblockable** | Cannot be guarded. Long startup, big damage. Screen darkens + flame |
| `TC` | Tech Crouch | Counts as **crouching** during part of the move → **dodges HIGHS** |
| `TJ` | Tech Jump | Counts as **jumping** during part of the move → **dodges LOWS** |
| `aGI` | Auto Guard Impact | Any GI property that isn't the manual `GI` |
| `BE` | Brave Edge | SC5 term; in SC6 = burning meter to enhance a move (Yoshimitsu, Geralt) |

---

## States

| State | Notes |
|---|---|
| Crouching (`FC`) | Hold `22` after `2`+`G`, or recover crouching from a move. **Evades highs.** |
| Jumping | `7`/`8`/`9`+`G`. **Evades lows.** |
| Guarding | Blocks all H and M. ⚠️ **Pressing `7`/`8`/`9` while guarding makes you JUMP.** |
| **Guarding Low** | `G`+`2`. Blocks all L, and ⭐ **evades ALL highs AND ALL THROWS.** Only **mids** hit you. |

> ⭐ **Crouch block dodges throws.** That's a direct answer to the Astaroth problem —
> you don't only have to *break* throws, you can crouch-block to make them whiff entirely.
> Cost: every mid hits you.

---

## Movement

| Term | Definition |
|---|---|
| Step | Tap once in a direction |
| Run | Hold, or double-tap-and-hold, a direction |
| **Step Guard** | ⭐ Step in a **cardinal** direction (`6`/`4`/`2`/`8`), then **quickly cancel with `G`**. Timing differs per direction and per character. |
| Running Step | Hold `22` or `88` and keep moving. For dodging **verticals**. |

> ⭐ **Step Guard is the fix for "I sidestepped while guarding and jumped."**
> You jumped because `8`+`G` from a guarding state is a jump input. Step Guard is
> step-*then*-guard, not step-*while*-guarding.

---

## Mechanics & techniques

| Term | Definition |
|---|---|
| **Ukemi** (Tech, Teching) | Recover from knockdown with a **cardinal direction + `G`**. ⚠️ **Forward ukemi is the FASTEST**, but leaves you in range of more attacks. Not completely safe — counterable. |
| **iWR** / iWS | **Instant While Rising.** From crouch (`2`+`G`), **release and immediately attack.** This is how you access WR moves deliberately. |
| Dead Trap | Hitting a downed opponent who could have ukemi'd |
| **Ukemi Trap** (Tech Trap) | Hitting someone *during* their ukemi → more damage or a combo |
| Mashing | Attacking at negative frames. Risky (counter hit) but denies the opponent free pressure |
| Small Calibur | Poke-heavy, minimal-risk playstyle |
| Unga | Reckless aggression |

> ⭐ **"Teching" and "ukemi" are the same thing** — you asked about this. Rolling is
> just ukemi in a direction.

---

## Xianghua's stances (official names)

| Abbrev | Name |
|---|---|
| `SXS` | Silent Xia Sheng |
| `PXS` | Playful Xia Sheng |
| `BHH` | Bea Her Hua |
| **`LHH`** | **Laughing** Bea Her Hua |
| **`RHH`** | **Retreating** Bea Her Hua |
| `HL` | Hou Lee |

⚠️ **BHH has three variants**, not one. `44B+K` = "Laughing Bea Her Hua" (LHH).

📚 Community sources (Jacky15x, Discord sheet) write **`LBHH` / `RBHH`** = my `LHH` / `RHH`, and
call raw `11_44_77B+K` **Retreating** (RBHH), not Laughing — naming conflict with the wiki, same
vertical coverage. They also say **BHH = horizontal** aGI, **LBHH/RBHH = vertical**, all incl. kicks.

| 📚 Term | Means |
|---|---|
| `QS` | Quake Stun — the damaging `2B+K` hit state |
| `iFC` | instant FC: `2G`/`3G`, then FC move (≈5f) |
| `RCC` | from crouch tap a direction → neutral → standing move |
| `.` (sheet) | next input in the same string (`6B.B` = `6BB`) |
| `[ ]` | hold = my `( )` |

---

## Ivy's stances

| Abbrev | Name |
|---|---|
| `SE` | Serpent's Embrace — coils Valentine around her shoulders |
| `SL` | Spiral Lust — lays Valentine on the floor |
| **`SS`** | **Summon Suffering** — slower, **unbreakable** command throw |
| **`CS`** | **Calamity Symphony** — faster, **tech crouching** command throw |

> `SS` is **unbreakable**. That's the payoff for its speed cost.

**📚 Ivy sheet notation** ([community-guides](Ivy/community-guides.md)): `:` = justframe (`SE B:B:B:B:B`) · `iCS`/`iSS` = instant input, more dmg · `22_88A` = `22A` or `88A` · `RE1`/`RE2` = win in clash round 1/2 · `RE 2/6/8` = win with a movement. ⚠️ In the sheet's stun list `CS` = Crumple Stun — context decides.

---

## 2B's stances & notation

| Abbrev | Name / meaning |
|---|---|
| `AGS` | Aggression Shift — main stance, entered by `X6` (and `X4` backstep) suffixes |
| `AL` | Aerial Leap — **airborne** stance, entered by `X8`, `3B`, `3(B)`, `WR BK`, `AGS BB` |
| `ANG` | Angler Stance — entered by `(K)`, `1(K)`, `66(K)`, `B+K`/`2B+K` |
| `AP` | Analysis Points — stack on certain hits, carry across rounds; enough AP turns some moves (e.g. `4K`) into Lethal Hits |
| `X6` / `X4` / `X8` | Suffix held at the end of a string: → AGS / backstep → AGS / → AL. Chosen **before** seeing block/hit |
| `8WR` | My normalization of wiki `(2)_(8)_(1)_(4)_(7)_(3)_(6)_(9)` = run in any direction |
| `SIDE-L` / `SIDE-R` / `BACK` | Positional throws (opponent's left side / right side / from behind) |
| `METER` | My prefix: usable from neutral but costs gauge (CE, SC activation) |
| `[AT]` | Wiki tag on `ANG K` etc. — ❓ meaning unconfirmed |

> ⚠️ `SL` in 2B data = **Special Low** (attack level), not Ivy's Spiral Lust.

---
## Azwel's stances, modes & notation

| Term | Meaning |
|---|---|
| **BoB** Beauty of Balance | Sword stance. `K`, `[2/8]K`, or string + `K` |
| **ToW** Tragedy of War | Axe stance. `[3/6/9]K`, `66K`, or string + `6K` |
| **CoE** Comedy of Errors | Spear-and-shield stance. `[1/4/7]K`, `44K`, or string + `4K` |
| **Weapon mode** | Sword / Axe / Spear, set by the last move's weapon. Off-mode move = **+8f startup** 📚 |
| **Unformed** | No weapon. Round start, after `A+B` or any Weapon Art |
| **Almighty** | All weapons. After a throw / `6A+B` / `8WR A+B` (📖 also `AAA`, `BBB`). 📚 fast for one move. Permanent in Soul Charge |
| **Weapon Art** | `B+K` (Sword), `6B+K` (Axe), `4B+K` (Spear), `8B+K` (Almighty only). Resets to Unformed |
| `BoB.B` | Community dot-notation = `BoB B` |
| `6B:A` | Just-frame input |
| **RCC** | Recovery Crouch Cancel: cancel crouch recovery into a standing move (📚) |
| **SSCB** | Sidestep + crouch-block — the wiki's counter to Azwel stance mixups on block |
| `W!` | Wall hit / wall-only |
## Opponent stances (friend's roster)

| Char | Stances |
|---|---|
| **Groh** | `AVN`/`AVG` Avenger (split swords) · `SN` Steed of the Night (**SC-only teleport** — your "teleporting everywhere") |
| **Nightmare** | `NSS` Night Side · `NLS` Night Lower · `NBS` Night Behind · `GS` Grim Stride (dash) · `NTC` Night Terror Charge (powerup) |
| **Geralt** | `QR` Quen Rush (**armored** Witcher Sign stance) |
| **Astaroth** | — |
| **Zasalamel** | `TS#` Time Stop (1/2/3 orbs) |
| **Cassandra** | `AS` Angel Step · `AT` Angel Twirl · `TS` Titanic Struggle (attack throw) · `DF` Divine Force |
| **Tira** | `JS` Jolly / `GS` Gloomy / **`GS+` Gloomy Coda** (9 mood switches → unlimited SC options) · `UD` Updraft · `GM` Gestopft Madness |
| Sophitia | `AS` Angel Step · `TAS` Twin Angel Step |
| Yoshimitsu | `DGF` Dragonfly · `FLE` Flea · `MED` Meditation |


