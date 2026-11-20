# Ivy — Normalized Frame Data

> **Generated** from the SuperCombo MediaWiki API. Same pipeline as `../Xianghua/framedata.md`.
> Lab-confirmed corrections (✅) take precedence.

## ⚠️ EVERY INPUT IS FULLY QUALIFIED

No prefix = **usable from neutral standing**. Anything else is gated.

| Prefix | Means | Count |
|---|---|---|
| *(none)* | neutral standing | **116** |
| `SE` | Serpent's Embrace stance | 21 |
| `FC` | full crouch | 11 |
| `BT` | back turned | 8 |
| `SC` | Soul Charge **state** | 7 |
| `WR` | while rising | 6 |
| `SC SE` | Soul Charge **and** SE | 4 |
| `METER` | ⚠️ **costs meter but usable from neutral** (Soul Charge, Critical Edge) | 4 |
| `RE` | after winning Reversal Edge | 3 |
| `SL` | Spiral Lust stance | 3 |
| `RUN` / `Downed Opponent` / `Midair Opponent` | situational | 1 each |

> ⚠️ **`METER` vs `SC` is a real distinction.** `cat=GaugeAttacks` only means *costs meter*.
> `METER 4A+B+K` **is** Soul Charge — it obviously cannot require Soul Charge.
> `METER 236A+B+K` is the Critical Edge. Both are neutral-usable.

## Stance model — Ivy is NOT Xianghua

```
Neutral ──┬── (A)6 / (6)(K) / 44B+K / 214K ──▶  SE (Serpent's Embrace)  21 moves
          └── 3A+B  [UA]                   ──▶  SL (Spiral Lust)         3 moves
```

**Flat, not nested.** SE and SL are separate — no superset relationship, no SE→SL shift.
Contrast Xianghua, where PXS ⊃ SXS.

### Neutral stance entries — ranked

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `6B(A)` | Warning Mood | MH | 18 | 14,26 | 4 | 8 | 8 | 7 | Gives stun if only the last hit is a CH. [SS] |
| `(A)6` | Dancing Wisp | H | 22 | 22 | 0 | 12 | 12 | 1 | [SS] into SE |
| `44B+K` | Exile ~ Serpent's Embrace | M | 40 | 20 |  |  |  | 9 | [SS]. Tech Crouch [37-] |
| `214K` | Serpent's Embrace |  | 30 |  |  |  |  |  | [SS] |
| `3A+B` | Spiral Lust | M |  | 56 | KND | KND | KND |  | [UA]. [SS]. Tech Crouch [14-RC] |
| `4(A)` | Dancing Insanity | HH | 20 | 20 | -4 | 4 | 4 | 3 | [SS] |
| `22(B)` | Drowning Madness | M | 24 | 23 | -4 | KND | KND | 9 | [SS] |
| `(6)(K)` | Wondergale | M | 16 | 18 | -6 | 2 | 2 | 2 | Tech Crouch [6-17]. [SS] into SE |

⭐ **`6B(A)` is +4 on block into SE** — the best entry. `(A)6` is **0 on block / +12 on hit**.
⚠️ `3A+B` (→ SL) is an **Unblockable** with Tech Crouch [14-RC] — a read, not a poke.


## Notation
Identical to Xianghua's file — see `../Xianghua/framedata.md` and `../07-glossary.md`.

| Token | Trap |
|---|---|
| `+` | **simultaneous press**, NOT a follow-up. `9B+K` is a *sibling* of `9B`. |
| `(X)` | **hold**. Hold ≠ stance — only `[SS]` means a stance change. |
| lowercase `a` `b` `k` | **slide input**. `6b8` = tap 6, slide b, slide 8. |
| `376231A+G` / `3746916A+G` | ⚠️ **motion command throws** — long stick rotations. Have **"just" (perfect-input) versions** worth +5 dmg. |
| `66` / `44` / `22` / `88` | any fwd / back / down-ish / up-ish |

### ⚠️ Fields that DO NOT EXIST
pushback · **range** · tracking · recovery · sidestep data · Lethal Hit conditions (except in Notes)

> ⚠️ **Range is Ivy's defining stat and the data does not contain it.**
> Zone boundaries must come from lab testing, not this file.

---

# PART 1 — NEUTRAL (116)

## HorizontalAttacks  (19)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `A` | Biting Raven | H | 12 | 8 | -8 | -2 | 2 | 1 | Cancel with G |
| `AA` | Biting Raven | H | 12 | 8,18 | -12 | 2 | 2 | 3 | [LH] |
| `AK` | Governance | HM | 12 | 8,18 | -8 | 6 | 6 | 4 | Counter Hit Combo |
| `2A` | Ancient Worshipper | SL | 16 | 10 | -10 | -2 | -2 | 1 | Tech Crouch [8-RC] |
| `6A` | Cataclysm | H | 16 | 12 | -16 | -12 | -2 | 1 |  |
| `6AA` | Cataclysm | HMH | 16 | 12,10,20 | -4 | 6 | 6 | 7 | Counter Hit Combo |
| `6AK` | Dashing Wind | HH | 16 | 12,18 | 2 | 6 | 6 | 3 |  |
| `A4` | Danger Range | HH | 16 | 22 | -6 | 2 | 2 | 1 |  |
| `3A` | Raven Gash | M | 18 | 18 | -6 | 12 | 12 | 1 |  |
| `4(A)` | Dancing Insanity | HH | 20 | 20 | -4 | 4 | 4 | 3 | [SS] |
| `4A` | Dancing Insanity | H | 20 | 20 | 0 | 8 | 8 | 3 |  |
| `6(A)` | Tempting Tezhas | H | 20 | 18 | -16 | -4 | KND | 4 |  |
| `(A)6` | Dancing Wisp | H | 22 | 22 | 0 | 12 | 12 | 1 | [SS] into SE |
| `3(A)` | Dancing Tezhas | M | 22 | 16 | -12 | 0 | 4 | 1 |  |
| `a6` | Dancing Wisp | H | 22 | 22 | -8 | 2 | 2 | 1 |  |
| `1A` | Ancient Wheel | L | 26 | 12 | -18 | -4 | -4 | 1 | Tech Crouch [10-RC] |
| `1AA` | Ancient Wheel | LL | 26 | 12,12 | -14 | -2 | -2 | 3 | Counter Hit Combo. Tech Crouch [0-RC] |
| `9A` | Rising Raven | M | 28 | 22 | -12 | 4 | 4 | 1 | Slight damage difference depending on the jump direction |
| `214A` | Serpent's Venom | H | 54 | 100 | KND | KND | KND |  | [UA]. [G] cancel. Tech Crouch [7-46]. Tech Jump [47-73] |

## VerticalAttacks  (27)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `6b8` | Ivy Lick | H | 12 | 20 | -20 | -10 | -10 | 2 | [TH] |
| `6b8K` | Silhouette | HL | 12 | 20,16 | -14 | 2 | 2 | 4 |  |
| `(B)` | Poisoned Destiny | MM | 16 | 32 | -12 | -10 | -10 | 9 |  |
| `B` | Ode to Undine | M | 16 | 12 | -10 | -4 | -4 | 2 | Cancel with G |
| `BB` | Ode to Undine | MM | 16 | 12,16 | -10 | -4 | -4 | 5 |  |
| `BB(B)` | Dancing Wave | MMM | 16 | 12,16,38 | 6 | KND | KND | 12 | [BA] |
| `BBB` | Dancing Wave | MMM | 16 | 12,16,28 | -10 | -4 | -4 | 10 |  |
| `6B` | Warning Mood | M | 18 | 14 | -8 | 0 | 0 | 2 | Tech Crouch [16-31] |
| `6B(A)` | Warning Mood | MH | 18 | 14,26 | 4 | 8 | 8 | 7 | Gives stun if only the last hit is a CH. [SS] |
| `6BA` | Warning Mood | MH | 18 | 14,26 | -4 | 0 | 0 | 7 | Counter Hit Combo. Gives stun if only the last hit is a CH |
| `6BB` | Warning Immortal | MM | 18 | 14,18 | -8 | 6 | 6 | 9 | Tech Crouch [0-15] |
| `214(B)` | Venom Lash | MM | 20 | 31 | -8 | 0 | 0 | 4 | SS. Tech Crouch [7-17] |
| `214B` | Venom Lash | MM | 20 | 31 | -18 | -10 | -10 | 4 | Tech Crouch [7-17] |
| `2B` | Dominance | M | 20 | 22 | -6 | 2 | 2 | 5 | Tech Crouch [20-29] |
| `3B` | Aqua Clipper | M | 20 | 22 | -16 | KND | KND | 9 | [LH] |
| `4b8` | Dashing Wings | HHHHHSMSMSMM | 20 | 45 | 3 | KND | KND | 12 |  |
| `b6` | Darkside | M | 20 | 20 | -8 | 4 | 4 | 3 | Stun on tip hit |
| `4B` | Rushing Raven | H | 22 | 18 | -14 | -6 | -6 | 9 | Gives knockdown at close range, more guard damage dependin… |
| `6(B)` | Ivy Lash | M | 22 | 14 | -16 | -2 | -2 | 9 | Tech Crouch [18-41] |
| `6(B)2_8` | Biting Ivy Inner | MM | 22 | 14,12 | -11 | -2 | -2 | 10 | -16 on block at middle range |
| `bA` | Raven's Egg | H | 22 | 30 | -8 | KND | KND | 4 |  |
| `b(A)` | Eclipse Raven | HM | 26 | 24 | -10 | 6 | 6 | 3 |  |
| `1(B)` | Poison Ivy | SLSMSM | 28 | 30 | -2 | KND | KND | 13 | Tech Crouch [29-51] |
| `1B` | Poison Leaf | L | 28 | 18 | -6 | 2 | 2 | 9 | Tech Crouch [29-51] |
| `9B` | Akasha's Cage | M | 42 | 28 | -10 | KND | KND | 9 | Shifts to attack throw upon hit. [TH] |
| `9BB` | Akasha's Cage | MM | 42 | 28,16 | -16 | KND | KND | 14 | Shifts to attack throw upon hit. [TH] |
| `9BBB` | Akasha's Cage | MMHH | 42 | 28,16,11 | -12 | -6 | -6 | 19 | Shifts to attack throw upon hit. [TH] |

## KickAttacks  (10)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `K` | Night Swallow | H | 12 | 12 | -8 | 0 | 0 | 1 | Cancel with G |
| `3K` | Rage Kick | M | 14 | 16 | -6 | 4 | 4 | 2 |  |
| `1K` | Queen's Pleasure | L | 16 | 10 | -16 | -2 | KND | 2 | [TH] |
| `2K` | Charmer Silhouette | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch [11-RC] |
| `6K` | Starving Spirit | M | 16 | 12 | -8 | 2 | 2 | 2 |  |
| `6K(B)` | Blade Sharpener | MH | 16 | 28 | KND | KND | KND |  | UA, Cancel with G, Becomes M when used at a distance Tech … |
| `6KB` | Starving Spirit | MH | 16 | 12,26 | 4 | KND | KND | 11 | Cancel with G, Becomes M when used at a distance, Counter … |
| `4K` | Evil Sparrow | M | 18 | 22 | -6 | 8 | 8 | 2 | Tech Crouch [6-19] |
| `9K` | Rising Mind Shatter | M | 26 | 22 | -6 | KND | KND | 4 | Tech Jump [7-32] |
| `3(K)` | Rage Kick | M | 34 | 27 | 2 | KND | KND | 9 | [LH] |

## MultiAttacks  (22)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `6A+B` | God Whisper | M | 22 | 12 | -16 | 0 | 0 | 1 | Tech Jump [20-32] Tech Crouch [32-RC] |
| `6A+BA` | God Whisper | MSLM | 22 | 12,21 | -6 | 4 | 4 | 6 | Tech Crouch [0-22] |
| `8A+B` | Creeping Ivy | M | 22 | 20 | -34 | KND | KND | 9 | Tech Crouch [8-22] Tech Jump [22-54] |
| `8A+B(B)` | Hailstorm | MMMM | 22 | 20,27 | -20 | KND | KND | 23 | Tech Jump [0-53] Tech Crouch [54-79] |
| `8A+BB` | Creeping Ivy | MM | 22 | 20,15 | -24 | KND | KND | 14 | Tech Jump [0-40] |
| `1B+K` | Dancing Gnome | MMMM | 24 | 10,10,8,8 | -10 | KND | KND | 8 | Normal Hit Combo |
| `B+K` | Banshee | M | 26 | 24 | -6 | KND | KND | 9 | [LH] |
| `4A+B` | Spiral Punishment | MMM | 28 | 18 | -6 | 4 | 4 | 5 | [GI][4-25] vs M. non-kick horizontals |
| `4A+BB` | Spiral Punishment | MMMMMMM | 28 | 18,32 | -24 | KND | KND | 13 | Combos on [GI] |
| `6(B)+(K)` | Embrace of Guilt | M | 28 | 37 | -14 | 10 | 10 | 9 | Shifts to attack throw upon hit. Tech Crouch [26-35] |
| `6B+K` | Embrace of Guilt | M | 28 | 37 | -4 | 6 | 6 | 9 | Shifts to attack throw upon close-range hit. Tech Crouch [… |
| `8B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [9-14] |
| `9B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [11-16] |
| `1A+B` | Razor's Bite | L | 30 | 20 | -12 | KND | KND | 9 |  |
| `2B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |
| `2A+B` | Metal Fencer | M | 34 | 22 | -18 | KND | KND | 9 |  |
| `2A+BB` | Metal Fencer | MM | 34 | 22,18 | -22 | KND | KND | 14 |  |
| `3A+BB` | Suppressed Exile | M | 38 | 20 | -8 | LNC | LNC | 9 | timing vary based upon when B is pressed |
| `A+B` | Revelation | M | 38 | 30 | 10 | KND | KND | 15 | BA. [LH] |
| `1(B)+(K)` | Dancing Gnome | MMMM | 48 | 10,10,10,16 | 6 | KND | KND | 8 | Normal Hit Combo. [BA] |
| `4B+K` | Heel Explosion | M | 74 | 80 | KND | KND | KND |  | [UA] Cancel with G. Tech Crouch [74-] |
| `3A+B` | Suppressed Exile | SM | 80 | 37,13 |  | LNC | LNC |  | [UA]. Tech Crouch [14-RC]. Normal Hit Combo. 37 damage upo… |

## RunAttacks  (25)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `(3)_(9)K` | Mind Shatter | H | 16 | 24 | -6 | KND | KND | 9 | [LH] after finishing round with CE |
| `(6)(K)` | Wondergale | M | 16 | 18 | -6 | 2 | 2 | 2 | Tech Crouch [6-17]. [SS] into SE |
| `(6)K` | Wondergale | M | 16 | 18 | -4 | 4 | 4 | 2 | Tech Crouch [6-17] |
| `22B` | Nocturnal Sylph | M | 16 | 20 | -12 | 2 | 2 | 9 |  |
| `22BA` | Nocturnal Sylph | MH | 16 | 20,20 | 4 | KND | KND | 10 | Tech Crouch [31-71] |
| `66B` | Elder Gnome | M | 16 | 18 | -8 | 4 | KND | 2 |  |
| `66BB` | Elder Gnome | MM | 16 | 18,23 | -12 | 14 | 14 | 9 |  |
| `44B` | Cursed Heavens | M | 18 | 22 | -16 | KND | KND | 9 | [LH]. Tech Crouch [4-12] |
| `66A+B` | Freeze Gaze | MM | 18 | 35 | -8 | 4 | 4 | 3 |  |
| `66(A)` | Sparking Blade | MM | 20 | 44 | -12 | -4 | -4 | 10 | [LH] |
| `66A` | Damned Mark | M | 20 | 24 | -8 | 2 | 2 | 4 |  |
| `22(B)` | Drowning Madness | M | 24 | 23 | -4 | KND | KND | 9 | [SS] |
| `22K` | Royal Huntress | L | 24 | 18 | -18 | KND | KND | 4 | Tech Crouch [7-15] superTech Crouch [16-24] Tech Crouch [2… |
| `44A` | Cursed Soul | M | 24 | 24 | -8 | 2 | 2 | 4 |  |
| `(3)_(9)(K)` | Mind Shatter | H | 26 | 33 | 0 | KND | KND | 9 | [LH] after finishing round with CE |
| `(3)_(9)(K)4` | Mind Shatter | H | 26 | 33 | 4 | KND | KND | 9 |  |
| `22A` | Wolf Lash | H | 26 | 18 | -12 | 0 | 0 | 4 | [LH] |
| `22A+B` | Arid Land | MM | 26 | 40 | -10 | KND | KND | 2 | [GI] [5-16] mid horizontal |
| `44(A)` | Insanity Light | M | 28 | 34 | -24 | 8 | 8 | 4 | Shifts to attack throw upon hit. [TH] |
| `44(A)6` | Insanity Feast | M | 28 | 44 | -24 | KND | KND | 4 | Shifts to attack throw upon hit. [TH] |
| `44K` | Diving Raven | M | 28 | 26 | -18 | KND | KND | 9 | Tech Crouch [6-12] Tech Jump [12-36] |
| `66B+K` | Raging Gnome | MMM | 34 | 37 | -4 | KND | KND | 19 |  |
| `44B+K` | Exile ~ Serpent's Embrace | M | 40 | 20 |  |  |  | 9 | [SS]. Tech Crouch [37-] |
| `44A+B` | Crucifixion | M | 48 | 42 | -6 | KND | KND | 4 |  |
| `44(A)+(B)` | Crucifixion | M | 72 | 70 | KND | KND | KND |  | [UA] |

## Throws  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `3746916A+G` | Calamity Symphony | H | 16 | 70 | KND | KND | KND |  | [TH] |
| `3746916A+G` | Calamity Symphony (just) | H | 16 | 74 | KND | KND | KND |  | [TH] |
| `4A+G` | Primal Dominance | H | 18 | 50 |  | KND | KND |  | [TH] |
| `A+G` | Dominion Throw | H | 18 | 55 |  | KND | KND |  | [TH] |
| `376231A+G` | Summon Suffering | H | 20 | 60 | KND | KND | KND |  | [TH] |
| `376231A+G` | Summon Suffering (just) | H | 20 | 65 | KND | KND | KND |  | [TH] |
| `2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |

## ReversalEdgeAttacks  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `B+G` | Existence | M | 46 | 35 | -8 | RE | RE | 16 | KND vs airborne. [RE] [6-30] |
| `B+G6` | Darkside | M | 52 | 20 | -7 | 4 | 4 | 2 | [RE] |
| `(B)+(G)` | Existence | M | 66 | 45 | 8 | RE | RE | 20 | [RE] [6-50] [BA] |

## Serpent'sembrace  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `214K` | Serpent's Embrace |  | 30 |  |  |  |  |  | [SS] |

## Spirallust  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `3A+B` | Spiral Lust | M |  | 56 | KND | KND | KND |  | [UA]. [SS]. Tech Crouch [14-RC] |

---

# PART 2 — GATED

## SE  (21)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SE 8B+K` | Redemption | H | 12 | 20 | -20 | -10 | -10 | 2 | [AT] |
| `SE 8B+KK` | Blind Obsession | HL | 12 | 36 | -14 | 2 | 2 | 4 |  |
| `SE 6B` | Ivy Sting | M | 14 | 24 | -12 | KND | KND | 9 | Shifts to follow-up attack upon hit |
| `SE (K)` | Charging Serpent | M | 16 | 18 | 0 | 8 | KND | 2 | Tech Crouch [6-17] |
| `SE 3746916A+G` | Calamity Symphony | H | 16 | 84 | KND | KND | KND |  | [TH] |
| `SE K` | Charging Serpent | M | 16 | 18 | -8 | 2 | KND | 2 | Tech Crouch [6-17] |
| `SE 4A+G` | Reeling Mind | H | 18 | 20 | 8 | 8 | 8 |  | [TH] Put the opponent BT |
| `SE A` | Violent Spirits | H | 18 | 12 | -14 | -8 | 2 | 1 |  |
| `SE A+G` | Reeling Mind | H | 18 | 20 | 8 | 8 | 8 |  | [TH] Put the opponent BT |
| `SE AA` | Violent Spirits | HMH | 18 | 40 | -4 | 6 | 6 | 7 |  |
| `SE 376231A+G` | Summon Suffering | H | 20 | 65 | KND | KND | KND |  | [TH] |
| `SE 6A` | Wind Embrace | H | 20 | 16 | -6 | 2 | 2 | 2 |  |
| `SE 6AA` | Wind Embrace | HH | 20 | 58 | -6 | KND | KND | 9 | Shifts to follow-up attack upon hit |
| `SE BBB` | Mistress' Justice | MMM | 22 | 36 | -12 | KND | KND | 9 |  |
| `SE BBBBB` | Howling Spirits | MMMMM | 22 | 68 | 8 | KND | KND | 20 | [BA] |
| `SE 4A` | Lamenting Tail | L | 24 | 16,8,12 | -26 | KND | KND | 4 | Shifts to attack throw upon hit. [TH] |
| `SE 4B` | Landing Embrace | M | 38 | 33 | 10 | KND | KND | 19 | [BA] |
| `SE 4B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `SE 6B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `SE B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `SE A+B` | Released Souls | M | 74 | 60 | KND | KND | KND |  | [UA] |

## SC SE  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SC SE A+B+K` | Guilty Throne | MMMMMMMM | 14 | 80 | -16 | KND | KND | 10 |  |
| `SC SE AA` | Deadly Screaming Mandrake | HMH | 18 | 36 | 4 | KND | KND | 7 | [BA] |
| `SC SE 6A` | Wind Embrace | H | 20 | 17 |  |  |  |  | [UA] |
| `SC SE 6AA` | Mourning Spirit | HH | 20 | 64 |  | KND | KND |  | [UA] , Shifts to follow-up attack upon hit |

## SL  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SL B` | Exile | M | 4 | 20 | -8 | KND | KND | 9 | Tech Crouch [0-7] |
| `SL B` | Exile (delay) | M | 4 | 25 | -8 | KND | KND | 9 | Tech Crouch [0-7] |
| `SL G` | Spiral Lust ~ Serpent's Embrace |  | 24 |  |  |  |  |  | [SS] into SE. Tech Crouch [0-21] |

## SC  (7)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SC (6)K(K)` | Unseen Connection | MM | 16 | 47 | 6 | 14 | 14 | 5 | [SS] |
| `SC (6)KK` | Unseen Connection | MM | 16 | 47 | 2 | 10 | 10 | 5 |  |
| `SC 6AA` | Deadly Cataclysm | HMH | 16 | 38 | 4 | KND | KND | 7 | [BA]. Counter Hit Combo |
| `SC 6BB` | Death Glance | MM | 18 | 68 | 1 | KND | KND | 16 | Shifts to attack throw upon hit, [BA] |
| `SC 4(A)` | Deadly Firestorm | H | 20 | 23 | 2 | 8 | 8 | 3 | [SS]. [BA] |
| `SC 4A` | Deadly Firestorm | H | 20 | 23 | 8 | 10 | 10 | 3 | [BA] |
| `SC 22A+BB` | Decaying Land | MMMMMM | 26 | 78 | -8 | KND | KND | 24 | SC. [GI] [5-16] vs [M] horizontal |

## METER  (4)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `METER 4A+B+K` | Soul Charge | SM | 6 | 0 | 0 | 8 | 8 |  | invincible since i4. Pushback happens at i6, 50F recovery,… |
| `METER 236(A)+(B)+(K)` | Heartless Confession | MMMMMM | 16 | 36 | -2 | 6 | 6 | 9 | [SS] |
| `METER 236A+B+K` | Heartless Confession | MMMMMM | 16 | 36 | -6 | 4 | 4 | 9 |  |
| `METER A+B+K` | Guilty Throne | MMMMMMMM | 34 | 80 | -16 | KND | KND | 10 | [GI] [4-32] vs Verticals |

## FC  (11)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `FC A` | Ancient Worshipper | SL | 16 | 10 | -10 | -2 | -2 | 1 | Tech Crouch [0-9] Tech Crouch [17-RC] |
| `FC K` | Charmer Silhouette | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch [0-4] Tech Crouch [10-RC] |
| `FC 1B` | Pride | M | 18 | 26 | -12 | KND | KND | 9 | Tech Crouch [0-16] |
| `FC 3(B)` | Ivy Masquerade | L | 18 | 18 | -10 | 3 | STN | 2 | SS. [LH] |
| `FC 3B` | Ivy Masquerade | L | 18 | 18 | -20 | -6 | KND | 2 | Tech Crouch [0-]. [LH] |
| `FC 3K` | Nail Cross | M | 18 | 14 | -12 | -4 | -4 | 1 | Tech Crouch [0-RC] |
| `FC B` | Aqua Worshipper | M | 18 | 16 | -10 | 0 | 0 | 2 | Tech Crouch [0-4] Tech Crouch [16-] |
| `FC 3A+B` | Lost Pledge | HH | 20 | 36 | 6 | 10 | 10 | 13 | [BA] |
| `FC 2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `FC 3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |
| `FC B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |

## WR  (6)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `WR K` | Rising Cross | M | 12 | 18 | -8 | 0 | 0 | 2 | Tech Crouch [0-6] |
| `WR A` | Menace Slice | H | 20 | 30 | -4 | 8 | KND | 1 | Tech Crouch [0-5] |
| `WR B` | Cagemaster | M | 20 | 16 | -14 | KND | KND | 9 | Tech Crouch [0-13] |
| `WR B+K` | Asylum | M | 20 | 32 | -17 | -7 | -7 | 12 | [GI][14-48] vs [H]&[M]&[L] attacks. Tech Crouch [0-7] |
| `WR BB` | Cagemaster | MHH | 20 | 16,11 | -12 | -6 | -6 | 14 | [AT] Shifts to attack throw upon hit |
| `WR (A)` | Deceitful Raven | H | 22 | 14 | -16 | -2 | -2 | 4 | Tech Crouch [0-5] |

## BT  (8)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `BT A` | Scars of Memory | H | 12 | 19 | -8 | KND | KND | 2 |  |
| `BT K` | Reverse Night Swallow | H | 14 | 14 | -6 | 4 | 4 | 1 |  |
| `BT 2B` | Deep Immortal | M | 18 | 18 | -8 | 2 | 2 | 2 | Tech Crouch [13-RC] |
| `BT 2K` | Deep Silhouette | L | 18 | 18 | -14 | -4 | -4 | 1 | Tech Crouch [13-RC] |
| `BT B` | Reverse Immortal | M | 18 | 16 | -6 | 4 | 4 | 2 |  |
| `BT 2A` | Screams of Paranoia | L | 22 | 8 | -14 | -6 | 4 | 2 | [GI][15-21] vs [L] attack. Tech Crouch[16-54] |
| `BT 2AB` | Screams of Paranoia | LM | 22 | 8,24 | -14 | KND | KND | 6 | Counter Hit Combo. Combos on GI. Tech Crouch[0-13] |
| `BT B+K` | Viper Tail | SM | 26 | 24 | -4 | KND | KND | 9 | Ends in BT. Tech Crouch [18-66] |

## RE  (3)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `RE (A)` | Screeching Spirit | H |  | 15 | 6 | KND | KND | 33 | SS. [LH] |
| `RE A` | Screeching Spirit | H |  | 15 | -2 | KND | KND | 33 | [LH] |
| `RE K` | Queen of Blades | M |  | 16 |  |  |  | 33 | [LH] |

## RUN  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `RUN K` | Sliding | L | 20 | 26 | -22 | KND | KND | 9 | Tech Jump [6-27] Tech Crouch [27-47] |

## RE BOB  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `RE BOB BBBBBBBB` | Fires of Insanity | M |  | 48 |  |  |  | 50 | [LH] |

## Downed Opponent  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `Downed Opponent 1K` | Ivy Sweep | LL | 16 | 25 | KND | KND | KND |  | [AT] |

## Midair Opponent  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `Midair Opponent 6b8` | Ivy Lick | H | 12 | 41 | KND | KND | KND |  | [TH] |

## SE (airborne opp)  (1)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `SE (airborne opp) 8B+K` | Redemption | H | 12 | 51 | KND | KND | KND | 2 | [AT] |


---

# PART 3 — DERIVED INDEXES

## ⭐ ALL THROWS (the grappler identity)

> Throws are **escapable by direction only** — the input direction must be matched.
> ⚠️ **Crouch block ducked the standing throws tested** (Xianghua Q19/Q40). Low/command throws are **not checked** — and Ivy's own `CS` is a tech-crouching command throw, so check her throws individually.

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `6b8` | Ivy Lick | H | 12 | 20 | -20 | -10 | -10 | 2 | [TH] |
| `SE 8B+K` | Redemption | H | 12 | 20 | -20 | -10 | -10 | 2 | [AT] |
| `SE (airborne opp) 8B+K` | Redemption | H | 12 | 51 | KND | KND | KND | 2 | [AT] |
| `Midair Opponent 6b8` | Ivy Lick | H | 12 | 41 | KND | KND | KND |  | [TH] |
| `SE 3746916A+G` | Calamity Symphony | H | 16 | 84 | KND | KND | KND |  | [TH] |
| `3746916A+G` | Calamity Symphony (just) | H | 16 | 74 | KND | KND | KND |  | [TH] |
| `3746916A+G` | Calamity Symphony | H | 16 | 70 | KND | KND | KND |  | [TH] |
| `1K` | Queen's Pleasure | L | 16 | 10 | -16 | -2 | KND | 2 | [TH] |
| `Downed Opponent 1K` | Ivy Sweep | LL | 16 | 25 | KND | KND | KND |  | [AT] |
| `SE A+G` | Reeling Mind | H | 18 | 20 | 8 | 8 | 8 |  | [TH] Put the opponent BT |
| `SE 4A+G` | Reeling Mind | H | 18 | 20 | 8 | 8 | 8 |  | [TH] Put the opponent BT |
| `4A+G` | Primal Dominance | H | 18 | 50 |  | KND | KND |  | [TH] |
| `A+G` | Dominion Throw | H | 18 | 55 |  | KND | KND |  | [TH] |
| `SE 376231A+G` | Summon Suffering | H | 20 | 65 | KND | KND | KND |  | [TH] |
| `WR BB` | Cagemaster | MHH | 20 | 16,11 | -12 | -6 | -6 | 14 | [AT] Shifts to attack throw upon hit |
| `376231A+G` | Summon Suffering (just) | H | 20 | 65 | KND | KND | KND |  | [TH] |
| `376231A+G` | Summon Suffering | H | 20 | 60 | KND | KND | KND |  | [TH] |
| `SE 4A` | Lamenting Tail | L | 24 | 16,8,12 | -26 | KND | KND | 4 | Shifts to attack throw upon hit. [TH] |
| `44(A)6` | Insanity Feast | M | 28 | 44 | -24 | KND | KND | 4 | Shifts to attack throw upon hit. [TH] |
| `44(A)` | Insanity Light | M | 28 | 34 | -24 | 8 | 8 | 4 | Shifts to attack throw upon hit. [TH] |
| `FC 2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `FC 3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |
| `3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |
| `2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `9BBB` | Akasha's Cage | MMHH | 42 | 28,16,11 | -12 | -6 | -6 | 19 | Shifts to attack throw upon hit. [TH] |
| `9BB` | Akasha's Cage | MM | 42 | 28,16 | -16 | KND | KND | 14 | Shifts to attack throw upon hit. [TH] |
| `9B` | Akasha's Cage | M | 42 | 28 | -10 | KND | KND | 9 | Shifts to attack throw upon hit. [TH] |

### Command throws — "just" versions

| Throw | Motion | Normal | **Just** | From SE |
|---|---|---|---|---|
| **Summon Suffering** (`SS`) | `376231A+G` | 60 | **65** | **65** |
| **Calamity Symphony** (`CS`) | `3746916A+G` | 70 | **74** | ⭐ **84** |

- `SS` is **unbreakable** (glossary). `CS` is faster and **tech crouches**.
- Both are i16-20 — **faster than most characters' jabs land on you after a whiff**.
- ⭐ **`SE CS` = 84 damage**, the single biggest throw in the kit.

## Plus or neutral on BLOCK

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `A+B` | Revelation | M | 38 | 30 | 10 | KND | KND | 15 | BA. [LH] |
| `8B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [9-14] |
| `9B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [11-16] |
| `(B)+(G)` | Existence | M | 66 | 45 | 8 | RE | RE | 20 | [RE] [6-50] [BA] |
| `BB(B)` | Dancing Wave | MMM | 16 | 12,16,38 | 6 | KND | KND | 12 | [BA] |
| `1(B)+(K)` | Dancing Gnome | MMMM | 48 | 10,10,10,16 | 6 | KND | KND | 8 | Normal Hit Combo. [BA] |
| `6B(A)` | Warning Mood | MH | 18 | 14,26 | 4 | 8 | 8 | 7 | Gives stun if only the last hit is a CH. [SS] |
| `6KB` | Starving Spirit | MH | 16 | 12,26 | 4 | KND | KND | 11 | Cancel with G, Becomes M when used at a distance, Counter … |
| `22BA` | Nocturnal Sylph | MH | 16 | 20,20 | 4 | KND | KND | 10 | Tech Crouch [31-71] |
| `(3)_(9)(K)4` | Mind Shatter | H | 26 | 33 | 4 | KND | KND | 9 |  |
| `4b8` | Dashing Wings | HHHHHSMSMSMM | 20 | 45 | 3 | KND | KND | 12 |  |
| `6AK` | Dashing Wind | HH | 16 | 12,18 | 2 | 6 | 6 | 3 |  |
| `3(K)` | Rage Kick | M | 34 | 27 | 2 | KND | KND | 9 | [LH] |
| `(A)6` | Dancing Wisp | H | 22 | 22 | 0 | 12 | 12 | 1 | [SS] into SE |
| `4A` | Dancing Insanity | H | 20 | 20 | 0 | 8 | 8 | 3 |  |
| `(3)_(9)(K)` | Mind Shatter | H | 26 | 33 | 0 | KND | KND | 9 | [LH] after finishing round with CE |

## Safe (blk ≥ -8) AND fast (i ≤ 16)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `A` | Biting Raven | H | 12 | 8 | -8 | -2 | 2 | 1 | Cancel with G |
| `AK` | Governance | HM | 12 | 8,18 | -8 | 6 | 6 | 4 | Counter Hit Combo |
| `K` | Night Swallow | H | 12 | 12 | -8 | 0 | 0 | 1 | Cancel with G |
| `3K` | Rage Kick | M | 14 | 16 | -6 | 4 | 4 | 2 |  |
| `A4` | Danger Range | HH | 16 | 22 | -6 | 2 | 2 | 1 |  |
| `6AA` | Cataclysm | HMH | 16 | 12,10,20 | -4 | 6 | 6 | 7 | Counter Hit Combo |
| `6AK` | Dashing Wind | HH | 16 | 12,18 | 2 | 6 | 6 | 3 |  |
| `BB(B)` | Dancing Wave | MMM | 16 | 12,16,38 | 6 | KND | KND | 12 | [BA] |
| `6K` | Starving Spirit | M | 16 | 12 | -8 | 2 | 2 | 2 |  |
| `6KB` | Starving Spirit | MH | 16 | 12,26 | 4 | KND | KND | 11 | Cancel with G, Becomes M when used at a distance, Counter … |
| `66B` | Elder Gnome | M | 16 | 18 | -8 | 4 | KND | 2 |  |
| `22BA` | Nocturnal Sylph | MH | 16 | 20,20 | 4 | KND | KND | 10 | Tech Crouch [31-71] |
| `(6)K` | Wondergale | M | 16 | 18 | -4 | 4 | 4 | 2 | Tech Crouch [6-17] |
| `(6)(K)` | Wondergale | M | 16 | 18 | -6 | 2 | 2 | 2 | Tech Crouch [6-17]. [SS] into SE |
| `(3)_(9)K` | Mind Shatter | H | 16 | 24 | -6 | KND | KND | 9 | [LH] after finishing round with CE |

## All LOWS

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `6b8K` | Silhouette | HL | 12 | 20,16 | -14 | 2 | 2 | 4 |  |
| `2A` | Ancient Worshipper | SL | 16 | 10 | -10 | -2 | -2 | 1 | Tech Crouch [8-RC] |
| `2K` | Charmer Silhouette | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch [11-RC] |
| `1K` | Queen's Pleasure | L | 16 | 10 | -16 | -2 | KND | 2 | [TH] |
| `6A+BA` | God Whisper | MSLM | 22 | 12,21 | -6 | 4 | 4 | 6 | Tech Crouch [0-22] |
| `22K` | Royal Huntress | L | 24 | 18 | -18 | KND | KND | 4 | Tech Crouch [7-15] superTech Crouch [16-24] Tech Crouch [2… |
| `1A` | Ancient Wheel | L | 26 | 12 | -18 | -4 | -4 | 1 | Tech Crouch [10-RC] |
| `1AA` | Ancient Wheel | LL | 26 | 12,12 | -14 | -2 | -2 | 3 | Counter Hit Combo. Tech Crouch [0-RC] |
| `1B` | Poison Leaf | L | 28 | 18 | -6 | 2 | 2 | 9 | Tech Crouch [29-51] |
| `1(B)` | Poison Ivy | SLSMSM | 28 | 30 | -2 | KND | KND | 13 | Tech Crouch [29-51] |
| `3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |
| `2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `1A+B` | Razor's Bite | L | 30 | 20 | -12 | KND | KND | 9 |  |


## Launchers / knockdowns / stuns

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `3A+B` | Spiral Lust | M |  | 56 | KND | KND | KND |  | [UA]. [SS]. Tech Crouch [14-RC] |
| `BB(B)` | Dancing Wave | MMM | 16 | 12,16,38 | 6 | KND | KND | 12 | [BA] |
| `(3)_(9)K` | Mind Shatter | H | 16 | 24 | -6 | KND | KND | 9 | [LH] after finishing round with CE |
| `6KB` | Starving Spirit | MH | 16 | 12,26 | 4 | KND | KND | 11 | Cancel with G, Becomes M when used at a distance, Counter … |
| `6K(B)` | Blade Sharpener | MH | 16 | 28 | KND | KND | KND |  | UA, Cancel with G, Becomes M when used at a distance Tech … |
| `22BA` | Nocturnal Sylph | MH | 16 | 20,20 | 4 | KND | KND | 10 | Tech Crouch [31-71] |
| `3746916A+G` | Calamity Symphony (just) | H | 16 | 74 | KND | KND | KND |  | [TH] |
| `3746916A+G` | Calamity Symphony | H | 16 | 70 | KND | KND | KND |  | [TH] |
| `A+G` | Dominion Throw | H | 18 | 55 |  | KND | KND |  | [TH] |
| `44B` | Cursed Heavens | M | 18 | 22 | -16 | KND | KND | 9 | [LH]. Tech Crouch [4-12] |
| `4A+G` | Primal Dominance | H | 18 | 50 |  | KND | KND |  | [TH] |
| `3B` | Aqua Clipper | M | 20 | 22 | -16 | KND | KND | 9 | [LH] |
| `4b8` | Dashing Wings | HHHHHSMSMSMM | 20 | 45 | 3 | KND | KND | 12 |  |
| `376231A+G` | Summon Suffering (just) | H | 20 | 65 | KND | KND | KND |  | [TH] |
| `376231A+G` | Summon Suffering | H | 20 | 60 | KND | KND | KND |  | [TH] |
| `8A+B(B)` | Hailstorm | MMMM | 22 | 20,27 | -20 | KND | KND | 23 | Tech Jump [0-53] Tech Crouch [54-79] |
| `8A+BB` | Creeping Ivy | MM | 22 | 20,15 | -24 | KND | KND | 14 | Tech Jump [0-40] |
| `bA` | Raven's Egg | H | 22 | 30 | -8 | KND | KND | 4 |  |
| `8A+B` | Creeping Ivy | M | 22 | 20 | -34 | KND | KND | 9 | Tech Crouch [8-22] Tech Jump [22-54] |
| `22K` | Royal Huntress | L | 24 | 18 | -18 | KND | KND | 4 | Tech Crouch [7-15] superTech Crouch [16-24] Tech Crouch [2… |
| `22(B)` | Drowning Madness | M | 24 | 23 | -4 | KND | KND | 9 | [SS] |
| `1B+K` | Dancing Gnome | MMMM | 24 | 10,10,8,8 | -10 | KND | KND | 8 | Normal Hit Combo |
| `B+K` | Banshee | M | 26 | 24 | -6 | KND | KND | 9 | [LH] |
| `9K` | Rising Mind Shatter | M | 26 | 22 | -6 | KND | KND | 4 | Tech Jump [7-32] |
| `(3)_(9)(K)4` | Mind Shatter | H | 26 | 33 | 4 | KND | KND | 9 |  |
| `(3)_(9)(K)` | Mind Shatter | H | 26 | 33 | 0 | KND | KND | 9 | [LH] after finishing round with CE |
| `22A+B` | Arid Land | MM | 26 | 40 | -10 | KND | KND | 2 | [GI] [5-16] mid horizontal |
| `44K` | Diving Raven | M | 28 | 26 | -18 | KND | KND | 9 | Tech Crouch [6-12] Tech Jump [12-36] |
| `8B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [9-14] |
| `9B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [11-16] |
| `2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `1(B)` | Poison Ivy | SLSMSM | 28 | 30 | -2 | KND | KND | 13 | Tech Crouch [29-51] |
| `4A+BB` | Spiral Punishment | MMMMMMM | 28 | 18,32 | -24 | KND | KND | 13 | Combos on [GI] |
| `44(A)6` | Insanity Feast | M | 28 | 44 | -24 | KND | KND | 4 | Shifts to attack throw upon hit. [TH] |
| `1A+B` | Razor's Bite | L | 30 | 20 | -12 | KND | KND | 9 |  |
| `2B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |
| `3(K)` | Rage Kick | M | 34 | 27 | 2 | KND | KND | 9 | [LH] |
| `2A+B` | Metal Fencer | M | 34 | 22 | -18 | KND | KND | 9 |  |
| `66B+K` | Raging Gnome | MMM | 34 | 37 | -4 | KND | KND | 19 |  |
| `2A+BB` | Metal Fencer | MM | 34 | 22,18 | -22 | KND | KND | 14 |  |
| `A+B` | Revelation | M | 38 | 30 | 10 | KND | KND | 15 | BA. [LH] |
| `3A+BB` | Suppressed Exile | M | 38 | 20 | -8 | LNC | LNC | 9 | timing vary based upon when B is pressed |
| `9BB` | Akasha's Cage | MM | 42 | 28,16 | -16 | KND | KND | 14 | Shifts to attack throw upon hit. [TH] |
| `9B` | Akasha's Cage | M | 42 | 28 | -10 | KND | KND | 9 | Shifts to attack throw upon hit. [TH] |
| `1(B)+(K)` | Dancing Gnome | MMMM | 48 | 10,10,10,16 | 6 | KND | KND | 8 | Normal Hit Combo. [BA] |
| `44A+B` | Crucifixion | M | 48 | 42 | -6 | KND | KND | 4 |  |
| `214A` | Serpent's Venom | H | 54 | 100 | KND | KND | KND |  | [UA]. [G] cancel. Tech Crouch [7-46]. Tech Jump [47-73] |
| `44(A)+(B)` | Crucifixion | M | 72 | 70 | KND | KND | KND |  | [UA] |
| `4B+K` | Heel Explosion | M | 74 | 80 | KND | KND | KND |  | [UA] Cancel with G. Tech Crouch [74-] |
| `3A+B` | Suppressed Exile | SM | 80 | 37,13 |  | LNC | LNC |  | [UA]. Tech Crouch [14-RC]. Normal Hit Combo. 37 damage upo… |

## Lethal Hits (ALL)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `AA` | Biting Raven | H | 12 | 8,18 | -12 | 2 | 2 | 3 | [LH] |
| `(3)_(9)K` | Mind Shatter | H | 16 | 24 | -6 | KND | KND | 9 | [LH] after finishing round with CE |
| `44B` | Cursed Heavens | M | 18 | 22 | -16 | KND | KND | 9 | [LH]. Tech Crouch [4-12] |
| `3B` | Aqua Clipper | M | 20 | 22 | -16 | KND | KND | 9 | [LH] |
| `66(A)` | Sparking Blade | MM | 20 | 44 | -12 | -4 | -4 | 10 | [LH] |
| `B+K` | Banshee | M | 26 | 24 | -6 | KND | KND | 9 | [LH] |
| `(3)_(9)(K)` | Mind Shatter | H | 26 | 33 | 0 | KND | KND | 9 | [LH] after finishing round with CE |
| `22A` | Wolf Lash | H | 26 | 18 | -12 | 0 | 0 | 4 | [LH] |
| `2B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |
| `3(K)` | Rage Kick | M | 34 | 27 | 2 | KND | KND | 9 | [LH] |
| `A+B` | Revelation | M | 38 | 30 | 10 | KND | KND | 15 | BA. [LH] |
| `FC 3B` | Ivy Masquerade | L | 18 | 18 | -20 | -6 | KND | 2 | Tech Crouch [0-]. [LH] |
| `FC 3(B)` | Ivy Masquerade | L | 18 | 18 | -10 | 3 | STN | 2 | SS. [LH] |
| `FC B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |
| `RE A` | Screeching Spirit | H |  | 15 | -2 | KND | KND | 33 | [LH] |
| `RE (A)` | Screeching Spirit | H |  | 15 | 6 | KND | KND | 33 | SS. [LH] |
| `RE K` | Queen of Blades | M |  | 16 |  |  |  | 33 | [LH] |
| `RE BOB BBBBBBBB` | Fires of Insanity | M |  | 48 |  |  |  | 50 | [LH] |

## Break Attacks / Unblockables

> `BA` and `UA` **cannot be countered by GI or RE** — only `RI` (Resist Impact).

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `3A+B` | Spiral Lust | M |  | 56 | KND | KND | KND |  | [UA]. [SS]. Tech Crouch [14-RC] |
| `BB(B)` | Dancing Wave | MMM | 16 | 12,16,38 | 6 | KND | KND | 12 | [BA] |
| `SC 6AA` | Deadly Cataclysm | HMH | 16 | 38 | 4 | KND | KND | 7 | [BA]. Counter Hit Combo |
| `SC SE AA` | Deadly Screaming Mandrake | HMH | 18 | 36 | 4 | KND | KND | 7 | [BA] |
| `SC 6BB` | Death Glance | MM | 18 | 68 | 1 | KND | KND | 16 | Shifts to attack throw upon hit, [BA] |
| `SC SE 6AA` | Mourning Spirit | HH | 20 | 64 |  | KND | KND |  | [UA] , Shifts to follow-up attack upon hit |
| `SC SE 6A` | Wind Embrace | H | 20 | 17 |  |  |  |  | [UA] |
| `SC 4(A)` | Deadly Firestorm | H | 20 | 23 | 2 | 8 | 8 | 3 | [SS]. [BA] |
| `SC 4A` | Deadly Firestorm | H | 20 | 23 | 8 | 10 | 10 | 3 | [BA] |
| `FC 3A+B` | Lost Pledge | HH | 20 | 36 | 6 | 10 | 10 | 13 | [BA] |
| `SE BBBBB` | Howling Spirits | MMMMM | 22 | 68 | 8 | KND | KND | 20 | [BA] |
| `9B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [11-16] |
| `8B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [9-14] |
| `SE 4B` | Landing Embrace | M | 38 | 33 | 10 | KND | KND | 19 | [BA] |
| `1(B)+(K)` | Dancing Gnome | MMMM | 48 | 10,10,10,16 | 6 | KND | KND | 8 | Normal Hit Combo. [BA] |
| `SE B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `SE 6B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `SE 4B+K` | Stinging Souls | M | 49 | 41 | 4 | KND | KND | 9 | [BA] |
| `214A` | Serpent's Venom | H | 54 | 100 | KND | KND | KND |  | [UA]. [G] cancel. Tech Crouch [7-46]. Tech Jump [47-73] |
| `(B)+(G)` | Existence | M | 66 | 45 | 8 | RE | RE | 20 | [RE] [6-50] [BA] |
| `44(A)+(B)` | Crucifixion | M | 72 | 70 | KND | KND | KND |  | [UA] |
| `SE A+B` | Released Souls | M | 74 | 60 | KND | KND | KND |  | [UA] |
| `4B+K` | Heel Explosion | M | 74 | 80 | KND | KND | KND |  | [UA] Cancel with G. Tech Crouch [74-] |
| `3A+B` | Suppressed Exile | SM | 80 | 37,13 |  | LNC | LNC |  | [UA]. Tech Crouch [14-RC]. Normal Hit Combo. 37 damage upo… |

## Guard Impact moves — check WHAT each covers

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `22A+B` | Arid Land | MM | 26 | 40 | -10 | KND | KND | 2 | [GI] [5-16] mid horizontal |
| `4A+B` | Spiral Punishment | MMM | 28 | 18 | -6 | 4 | 4 | 5 | [GI][4-25] vs M. non-kick horizontals |
| `4A+BB` | Spiral Punishment | MMMMMMM | 28 | 18,32 | -24 | KND | KND | 13 | Combos on [GI] |
| `BT 2A` | Screams of Paranoia | L | 22 | 8 | -14 | -6 | 4 | 2 | [GI][15-21] vs [L] attack. Tech Crouch[16-54] |
| `METER A+B+K` | Guilty Throne | MMMMMMMM | 34 | 80 | -16 | KND | KND | 10 | [GI] [4-32] vs Verticals |
| `SC 22A+BB` | Decaying Land | MMMMMM | 26 | 78 | -8 | KND | KND | 24 | SC. [GI] [5-16] vs [M] horizontal |
| `WR B+K` | Asylum | M | 20 | 32 | -17 | -7 | -7 | 12 | [GI][14-48] vs [H]&[M]&[L] attacks. Tech Crouch [0-7] |

## Tech Crouch (dodges HIGHS) / Tech Jump (dodges LOWS)

| Input | Name | Lvl | i | Dmg | Blk | Hit | CH | GD | Notes |
|---|---|---|---|---|---|---|---|---|---|
| `3A+B` | Spiral Lust | M |  | 56 | KND | KND | KND |  | [UA]. [SS]. Tech Crouch [14-RC] |
| `(6)(K)` | Wondergale | M | 16 | 18 | -6 | 2 | 2 | 2 | Tech Crouch [6-17]. [SS] into SE |
| `(6)K` | Wondergale | M | 16 | 18 | -4 | 4 | 4 | 2 | Tech Crouch [6-17] |
| `22BA` | Nocturnal Sylph | MH | 16 | 20,20 | 4 | KND | KND | 10 | Tech Crouch [31-71] |
| `2K` | Charmer Silhouette | L | 16 | 12 | -14 | -4 | -4 | 1 | Tech Crouch [11-RC] |
| `6K(B)` | Blade Sharpener | MH | 16 | 28 | KND | KND | KND |  | UA, Cancel with G, Becomes M when used at a distance Tech … |
| `6KB` | Starving Spirit | MH | 16 | 12,26 | 4 | KND | KND | 11 | Cancel with G, Becomes M when used at a distance, Counter … |
| `2A` | Ancient Worshipper | SL | 16 | 10 | -10 | -2 | -2 | 1 | Tech Crouch [8-RC] |
| `44B` | Cursed Heavens | M | 18 | 22 | -16 | KND | KND | 9 | [LH]. Tech Crouch [4-12] |
| `6BB` | Warning Immortal | MM | 18 | 14,18 | -8 | 6 | 6 | 9 | Tech Crouch [0-15] |
| `6B` | Warning Mood | M | 18 | 14 | -8 | 0 | 0 | 2 | Tech Crouch [16-31] |
| `4K` | Evil Sparrow | M | 18 | 22 | -6 | 8 | 8 | 2 | Tech Crouch [6-19] |
| `2B` | Dominance | M | 20 | 22 | -6 | 2 | 2 | 5 | Tech Crouch [20-29] |
| `214B` | Venom Lash | MM | 20 | 31 | -18 | -10 | -10 | 4 | Tech Crouch [7-17] |
| `214(B)` | Venom Lash | MM | 20 | 31 | -8 | 0 | 0 | 4 | SS. Tech Crouch [7-17] |
| `8A+B(B)` | Hailstorm | MMMM | 22 | 20,27 | -20 | KND | KND | 23 | Tech Jump [0-53] Tech Crouch [54-79] |
| `8A+BB` | Creeping Ivy | MM | 22 | 20,15 | -24 | KND | KND | 14 | Tech Jump [0-40] |
| `8A+B` | Creeping Ivy | M | 22 | 20 | -34 | KND | KND | 9 | Tech Crouch [8-22] Tech Jump [22-54] |
| `6A+BA` | God Whisper | MSLM | 22 | 12,21 | -6 | 4 | 4 | 6 | Tech Crouch [0-22] |
| `6(B)` | Ivy Lash | M | 22 | 14 | -16 | -2 | -2 | 9 | Tech Crouch [18-41] |
| `4B` | Rushing Raven | H | 22 | 18 | -14 | -6 | -6 | 9 | Gives knockdown at close range, more guard damage dependin… |
| `6A+B` | God Whisper | M | 22 | 12 | -16 | 0 | 0 | 1 | Tech Jump [20-32] Tech Crouch [32-RC] |
| `22K` | Royal Huntress | L | 24 | 18 | -18 | KND | KND | 4 | Tech Crouch [7-15] superTech Crouch [16-24] Tech Crouch [2… |
| `9K` | Rising Mind Shatter | M | 26 | 22 | -6 | KND | KND | 4 | Tech Jump [7-32] |
| `1A` | Ancient Wheel | L | 26 | 12 | -18 | -4 | -4 | 1 | Tech Crouch [10-RC] |
| `1AA` | Ancient Wheel | LL | 26 | 12,12 | -14 | -2 | -2 | 3 | Counter Hit Combo. Tech Crouch [0-RC] |
| `9B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [11-16] |
| `44K` | Diving Raven | M | 28 | 26 | -18 | KND | KND | 9 | Tech Crouch [6-12] Tech Jump [12-36] |
| `1(B)` | Poison Ivy | SLSMSM | 28 | 30 | -2 | KND | KND | 13 | Tech Crouch [29-51] |
| `2A+G` | Vile Condemnation | L | 28 | 50 | -14 | KND | KND |  | [TH]. Tech Crouch [18-49] |
| `1B` | Poison Leaf | L | 28 | 18 | -6 | 2 | 2 | 9 | Tech Crouch [29-51] |
| `8B+K` | Stinging Souls | MM | 28 | 26 | 10 | KND | KND | 9 | [BA]. Tech Crouch [9-14] |
| `6(B)+(K)` | Embrace of Guilt | M | 28 | 37 | -14 | 10 | 10 | 9 | Shifts to attack throw upon hit. Tech Crouch [26-35] |
| `6B+K` | Embrace of Guilt | M | 28 | 37 | -4 | 6 | 6 | 9 | Shifts to attack throw upon close-range hit. Tech Crouch [… |
| `3A+G` | Lash Of Atonement | L | 28 | 30 | -14 | 16 | 16 |  | [TH]. Tech Crouch [18-49] |
| `2B+K` | Fear's Void | M | 30 | 30 | -8 | KND | KND | 9 | Returns to crouching on G cancel. [LH]. Tech Crouch [25-66] |
| `44B+K` | Exile ~ Serpent's Embrace | M | 40 | 20 |  |  |  | 9 | [SS]. Tech Crouch [37-] |
| `214A` | Serpent's Venom | H | 54 | 100 | KND | KND | KND |  | [UA]. [G] cancel. Tech Crouch [7-46]. Tech Jump [47-73] |
| `4B+K` | Heel Explosion | M | 74 | 80 | KND | KND | KND |  | [UA] Cancel with G. Tech Crouch [74-] |
| `3A+B` | Suppressed Exile | SM | 80 | 37,13 |  | LNC | LNC |  | [UA]. Tech Crouch [14-RC]. Normal Hit Combo. 37 damage upo… |


---

## ✅ Lab-confirmed / corrections from session 1

| Claim | Status |
|---|---|
| `8B+K` is a blockable long-range grab | ❌ **No.** `8B+K` is a **[BA] Break Attack**, i28, **+10 on block**, Tech Crouch [9-14]. `9B+K` is identical with TC [11-16]. Not throws. |
| `22A` counters sidestep | ⚠️ It is a **HIGH**. Crouchable. Weak. ✅ **2026-10-15:** LH only on the 2nd, farther hit, vs 8-way step/run. |
| `66(A)` is safe due to pushback | ⚠️ **-12 on block, -4 on HIT.** Negative even when it connects. |
| `3A+G` pulls opponent in | ✅ **+16 on hit**, i28 LOW throw |
| `8B+K` pulls opponent in | ✅ **2026-10-15:** No — it launches vertically. The pull is the `6B8` follow-up catching them midair. |
| `AA` is useless next to `AK` | ✅ **2026-10-15:** No — `AA` 2nd hit is a LH vs sidestep. |
| Low throws catch crouchers | ~~❌ No. Crouch block evades all throws.~~ → ✅ **2026-10-15: YES.** `2A+G`/`3A+G` are a low attack into an animation (not a true grab): they catch a **crouching** opponent; **crouch block blocks** them. |
| `A+K` out of block | ❌ **Does not exist.** The move was plain `A`. |

## ❗ Things the data says that contradict common assumptions

| Finding | Detail |
|---|---|
| **`8B+K` / `9B+K` are +10 on block** | i28 `[BA]` mids with tech crouch. These are **pressure tools**, not zoning grabs. |
| **`6B(A)` is +4 on block into SE** | Best stance entry. `(A)6` is 0 blk / **+12 hit**. |
| **`SE A+G` / `SE 4A+G` are +8 on block** | A throw that is **plus on block** — it puts them **BT** (back turned). |
| **`SE BBBBB` is +8 on block**, 68 dmg, `[BA]` | 5 mids. |
| **`SE 4B` is +10 on block**, 33 dmg, `[BA]` | i38. |
| **`SE (K)` is 0 on block**, +8 hit, TC [6-17] | Safe SE poke. |
| **`WR B+K` GIs [14-48] vs H **and** M **and** L** | ⭐ The only **all-height** auto-GI. Answers wake-up. |
| **`4B+K` is i74 `[UA]`, 80 dmg, cancellable with `G`** | Charge, bait, cancel. |

## ❌ Coach errors already logged (see `../06-dismissed.md`)
Same systemic traps as Xianghua: quoting gated inputs unqualified, prefix-matching
across `+`, assuming hold = stance, and treating `cat=GaugeAttacks` as SC-only
(**wrong** — `METER` moves are neutral-usable).

