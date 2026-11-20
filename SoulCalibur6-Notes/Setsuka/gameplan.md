# Setsuka — New character

172 moves, 4 stances (`SKY1`–`SKY3`, `WoH`), 29 fast (i≤14), 22 fast-and-safe. From neutral only: 15 fast · 11 fast-and-safe.

**Why picked:** new character to learn.

> **Nothing here is labbed yet.** Every claim is 📊 (`framedata.md`), 📖 (Style Lesson, wiki Strategy page), 📚 (wiki Overview/Introduction, community sheets → [community-guides.md](community-guides.md)) or ❓. No ✅ until I test it.
> Sheet notation → `framedata.md` notation is in [community-guides.md § Sheet notation](community-guides.md#sheet-notation). Short version: `2143aB` = `FC 3aB` from standing · `214K` = `WR K` · `2362aB` = `22aB` · `236B` = `[6]B`/`33B` · `2364B+K` = `[4]B+K`.

## Core identity 📖📚

**Mid-range punisher.** Short sword, but long forward-moving charge attacks let her start offense from mid range (📖 Beginner lesson). Best-in-class block punishment and counter-hit launchers (📚 Introduction).

- **Approach** with run-in verticals (`[6]B` Rising Crescent) and **contain steps** with `66A` / `2A` / `214A` (`WR A`).
- **Up close**: break guard with lows (`1B`, `1(K)`, `1AA`) and throws (📖).
- **Every opening hurts**: i14 `2143aB` KND, i16 `22aB` LH on punish, i18 `[6]B` launcher.
- **Stances on top:** Shrouded Sky (`4B+K`, charge = faster/safer) vs blockers; Wings of Heaven after `66K` hits.
- **Meter is slow** (📚). Just-frame / `236`/`214` inputs **gain** meter; easy inputs (`6A+B`, `3B+KB`, `4A+B`) **cost** a little and do less damage.

### ⚠️ The gaps (📚 Introduction, cross-checked 📊)
- **Weak horizontal mids** → step killers are mostly highs or a special low: `2A` SL, `66A` H, `WR A` H, `6AA` H-first. Only `3A` (M, i20, short range) is a true mid horizontal from neutral. **A crouch beats most of her step-killing.**
- **Hardest execution in the game** (📚): JF `:` inputs, slide `a`/`b` inputs, `236`/`214` buffers. Online penalises it.
- **Low meter gain** (📚) → CE/SA are rare; plan combos without them first.

---

## Gameplan ❓ (draft from sources, nothing labbed)

### 1. Mid range: approach with Rising Crescent, catch steps with `66A`
📖 Beginner lesson: `[6]B` → `6A+B`; "only weakness: evadable with 8-way run, so catch them with `66A`".
| Move | Job 📖📚 · risk 📊 |
|---|---|
| `[6]B` / `33B` / `236B` Rising Crescent | i18 M, TC[13-18], **LNC** on hit, STN on CH. 📚 "best non-conditional whiff punish in the game". ⚠️ -8 on block → safe vs most, but **steppable** (📖) |
| `66A` Willow Splitter | i18 **H**, -6/+8. 📚 "incredibly long range" horizontal. ⚠️ high → **ducked** |
| `66K` Heavenly Maiden | i14 MM, **-4/+12**, forced into WoH on hit (📚 "great mid poke"). TJ[12-62] |
| `aB` Mourning Thrust | i18 M, **-4/+12**, GD 9 (📚 can guard crush). Slide input ❓ |

### 2. Close range: break the guard
📖 "Slide in close to a guarding opponent, then low `1AA`, `1B`, or a throw."
| Move | Job · risk 📊 |
|---|---|
| `1B` Half Moon Shadow | i20 **L**, -12/+2, **STN on CH**. 📚 "unseeable". ⚠️ -12 = punishable by i12s. Returns crouched (TC[18-RC]) → FC/WR follow-ups ❓ |
| `1(K)` Flame Bearer (held) | i16 L, **-6/+4**, SKY ready ⭐ safest true low (cf. `1K` -14) |
| `1A` → `1AA` (→ `1AAA`) | i20 L,M. ⚠️ **-20 on block** (📖 doesn't say). `1AAA` 3rd hit only if 2nd hits |
| `11K` Backspin Snow Sweeper | i20 L, -14/0, hits grounded (📚) |
| `A+G` / `4A+G` | i18 throws, 45 |
| `214A+G` / `236A+G` | i18 throws, 28 / 30 — less dmg but 📚 **combo after** (`> 2362aB` 54–59) and 📚 **+8 if broken** ⚑ not in 📊 |

### 3. Even frames / they press: counter-hit tools
| Move | Job · risk 📊 |
|---|---|
| `214K` = `WR K` | i12 **M**, -6/+4, **KND on CH**. 📚 "at even frames, will likely trade favorably with any attack" |
| `6B` Mountain Mists | i16 M, -6/+6, **STN on CH** → 📚 CH combos |
| `[6]B` | STN on CH → 📚 80+ route (different from NH route) |
| `2143B` = `FC 3B` / `3B+K` | i16 M, ⚠️ **-18** (`FC 3BB` -14), STN on CH. 📚 "main CH tool" |
| `4A` Winter Stitch | i18 H, -10/+6, STN on CH, TC[10-39] |

### 4. Punish everything (→ [Payoff tree](#payoff-tree))
`214K` i12 · `2143aB` i14 · `22aB` i16 (LH) · `[6]B` i18 · `3B`/`4BB` i20 · `agB` i22.

### 5. vs a turtle: Shrouded Sky
📖 Adept lesson: "build up concentration… very effective against an opponent who likes to guard", at the risk of giving them openings.
| Move | Job · risk 📊 |
|---|---|
| `4B+K` → hold | Charge SKY1 → SKY2 → SKY3. Every SKY attack has TC[12+]. 📚 SKY attacks **turn to track** a stepping opponent; longer charge = more reach |
| `SKY3 A` | i8 H, **+8 on block**, KND, 46 dmg. ⚠️ high |
| `SKY3 B` / `SKY3 2A` | i8 M -4 LNC · i8 L -8 KND → mid/low mixup at i8 |
| ⚠️ Charging | Time-to-charge, and whether I can be hit mid-charge: **not in data** ❓ |

### 6. After `66K` hits: Wings of Heaven
Forced WoH (+12 on hit). See [WoH mixup](#advantage--woh-mixup).

### After `66K` hit — WoH chart ❓
| They… | Pick | Why 📊 | Status |
|---|---|---|---|
| stand-block | `WoH B` | i20 **L**, KND, TJ[0-18]. ⚠️ -12 (📚 -8; Wintry: +2) ⚑ | ❓ |
| crouch-block | `WoH A` | i20 **M**, -8/+6 (+12 CH) | ❓ |
| mash / jab | `WoH G` (land) and block | WoH A/B have TJ only → a jab may beat them? | ❓ |
| — | (Wintry Reflection done) | 📖 both buffed: "guard breaking with middle and low attacks easier" | ❓ |

---

## Moveset status (2026-11-20)

**In use ✅** — none (no lab time).

**Use more** — n/a.

**To explore ❓** → everything. Priority order:
| Move | Why |
|---|---|
| `214K` (`WR K`) | i12 mid CH tool from standing — her "jab" (📚) |
| `2143aB` (`FC 3aB`) | i14 KND punish, 35 dmg. Easy: `6A+B` (costs meter) |
| `[6]B` / `236B` | Main approach + whiff punish + CH launcher |
| `22aB` / `2362aB` | i16 punish, **LH on punish** → biggest punish route |
| `2A` | i12 SL step killer, -6/+6 |
| `66A` | Long-range step killer (H) |
| `66K` → WoH | Mid poke, +12, stance mixup |
| `1B` / `1(K)` | Main lows |
| `6B` | CH tool, -6 |
| `3B` | i20 launcher, -10 |
| `4BB` | i20, STN on hit → combo |
| `4B+K` SKY | Charge stance vs turtles |
| `6B+K` Mirror Blade | 3-stage auto-GI vs H & M (GI[6-12]) |
| `236A+G` / `214A+G` | Throws with combos after |

---

## Range zones 📚❓

| Zone | Definition | Tools |
|---|---|---|
| **Close** | Jab range | `AA`, `2A`, `K`, `B`/`BB`/`BBB`, `3K`/`3KB`, `6K`, `214K`, `6B`, `1B`, `1(K)`, `1AA`, `3A`, throws |
| **Mid** ⭐ home (📖) | Rising Crescent range | `[6]B`/`33B`/`236B`, `66K`, `66A`, `aB`, `3B`, `22aB`, `4KA`, `6AA`, `3A+B` |
| **Long** | Beyond `[6]B` | `66A` (📚 "incredibly long"), `11B` (i28, 0/LNC), `22B+K` (i34, +2, STN), charged SKY (📚 reach grows with charge), `66A+B` (i36) |

❓ All range claims are third-party; the data has no range.

---

## Core moves

| Role | Move | Lvl | i | Dmg | Blk | Hit |
|---|---|---|---|---|---|---|
| **Fastest mid / CH** | `214K` = `WR K` Rising Front Kick | M | **12** | 18 | **-6** | +4 · KND CH |
| **Fast step killer** | `2A` Grasscutter | SL | **12** | 12 | **-6** | +6 |
| **Jab** | `AA` Spring Downpour | H,H | 12 | 22 | -6 | +2 |
| **Fast safe mid** | `3K` / `3KB` Shadow Attendant | M,M | **14** | 12,16 | **-6** | +4 / +6 |
| **Mid poke → stance** | `66K` Heavenly Maiden | M,M | **14** | 26 | **-4** | **+12** → WoH |
| **Punish (KND)** | `2143aB` = `FC 3aB` Shade Buster | M | **14** | 35 | -22 | KND |
| **Punish (LH)** | `22aB` / `2362aB` Sakura Swipe | M | 16 | 30 | -16 | KND · `[LH]` on punish |
| **CH tool** | `6B` Mountain Mists | M | 16 | 22 | **-6** | +6 · STN CH |
| **Safest low** | `1(K)` Flame Bearer | L | 16 | 18 | **-6** | +4 → SKY |
| **Whiff punish / approach** | `[6]B` / `33B` Rising Crescent | M | 18 | 18–20 | -8 | **LNC** · STN CH |
| **Long step killer** | `66A` Willow Splitter | H | 18 | 20 | -6 | +8 |
| **Plus poke** | `aB` Mourning Thrust | M | 18 | 18 | **-4** | **+12** |
| **Plus on block** | `4K` Scarlet Blossom | H | 18 | 18 | **-2** | +10 |
| **Step-kill (WR)** | `214A` = `WR A` Crescent Slash | H | 16 | 20 | **-2** | +6 |
| **Main low** | `1B` Half Moon Shadow | L | 20 | 24 | -12 | +2 · STN CH |
| **Launcher** | `3B` Air Cutter | M | 20 | 24 | -10 | LNC |
| **Mid horizontal** | `3A` Willow Slash | M | 20 | 16 | -6 | +4 |
| **Long launcher** | `11B` Crescent Strike | M | 28 | 30 | **0** | LNC |
| **BA** | `A+B` Drifting Moon | M | 34 | 40 | **+4** | +10 · `[LH]` vs GI/RE |
| **Throw** | `A+G` / `4A+G` | — | 18 | 45 | — | — |

📊 values from `framedata.md` (wiki). Sum of per-hit damage for strings.

---

## Corrections log

_Empty — no lab time yet._ When a lab result contradicts a line above, strike the old line (`~~…~~ → superseded`) and add a dated ✅ entry here, as in `../Ivy/gameplan.md`.

---

## Neutral tree

```
CLOSE
  ├─ My turn, they block ───────→ 2A (SL -6/+6) · 3K (i14 -6) · BB (-6) · aB (-4/+12) · 4K (-2/+10, H)
  ├─ Even frames / they press ──→ 214K (i12 M, KND on CH) · 6B (STN on CH)
  ├─ They sidestep ─────────────→ 214A = WR A (H, -2) · 2A (SL) · 3A (M, i20, short)
  ├─ They stand-block ──────────→ 1B (L -12) · 1(K) (L -6 → SKY) · A+G / 4A+G (45) · 236A+G / 214A+G (combo)
  ├─ They crouch-block ─────────→ mids: 6B · 3K · aB · 66K
  └─ They duck my highs ────────→ stop using 2A/66A/WR A → 3A · 6B · [6]B
MID  (home)
  ├─ They whiff / backstep ─────→ [6]B / 236B (LNC)  📚 236B = backstep punisher
  ├─ They hold still ───────────→ [6]B approach · 66K (+12 → WoH) · aB
  ├─ They sidestep ─────────────→ 66A (H) · 3A+B (M, TC, -14 ⚠️)
  └─ They block everything ─────→ 4B+K charge → SKY mixup · 22B+K (+2, STN, GD 15)
LONG
  ├─ They hold still ───────────→ 66A · 11B (0 / LNC)
  └─ They approach ─────────────→ [6]B · charged SKY
```

---

## Combos

From the 📚 Guide sheet (JF damage after `/`). Easy-input substitutes: `6A+B` for `2143aB`, `3B+KB` for `2143BB`, `4A+B` for `bA` — slightly less damage + costs meter.

| Starter | 📚 route | 📚 dmg | Notes | Status |
|---|---|---|---|---|
| `3B` | `2143aB` | 47 / 51 | simplest launcher route | ❓ |
| `3B` | `66B+KB` | 45 | no JF needed | ❓ |
| `[6]B` NH | `bA > 2362aB` | 55 / 61 | 📖 Master lesson: NH → `4A+B` | ❓ |
| `[6]B` NH | `2143aB` | 54 | 📖 Beginner lesson: `> 6A+B` | ❓ |
| `[6]B` **CH** | `2143BB > 2362aB > 2362aB` | 69 / 80 | 📖 CH → `3B+KB`. Different route from NH | ❓ |
| `4BB` | `2143BB > 2143aB` | 60 / 66 | `4BB` STN on hit | ❓ |
| `11B` | `agB > 2143aB` | 75 | | ❓ |
| `FC 3A+B` (`2143A+B`) | `2143BB > 2362aB > 2362aB` | 77 | | ❓ |
| `agB` | `agB > 2A+B > BT B+KB > 2362aB` | 100 | NC; very hard | ❓ |
| `236A+G` / `214A+G` | `2362aB` | 55/59 · 54/59 | throw → combo | ❓ |
| `6B+K` L2 | `8B+KB > 2143aB` | 69 | 2nd Mirror Blade GI | ❓ |
| CE | `3B > CE` | 78 | meter | ❓ |

### Rising Crescent follow-up tree (`[6]B` / `33B` / `236B`)
```
[6]B hits
  ├─ Normal hit (LNC) ──→ 2143aB                         📚 54     (easy: 6A+B)
  │                       bA > 2362aB                    📚 55/61  (easy: 4A+B > 22aB)
  └─ Counter hit (STN) ─→ 2143BB > 2362aB > 2362aB       📚 69/80  (easy: 3B+KB > ...)
                          2143BB > CE                    📚 87/93  meter
```
❓ Do I see NH vs CH in time to pick? 📖 Master lesson says pick by hit type; `6A+B` works on both.

### Three Visions (her meter-like buffs) 📖📚
| Vision | Pips from | Count | Buffs |
|---|---|---|---|
| **Wintry** (snow) | normal hits incl. vs guard / run counters (📚: CH doesn't count) | 6 | `WoH A` / `WoH B` (📚 `WoH B` becomes **+2** on block) |
| **Moonlit** (moon) | whiff/block punishes | 4 | `[4]B+K` Silver Shadow (reach + dmg, KND on NH 📊), `B+KBB+K` |
| **Vernal** (flower) | counter hits / impact counters | 5 | `2143aB`/`6A+B`, `B+KBA+B` |
| CE | +1 pip to each | — | — |
| All three | — | — | `236A+B+K` SA **lethal-hits** → combo (📚 `> B+KBB+K` 89/92) |

Persist between rounds (📚). → punishing **also** builds Moonlit.

### RE 📊📚
- `RE A` 45 STN (📖 faces away; loses if evaded with `6`) · `RE B` 54 LNC (📖 auto follow-up, air combo starter) · `RE K` 30 STN · `RE (K)` → SKY, **0 on block** (📖 "upper hand even when guarded").
- 📚 RE1 `B > 2143aB` 63/65 · RE2 (LH) `K > B+KBB+K` 85/90 · RE2 `A > BT 2A+B > 8B+KA > BT B+KB > 2362aB` 83/86.

---

## Payoff tree

❓ All untested. From 📊 i-values + 📚 Punishers tab / combos.

```
I blocked their move (standing)
  ├─ ≤ -12 ─────→ 214K (i12, KND CH) · AA · 2A                    chip only
  │               [4]B+K (i12, 28)  ⚑ 📊 -10 vs 📚 -6 "Safe!"
  ├─ ≤ -14 ─────→ 2143aB = FC 3aB (i14, 35, KND)  ⭐               📚 "very strong punish" · easy 6A+B
  ├─ ≤ -16 ─────→ 2362aB = 22aB (i16) LH on punish > CE          📚 76/87
  │                                              > 2143aB > 66B   📚 66
  ├─ ≤ -18 ─────→ [6]B (i18) > bA > 2362aB                        📚 55/61  · 4KA (i18, 40, -8)
  ├─ ≤ -20 ─────→ 4BB (i20, STN) > 2143BB > 2143aB                📚 60/66
  │               3B (i20) > 2143aB                               📚 47/51
  └─ ≤ -22/-23 ─→ agB > agB > 2A+B > BT B+KB > 2362aB             📚 100 ⚠️ JF. 📚 cheat: effectively i23 ⚑
I blocked a LOW (crouching)
  ├─ ≤ -12 ─────→ WR K (i12) · FC A (i12, SL)
  ├─ ≤ -14 ─────→ FC 3aB (i14, KND)
  ├─ ≤ -16 ─────→ FC 3BB (i16, -14)
  └─ ≤ -22 ─────→ FC 3A+B (i22, STN) > 2143BB > 2362aB > 2362aB   📚 77
I ducked a HIGH / they whiffed
  ├─ ducked high ─→ FC 3aB · FC 3A+B · 22K (LH when they whiff a high) > 3B > bA > 2362aB   📚 85/90
  └─ whiff / backstep ─→ [6]B / 236B
Counter-hit
  ├─ 1B CH (STN) ───→ 2362A+BA (= 22A+BA)                          📚 54
  ├─ 4A CH (STN) ───→ 2143BB > 2362aB > 2362aB                     📚 64/75
  ├─ 6K CH (STN) ───→ 2362A+BA                                     📚 41
  └─ 6B CH (STN) ───→ 8B+KB > 2143aB                               📚 (cheat: 54)
```
⚠️ The punish list assumes I am in range — the data has no range ❓.

---

## Branch nodes (2+ children) 📊

> From `framedata.md` + string prefixes. Raw values `blk / hit`. +N on block ≠ next move guaranteed.

| Node | Children | Notes |
|---|---|---|
| **`236`** Twilight Haze | **any 8-way-run move** from standing (📖: `236B` = `[6]B`, `2362aB` = `22aB`, `2364B+K` = `[4]B+K`) + `236A+G` throw | ⭐ the input hub. Gains meter (📖). 📚 `2368…` is slower than `2362…` |
| **`214`** Dawn Haze | **any FC/WR move** from standing (`214K` WR K, `214A` WR A, `214B` WR B, `2143aB` FC 3aB, `2143BB` FC 3BB) + `214A+G` throw | ⭐ second hub. TC |
| `b` (brief B) | `bA` M -22/KND · `b(A)` -25/+8 → SKY · `b4` H -8/+4 (LH after RI) · `b6` M -6/+2 (+10 CH, LH vs missed GI) · `bK` MH -6/+4 | ⚠️ `bA` -22 |
| `a` (brief A) | `aB` M **-4/+12** · `agB` M -22/LNC | |
| `8B+K` Ring of Heaven | `8B+KA` H -12/+8 · `8B+KB` M -12/KND/LNC (📚 LH from behind) · `8B+KK` → WoH | TC[4-8] TJ[8-30] TC[33-53] |
| `B+K` | `B+KB` MM -14/+6 → `B+KBB+K` / `B+KBA+B` -14/KND | 📚 "follow-ups can't be done on block" |
| `[4]K` | `[4]KB` HM **0/+10** · `[4]Kb6` HM -12/LNC | 📚 VS tab: step loses to `KB`, interrupt loses to `Kb6` |
| `SKY1/2/3` | `A` H · `2A` L · `B` M (per stage, below) | |
| Strings | `A`→`AA`→`AAA` · `B`→`BB`→`BBB` · `1A`→`1AA`→`1AAA` · `3K`→`3KB` · `4K`→`4KA` · `6A`→`6AA` · `4B`→`4BB` · `22B`→`22BB` · `3B+K`→`3B+KB` · `1B+K`→`1B+KB` · `66B+K`→`66B+KB` · `22A+B`→`22A+BA` · `[4]A`→`[4]AA` · `[4]B`→`[4]BA` | |

---

## STANCES — entries 📊 (📚 where the data doesn't say)

```
→ SKY (Shrouded Sky)
├─ 4B+K          raw entry, hold to charge                    📊 [SS]
├─ 1(K)          i16 L   -6 / +4    ⭐ safe low → SKY           📊
├─ b(A)          i20 M  -25 / +8    ⚠️ very unsafe             📊
├─ 4(A)+(B)      i20 M  -22 / +8                               📊
├─ RE (K)        0 blk / STN                                   📊 · 📖 "upper hand even when guarded"
└─ SC SKY K      i5 interrupt (Soul Charge only)               📊 F3/F4
→ WoH (Wings of Heaven, back-turned airborne)
├─ 66K           i14 MM -4 / +12, forced on hit ⭐              📊
├─ 8B+KK / 8(B)+(K)  raw entry                                 📊
└─ SC 2aB        i14 M  +2 / LNC                               📊
→ BT (back turned) — 📚 VS tab: 3KB and 4KA leave her BT; 8B+KA/B "might"
→ FC / WR — via 214 (instant) or any crouching move (1B, 2K, 11K, … TC[x-RC])
                📚 Guide: 3A leaves her FC ❓
```

## ADVANTAGE — SKY mixup (choose stage, then height)

```
          A (H)                  2A (L)                 B (M)
SKY1   i12  -8 / +6 (KND CH)  i16 -16 / +4          i16 -12 / KND
SKY2   i10  -6 / KND          i12 -12 / KND         i12  -8 / LNC
SKY3   i8   +8 / KND  ⭐       i8   -8 / KND         i8   -4 / LNC
```
- All have TC[12+]. SKY2/3 are **JF** timings (📚 Tips: "press A just as her hand passes the centre of her torso" / "slightly after she touches the hilt").
- ⚑ Stage naming: Guide `C1/C2/C3`, Cheat Sheet `C0/C1/C2`, here `SKY1/2/3`.
- 📚 LH `WoH B` charge: SKY to C3 ×4 / C2 ×7 / C1 ×10 → next `WoH B` lethal-hits (once per match).
- ❓ How long is each charge? Can they hit me during it? Can I cancel?

## ADVANTAGE — WoH mixup

```
In WoH (after 66K hit, +12)
├─ WoH A   i20 M   -8 / +6 (+12 CH)   TJ[0-17] TC[20-RC]     📊
├─ WoH B   i20 L  -12 / KND (STN CH)  TJ[0-18] TC[18-RC]     📊 ⚑ 📚 -8, Wintry: +2
└─ WoH G   land                                              📊
```
📚 LH `SKY B`: after WoH A/B hit 2+ times, next SKY B lethal-hits (once per match).

## ADVANTAGE — BT / FC / WR (candidates)

```
BT (after 3KB / 4KA …)
├─ BT A    i14 H  -4 / +4     · BT 2A  i14 SL -6 / +4
├─ BT B    i16 M  -6 / +4     · BT 2B  i16 M  -6 / +2
├─ BT K    i14 H  -6 / +2     · BT 2K  i18 L -14 / -4
├─ BT B+K  i16 M -14 / STN → BT B+KB -12 / KND (combo filler)
└─ BT 2A+B i28 M  -6 / STN (LNC CH)
Crouching (or via 214) — choose before recovery
├─ WR K    i12 M  -6 / +4 (KND CH)   ⭐
├─ FC A    i12 SL -6 / +6
├─ FC 3aB  i14 M -22 / KND
├─ FC B    i14 M  -8 / +2
├─ WR A    i16 H  -2 / +6
├─ FC 3BB  i16 MM -14 / KND (STN CH)
├─ WR B    i18 M  -8 / STN   ⚑ 📚 KND
└─ FC 3A+B i22 M -20 / STN
```

---

## LOWS — by job 📊 (`SL` = special low, a standing guard blocks it)

```
Fast
├─ 2A        i12 SL  -6 / +6        step killer, not a guard breaker
├─ 1K        i16 L  -14 / 0
├─ 1(K)      i16 L   -6 / +4  → SKY   ⭐ safest true low
└─ 2K        i16 L  -14 / -4  TC[0-11]
Main (📚 "main lows": 1K, 1B, 1A, 11K)
├─ 1B        i20 L  -12 / +2, STN on CH   📚 "unseeable"
├─ 11K       i20 L  -14 / 0, hits grounded
└─ 1A / 1AA  i20 L  -20 / -12 · -10   ⚠️ worst on block
Knockdown
├─ 11A       i30 L  -12 / +2, KND on CH
├─ RUN K     i20 L  -22 / KND
└─ WoH B     i20 L  -12 / KND (stance)
Stance lows
├─ SKY2/3 2A i12 / i8 L, KND
└─ BT 2K / BT 2B+K / FC K
```
📚 VS tab: most of her lows **return crouched** → opponents must punish with a mid/low (or a low throw for Xianghua/Cassandra/Astaroth/Nightmare).

## MIXUPS — choose before pressing

```
Close, my turn (similar speed)
├─ low   1(K) i16 -6 · 1B i20 -12
├─ mid   3K i14 -6 · 6B i16 -6 · aB i18 -4
└─ throw A+G 45 · 236A+G/214A+G (combo after)    vs standing guard
Same opening, different ending (decide before the 2nd input)
├─ [4]K → [4]KB (0 / +10) · [4]Kb6 (-12 / LNC)
├─ 8B+K → A (H) · B (M) · K (→ WoH)
└─ SKY  → A (H) · 2A (L) · B (M)
Instant-crouch from standing
└─ 214 → WR K (M, i12) · FC A (SL) · 2143aB (M, i14)  — TC first, then attack
```

---

## Guard damage leaders 📊

| Move | GD | Notes |
|---|---|---|
| `RE B` Autumn Rains | 50 | |
| `RE A` / `RE K` | 33 | |
| `(B)+(G)` Songbird Slice | 20 | `[BA]`, +8 |
| `B+G` | 16 | |
| `A+B` Drifting Moon | 15 | +4 on block, LH vs GI/RE |
| `1A+B` Fiery Dance | 15 | -14 |
| `22B+K` Kingfisher Divide | 15 | **+2**, STN |
| `[4]Kb6` | 15 | -12 |
| `[4]KB` / `66B+KB` | 14 | 0 / -8 |

📚 Cheat Sheet "guard crush: yes" list: `aB`, `bK`, `3B`, `WR B`, jump B, `A+B`, `1A+B`, `B+K`, `2B+K`, `22B+K`, `11B+K`, `WoH B`.

---

## Controller / input notes 📚❓

- Notation: `:` = just frame · lowercase `a`/`b` = **very brief** press, then quickly the next button (📚 Guide) · `[ ]`/`( )` = hold.
- **`236` / `214` buffer out of other moves** (📖): e.g. `2143aB` right after a combo starter = `FC 3aB` without crouching first. Successful hits/blocks from these **gain meter**.
- 📚 `2362…` is faster than `2368…` — links and punishers may fail with `2368`.
- 📚 JF ↔ easy pairs: `2143aB`/`6A+B` · `2143BB`/`3B+KB` · `bA`/`4A+B` · `2362aB`/`22aB` · `1AAA` · `agB` · `4BB`. Patch 2.21–2.25: "no real incentive to use only JFs" (penalty is tiny).
- 📚 `agB`: "all about speed" — buffer `A` during block stun, then `:B+G`… ❓ wording unclear, see [community-guides.md](community-guides.md#tips--tricks-wip--digest).
- 📚 Wave-dash cancel: `236236236 4A+B G`.
- `[4]X` in `framedata.md` = **`44X` / `2364X`** in every sheet (back run, not held 4) ⚑ — confirm in the command list ❓.

---

## Open / untested

- ❓ Everything above. First lab: punish drill by i (`214K`/`2143aB`/`22aB`/`[6]B`), `[6]B` NH vs CH routes, `236`/`214` buffering, SKY charge timing, WoH mixup, `1(K)` vs `1B`.
- ❓ Does `3A` leave her crouched (📚 Guide note), giving `WR K`/`FC 3aB` follow-ups?
- ❓ `[4]B+K` safety: -10 (📊) or -6 (📚)?
- ❓ `236A+G`/`214A+G`: +8 when broken (📚)?
- ⚑ conflicts with the sheets: [community-guides.md § vs. framedata.md](community-guides.md#vs-framedatamd).
- Full 📚 routes: [community-guides.md](community-guides.md).
