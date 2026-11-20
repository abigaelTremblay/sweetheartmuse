# Sophitia — New character

176 moves · 2 stances (`AS` Angel Step, `TAS` Twin Angel Step) · 26 fast (i≤14) · 18 fast-and-safe (i≤16, blk≥-6) excl SC/meter; neutral only: 19 fast · 9 fast-and-safe.

**Why picked:** new character to learn.

> Nothing here is labbed yet: every "job" is ❓ until tested. Sources: 📊 [framedata.md](framedata.md) · 📖 in-game Style Lesson (wiki *Strategy*) · 📚 [community-guides.md](community-guides.md) (Sophitia Encyclopedia sheet + wiki *Overview/Combos*). Notation = framedata.md (`(K)` = hold; sheet `[K]` / `1[K]` translated).

## Core identity 📚 (not yet labbed)

**Fast, compact all-rounder: mid / throw at close range, a launcher-into-`TAS B` damage game, stance steps that duck horizontals.** Wiki *Overview*: "beginner-friendly", shortest range in the cast, quick and safe pokes, strong punishes.

- **Short range.** Shortest weapon and throw range in the game (📚); she closes distance with run moves (`66A`, `66B`) and the steps.
- **Main mixup = mid vs throw** (📚 Notes). Lows (`1K`, `2K`) are a side dish; `66A+G` acts like "a short-range frame-advantage low".
- **Angel Step (AS) / Twin Angel Step (TAS)** are quick motion inputs (`236` / `236236`), not slow stances: they move her forward/side, and TAS ducks most horizontal mids and special lows. They are the core of punishes (`AS B` i14) and combos (`TAS B`).
- **One combo filler does everything:** `TAS B` (i16, 35, STN) appears in almost every route.

### ⚠️ The gap: unknown
New character, no lab time. The biggest execution hurdle is `236236B` mid-combo and the justframe `AS B:4` / `B:B`. → [Open / untested](#open--untested).

---

## Gameplan 📚 (from sources, untested)

### 1. Neutral: close distance, whiff-punish their misses
| Move | Job ❓ |
|---|---|
| `66A` | i18 H, -12 / +6, TC 6-20. Main **approach**: turns them on hit → free mixup. ⚠️ -12 on block, punishable by i10–12 jabs. Safe vs Nightmare (his fastest is i14 📚) |
| `66B` | i23 M, **-3** / LNC, GD 9. Safe launcher at mid range. ⚠️ linear: vs Ivy 📚 it gets stepped from outside |
| empty `TAS` | Step forward ducking horizontals, then block or `TAS B`/`TAS K`. Cancel with `1_2_3G` 📚 |
| `3B` | i20 M, -14 / LNC, TC 8-17. Whiff punish → BNB. ⚠️ -14 |
| `TAS B` | i16 M, -14 / STN. Whiff punish; **LH vs whiffed horizontals** (not kicks). ⚠️ -14 |
| `[22/44]B+K` | i26, -6 / LNC, GD 15. LH after stepping a vertical. Slow |

### 2. Close: mid / throw
| Move | Job ❓ |
|---|---|
| `A+G` / `4A+G` | i18, 40. Front throws. 📊 `A+G` lists +6 ⚑ (break advantage? see [community-guides](community-guides.md#vs-framedata-2026-11-20)) |
| `66A+G` | i18, 55 throw from a dash. 📚 broken = +8 → `6K` |
| `SIDE-R A+G` | 70 Broken Promise — her best throw. 📚 "from 1P, step left (up) once" ❓ verify which step gives which side |
| `BB` | i14 M, -8 / +2. Mid check, safe-ish. `BBB` -6 / KND, TC 9-20 |
| `KK` | i12 HM, -6 / +2. 📚 better than `AA` (more damage, 2nd hit mid) |
| `4K` | i14 H, **-2 / +8**, TC 4-10. On hit turns them 120° → throw / `6K` |
| `3K` | i13 M, -7 / +3. Safe mid, also hits grounded (oki) |
| `4B` | i18 M, **-2 / +4**, forces crouch. Safe; best RE bait 📚. ⚠️ GD 2 — not a guard breaker (⚑ sheet "9 %") |
| `4A+B` | i18 MM, -6 / KND, TC 9-20, GD 9, RO. 📚 "most abusable move": TCs most i10–14 jabs |
| `6B+K` | i18 M, -6 / +2, KND on CH, TC 8-31. Beats Nightmare armor 📚 |
| `6K` | i16 M, -6 / +6, **KND on CH** (📚 "crumple"). Go-to after plus frames; weak to step |
| `1K` / `2K` | i20 / i16 lows, -14. `1K` KND on CH |

### 3. Punish ladder (they're at -N)
| They're at | Move | i · Dmg | Notes |
|---|---|---|---|
| -10 | `KK` / `AA` / throw ⚠️ throw i18 doesn't punish | i12 | 📚 lists `66A`/`4K`/`2A` too — those are turn-takes, not punishes |
| -12 | `KK` / `AA` / `2A` | i12 | `2A` SL, +6 on hit |
| -14 | `AS B` | i14 · 30 | ⚠️ -20 on block: if unsure of -14, use `BB` / `WR B` (i14) 📚 |
| -16 | `66K > TAS AA` | i16 | 📚 |
| -18 | `4A+B` · `TAS B` | i18 / i16 · 35 | `TAS B` → combo |
| -20 | `3B` | i20 | → BNB [Combos](#combos) |
| blocked a low | `AS B:4_B` from crouch | i14 | 📚 "stab every low" |

### 4. Defense: duck, step, impact
| Move | Job ❓ |
|---|---|
| `TAS` | Ducks most horizontal M / SL (incl. most `2A`) 📚 |
| `4A+B` / `4K` | TC through jabs (TC 9-20 / 4-10) |
| `6A+B` (aGI) | GI 4-12 vs **mids**; auto-counter depends on what it catches (horizontal → Spinning Hilt LNC, vertical → `6A+BAK`, kick → LNC). 📚 also catches most `2A` → `6A+B > 6BA > 2BK > TAS B` ~80 ⚑ (📊 says mids only) |
| `AS K` | Step a **high** horizontal → LH (not vs throws ⚑) |
| `3A+B` | GI 4-14 vs mids |

### After plus frames — anti-mash chart
Clash rules: `../01-system-mechanics.md` § Clashes.

| Situation | Pick | Why | Status |
|---|---|---|---|
| `TAS K` / `44kK` blocked (+4) | `6K` (i16) | trades with i12 jabs → CH crumple → `44B+K` / `TAS B` 📚 | ❓ |
| `4K` hit (+8, they're turned) | `66A+G` / `6K` | 📚 frame trap (Overview: throw "guaranteed") ⚑ | ❓ |
| `A+B` blocked (+8) | throw / `6K` / `4A+B` | +8 = mid/throw with turn | ❓ |
| `4B` blocked (-2) | `2A` (beats WR A) / step (beats WR B, WR K) | 📚 | ❓ |
| they step | `44A` / `66A` (horizontals) | `6K` is linear | ❓ |
| `2A` hit (+6) | `WR K` (i16, -2 / +8) | 📚 | ❓ |

---

## Moveset status (2026-11-20)

**In use ✅** — none (no lab time).

**Use more** — n/a.

**To explore ❓** (all from 📚 minimal set + 📊)

| Move | Why |
|---|---|
| `236` / `236236` / `2366` | Stance inputs. Must be automatic before anything else |
| `66A` · `66B` · `TAS AA` · `TAS K` | 📚 advance tools |
| `3B` · `66B` · `TAS B` | 📚 whiff punish |
| `AA` · `BB` · `KK` · `4A+B` · `4A` · `A+B` · `1K` · `3K` · `2K` · `2A` · throws | 📚 up close |
| `22BAK` (SC) · throw · `3B` | 📚 after stepping |
| `AS B` / `AS B:4_B` | Punish i14, stab lows |
| `6A+B` | aGI vs mids (📚 also `2A`) |
| `1(K)` | Oki, LH after their GI misses |

**Combos to try**
```
3B / 66B / 66K > TAS B > 44B                 59/68/59   BNB, all launchers
A+B LH > AS AA                               74         easy
66B w! 6B+K w! 6BA > 2BK > TAS B             108        wall, any launcher
6A+B (aGI) > 6BA > 2BK > TAS B               ~80
```

---

## Range zones 📚

| Zone | Definition | Tools |
|---|---|---|
| CLOSE (home) | Jab / throw range — hers is the shortest in the game | `AA` · `KK` · `BB` · `4K` · `4B` · `4A+B` · `3K` · throws |
| MID | One dash away | `66A` · `66B` · `66A+G` · `6K` · `TAS K` · empty `TAS` |
| LONG | Out of dash range | `66B` (linear) · walk/step in — she has no zoning; close the gap |

---

## Core moves

| Role | Move | Lvl | i | Dmg | Blk | Hit |
|---|---|---|---|---|---|---|
| Fastest jab | `AA` | HH | 12 | | -8 | +2 |
| Jab (mid 2nd) | `KK` | HM | 12 | | -6 | +2 |
| Special low poke | `2A` | SL | 12 | 10 | -6 | +6 |
| Safe mid | `BB` | MM | 14 | | -8 | +2 |
| Safe mid | `3K` | M | 13 | 14 | -7 | +3 |
| Plus on hit, TC | `4K` | H | 14 | | -2 | +8 |
| Safe mid, crouch | `4B` | M | 18 | 20 | -2 | +4 |
| TC, RO | `4A+B` | MM | 18 | 14,16 | -6 | KND |
| Crumple on CH | `6K` | M | 16 | | -6 | +6 |
| Approach | `66A` | H | 18 | 20 | -12 | +6 |
| Safe launcher | `66B` | M | 23 | 26 | -3 | LNC |
| Whiff punish | `3B` | M | 20 | | -14 | LNC |
| Punish i14 | `AS B` | M | 14 | 30 | -20 | -6 |
| Combo filler | `TAS B` | M | 16 | 35 | -14 | STN |
| Plus on block | `TAS K` | M | 34 | 30 | +4 | KND |
| Plus on block | `A+B` | M | 38 | 35 | +8 | KND |
| Main low | `1K` | L | 20 | 18 | -14 | -2 |
| Fast low | `2K` | L | 16 | 12 | -14 | -4 |
| aGI | `6A+B` | GI vs M | 4-12 | | | LNC / KND |
| Throw | `SIDE-R A+G` | H | 18 | 70 | | KND |

---

## Corrections log

Empty — no lab sessions yet. Record ✅ findings here, with date, when a source claim is tested (start with the ⚑ list in [community-guides.md](community-guides.md#vs-framedata-2026-11-20)).

---

## Neutral tree

```
CLOSE  (home)
  ├─ My turn, they block ───────→ 4B (-2/+4) · 4K (-2/+8) · 3K (-7) · BB (-8)
  ├─ They press buttons ────────→ 4A+B (TC) · 4K (TC) · KK/AA (i12) · 6A+B aGI vs mids
  ├─ They sidestep ─────────────→ 44A · 66A · TAS A (step catch 📚)
  ├─ They stand-block ──────────→ A+G / 4A+G (40) · SIDE-R A+G (70) · 1K / 2K lows
  ├─ They crouch-block ─────────→ mids: 3K · BB · 4B · 6K
  └─ Guard gauge low ───────────→ A+B (GD 15, +8) · 66B / AS K / 4A+B (GD 9)
MID
  ├─ They hold still ───────────→ 66A (turns on hit) · 66A+G · TAS K (+4)
  ├─ They whiff ────────────────→ 3B · 66B · TAS B (LH vs horizontal)
  └─ They throw horizontals ────→ empty TAS → TAS B
LONG
  └─ Close the gap ─────────────→ walk / step in · 66B (linear, -3)
```

---

## Combos

| Starter | route | 📚 dmg | Notes |
|---|---|---|---|
| `3B` / `66B` / `66K` | `TAS B > 44B` | 59 / 68 / 59 | BNB, "easiest, works on all 3". RO: end `4A+B` |
| `3B` | `TAS AA > 44B+K` | 68 | |
| `66B` | `WR B+K > TAS B > TAS B` | 75 | close only |
| `44B` | `TAS B > TAS B` | 74 | |
| `6bA` | `2BK > TAS B` | 74 | "always works" |
| `4AB` | `44B` | 54 | |
| `4(A)` (stun) | `66K > TAS AA > 44B+K` | 77 | |
| `6K` CH | `TAS B` / `44B+K` | 50 | tight |
| `2B` CH / `B+K` CH | `2BB:4_B` / `B+KB:4_B` | 53 / 56 | |
| `44A` CH | `TAS B > TAS B` | 67 | tight |
| `TAS AA` CH | `AS B:4_B` | 67 | |
| Wall, any launcher | `w! 6B+K w! 6BA > 2BK > TAS B` | 108 | "easy, reliable" |
| Meter | `66K > A+B+K` | — | kills vs Revenge / GUTS 📚 |

### LH follow-up tree
```
LH →
  ├─ A+B (broke their GI/RE) ──→ AS AA                         📚 74 easy · TAS B > TAS B 84 · CE 102
  ├─ 1(K) (after their GI) ─────→ WR B+K > TAS B > TAS B       📚 86
  ├─ TAS AB (hit during GI) ────→ 6BA > 2BK > TAS B            📚 100
  ├─ AS K (stepped a high) ─────→ AS B4                        📚 60
  ├─ TAS B (stepped horizontal) → AS B:4_B                     📚 72
  ├─ 2BK (from their back) ─────→ TAS B                        📚 70 RO
  ├─ 66A+B (vs backstep) ───────→ 22A+B > WR B+K > TAS B > 4B  📚 84 (⚑ archive: 101)
  └─ 44B (after my Lv3 GI) ─────→ 22A+B > WR B+K > TAS B > 4B  📚 67
```

### RE
- `RE A6` → Angel Step (+6, STN): 📖 `> AS AA` · 📚 `RE A6 > AS B:4_B` 46.
- `RE B > TAS B > TAS B` 55 📚.
- Guard damage: `RE B` 50, `RE A`/`A6`/`K` 33.
- 📚 bait REs with `4B` (best), `3K`, `4K`, `22K`; step **right** to evade a RE parry.

---

## Payoff tree

❓ All untested. From 📊 i-values + 📚 damage.

```
I blocked their move
  ├─ a LOW (I'm crouching) ─────→ AS B:4_B (i14)                    📚 "stab every low"
  ├─ ≤ -12 ──────────────────────→ KK / AA (i12) · 2A
  ├─ ≤ -14 ──────────────────────→ AS B (i14, 30) · AS B:4_B on hit
  ├─ ≤ -16 ──────────────────────→ 66K > TAS AA
  ├─ ≤ -18 ──────────────────────→ TAS B (i16) > combo · 4A+B
  └─ ≤ -20 ──────────────────────→ 3B > TAS B > 44B                 📚 59
I sidestepped / they whiffed
  ├─ a horizontal ───────────────→ TAS B LH > AS B:4_B              📚 72
  ├─ a high ─────────────────────→ AS K LH > AS B4                  📚 60
  └─ a vertical ─────────────────→ [22/44]B+K LH > 66B              📚 59
I guard-impacted
  ├─ Lv1/Lv2 GI ─────────────────→ AS B:4_B (only a re-GI saves them) 📚
  └─ any GI, they re-GI ─────────→ A+B (LH vs GI) > AS AA           📚 74
Counter-hit
  ├─ 6K CH (KND) ────────────────→ TAS B / 44B+K                    📚 50
  ├─ 1K CH ──────────────────────→ TAS AA (tech trap)               📚
  └─ 44A CH ─────────────────────→ TAS B > TAS B                    📚 67
Guard crush
  └─ fast-recovery crusher ──────→ 66B > WR B+K > 22BAK             📚 78
```

---

## Branch nodes 📊

> From `framedata.md` [Branch points](framedata.md#branch-points-2-follow-ups). Raw values `blk / hit`.

| Node | Children | Notes |
|---|---|---|
| `A` i12 H | `AA` -8/+2 → `AAA` -4 · `AAA6` → AS (-2/+8) · `AK` HL -14/0 | `AK` = low ender, punishable |
| `B` i14 M | `BB` -8/+2 → `BBB` -6/KND · `BK` -6/+2 | safe mid string |
| `2B` i16 M | `2BB` -20/+10 · `2BK` -12/+10 (LH from back) | 📚 justframe `2BB:4_B` |
| `4A` i18 H | `4AA` HL -16 · `4AB` -12/KND · `4(A)` i38 -2/+16 | `4(A)` stun → combo |
| `6A` i22 H | `6AA` HL -10/-2 · `6AA6` → AS -2/+6 | `6A` GIs lows |
| `6B` i20 M | `6BA` -12/+10 (BT) · `6BB` -8/+4 | 📚 `6B 6K` delay trap |
| `8B+K` i30 | `8B+KA` MML -16 · `8B+KB` +2 · `8B+KK` -20 | |
| `TAS A` i18 | `TAS AA` -12/+6 (STN CH) · `TAS AB` +4/KND (BA) | 📚 "not a real mixup" |
| `TAS B` i16 | `TAS B4` / `TAS BB` (justframe, on hit) | |
| `AS B` i14 | `AS B4` / `AS BB` (justframe, on hit) | `AS B:4_B` 📚 |

---

## STANCES — entries 📊 (method 📚 when the data doesn't say)

framedata.md lists only 4 `~ Angel Step` transitions; the stances themselves are **motion inputs** (📚 sheet), which resolves the "how to enter" ❓.

```
→ AS (Angel Step) = 236 📚
├─ 236 raw            neutral, out of block, from crouch (2G → AS B from downed state)  📚
├─ AAA6         i12 HHH  -2 / +8                       📊
├─ 6AA6         i22 HL   -2 / +6  → AS B ≈ i16, AS A+B ≈ i18 TC safe 📚
├─ 44A6         i24 M    -8 / +2  no AS on CH           📊
└─ RE A6                 +6 / STN                       📊
   cancel: 1_2_3G 📚 · AS sidestep doesn't suffer run counter 📚
→ TAS (Twin Angel Step) = 236236 / 2366 / 23(6) 📚
├─ raw                ducks most horizontal M / SL       📚
└─ empty back jump 7_8_9G, buffer TAS → TAS B on landing (whiff punish) 📚
   cancel: 1_2_3G 📚
→ BT
└─ 6BA (-12 / +10, BT) · BT B+K / BT 2A / BT 2K follow  📊
```

| Stance move | i | Blk / Hit | Use ❓ |
|---|---|---|---|
| `AS A` / `AS AA` | 18 | -18 / -14, KND | AS AA = combo ender |
| `AS B` | 14 | -20 / -6 (KND CH) | punish, stab lows |
| `AS K` | 16 | -6 / KND | step highs → LH, GD 9 |
| `AS A+B` | 16 | -6 / +2 | safe TC |
| `TAS A` / `TAS AA` | 18 | -14 / -12 | step catch |
| `TAS AB` | 20 | **+4** / KND | BA, LH vs GI |
| `TAS B` | 16 | -14 / STN | combo filler, LH vs whiffed horizontals |
| `TAS K` | 34 | **+4** / KND | TC 0-25, plus pressure |

---

## ADVANTAGE — plus situations (choose before pressing)

```
Plus on BLOCK 📊
├─ A+B           +8   (GD 15, i38 — slow)
├─ RE A6         +6   (AS)
├─ TAS AB / TAS K / 44kK   +4
├─ 8B+KB         +2
└─ 44K / SA       0
Plus on HIT 📊
├─ 4(A)  +16 · 2BB / 2BK +10 · 6BA +10 (BT)
├─ 4K  +8 (turns them) · AAA6 +8 (AS) · WR K +8
└─ 2A +6 · 6K +6 · 66A +6 · 9K +6 · 6AA6 +6 · TAS AA +6
Then:
├─ freeze / block ─→ throw · SIDE-R A+G · 1K
├─ mash ──────────→ 6K (CH KND) · 4A+B (TC)
└─ step ──────────→ 44A · 66A · TAS A
```

---

## LOWS — by job 📊

```
Fast ────────→ 2A (SL, i12, -6/+6) · AK (HL i12, -14) · 2K / FC K (i16, -14/-4)
Safest ──────→ 2A -6 · 1(K) -6 (i36) · 6AA6 -2 (HL, → AS)
Range ───────→ RUN K (i20, -20, KND) · 1A (i32) · 11A (i26)
Knockdown ───→ 1K (CH KND) · 1(K) KND · RUN K · 4AA (HL) · 11AA (LM)
Damage ──────→ 1(K) 30 · RUN K 25 · 1K 18
Hidden ──────→ AS AA / TAS AA (2nd hit L) · 8B+KA (3rd hit L)
```
⚠️ Real lows are all -12 to -20 on block except `2A` (SL — standing guard blocks it) and `1(K)`.

---

## MIXUPS — choose before pressing

| Mixup | Options | Beats | Loses to |
|---|---|---|---|
| Mid / throw (main) | `4B`/`3K`/`BB` vs `A+G` / `66A+G` / side throw | block → throw · duck → mid | step, mash (throw i18) |
| Mid / low | `3K`/`6K` vs `1K`/`2K` | | lows -14 ⚠️ |
| `TAS AA` / `TAS AB` | low ender vs +4 BA mid | | 📚 "not a real mixup" — B+K / autostep |
| After `4K` hit (+8) | `66A+G` vs `6K` | | ❓ |
| Oki 📚 | throw · `3K` · `4B` · `66B` · `1K` · `A+B` · `1(K)` → `6A+B` vs WR buttons · `TAS K` | | ❓ |

---

## Guard damage leaders 📊

| Move | Burst | Notes |
|---|---|---|
| `RE B` | 50 | |
| `RE A` / `RE A6` / `RE K` | 33 | |
| `SC 22BAK` | 25 | soul charge |
| `A+B` | 15 | +8 on block, i38 |
| `8A+B` / `22A+B` / `[22/44]B+K` | 15 | |
| `8B+K` | 14 | |
| `TAS AB` | 12 | +4, BA |
| `66B` / `4A+B` / `AS K` / `TAS B` / `6B+K` | 9 | 📚 "guard-damage tools" |
| `4B` | 2 | ⚑ sheet Notes "9 %+" outdated |

---

## Controller / binding notes

- `AS` = `236`; `TAS` = `236236`, `2366` or `23(6)` (📚). Cancel either with `1_2_3G`.
- `TAS B` in combos = `236236B` right after the launcher — the most-used input in her kit.
- Justframe enders: `AS B:4` / `AS B:B`, `TAS B4` / `BB`, `2BB:4_B` (`:` = exact timing, extra damage).
- `[22/44]B+K` = Olympus Shower from back or vertical run (wiki also writes `44B+K`).
- Side throw: 📚 "from 1P side, step left (up) once" for `SIDE-R A+G` (70) ❓.

---

## Open / untested

- ❓ Everything above (no lab time). Start with AS/TAS inputs and `TAS B` in the BNB.
- ❓ ⚑ Heaven's Arch / Heaven to Hell LH: 4+ GIs (📊) vs 5 (📚); persist between rounds?
- ❓ ⚑ `3A` (-14 📊) safe by pushback at range? (📚)
- ❓ ⚑ `4K` → `66A+G`: guaranteed or frame trap?
- ❓ ⚑ `AS K` LH vs throws?
- ❓ `66A` → throw on hit vs 2B / Nightmare (📚 side throw works; not vs Ivy / Azwel).
- ❓ ⚑ `6A+B` aGI vs `2A`: 📊 GI is "vs mids", 📚 says it catches most `2A` (SL). Also which follow-up after each catch type (📊 4 rows, F2).
- Matchup extracts (Ivy, Nightmare, Azwel, 2B): [community-guides.md](community-guides.md#matchup-digest-matchups-tab-2021-01-04--my-characters--opponents-only) · full 📚 routes: [community-guides.md](community-guides.md).
