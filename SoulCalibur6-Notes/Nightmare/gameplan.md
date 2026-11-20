# Nightmare — Secondary (study)

172 moves, 4 stances (+ NTC state), 16 fast (i≤14), 16 fast-and-safe (i≤16, ≥ -6 on block).

**Why picked:** learning him as a secondary **to understand the matchup** from his side. The defensive side (as Ivy) is in [counter-matchup.md](counter-matchup.md). Numbers: [framedata.md](framedata.md) 📊. Sheet combos: [community-guides.md](community-guides.md) 📚.

> ⚠️ **No lab time as Nightmare yet.** Nothing here is ✅ except facts about his moves that I measured from the Ivy side, cited as "✅ (from counter-matchup lab)" → [§0](counter-matchup.md#0-lab-results--2026-11-20).
> Strategy pages and Style Lessons 📖 state rewards without risks, so every move below carries its 📊 Blk / Hit. ⚑ = sources disagree (sheet list → [community-guides § vs. my notes](community-guides.md#vs-my-notes--framedata-2026-11-20)).

## Core identity 📖📊

**A big, slow mid/long-range whiff-punisher with armor, who turns successful reads into stance pressure and NTC loops.**

- **Range + damage:** long verticals (`B`, `66B`, `3B`, `22B`, `44B`) with high damage and guard damage. Every one is punishable on block. 📊
- **Armor (revenge):** `6A`, `6B`, `6K`, `6A+B` (Soul Wave) absorb hits. When the armor clicks: Devastating Vengeance (DV, `REVENGE 6A+B`, +2 on block, BA) → **NTC** on hit. ✅ (from counter-matchup lab) armor starts at f10 and catches most moves mid-startup. ⚑ The 📖 Overview says "Soul Wave is your only armor move": wrong, 📊 lists armor on all four.
- **NTC (Night Terror Charge):** one Soul-Charge move once. Gained via DV, Soul Wave hit, `4KK`, `2A+B`, `236A+G`/`GS A+G`, `RE K`. 📖 The sheet's routing is always "**gain** NTC (`2A+B` ender) or **spend** it (`ntc gs A+B`, `ntc nss b:AB`)".
- **Stances:** NSS / NLS / NBS / GS, all reachable from normal strings (`(A)`, `6(A)`, `3(B)`, `2(B)`, `66B6`, `1A6`…). Mostly *safe-ish holds* that keep the turn.

### ⚠️ The weaknesses (📖 Introduction)
- **No i12 standing punisher.** The only i12 is `236A+G` (mid throw, catches crouchers, unbreakable 📖). Normal punish starts at **i14 (`K`, `3K`)**.
- **Poor poking up close.** `A` i16 -6, `K` i14 -8, `3K` i14 -6. Nothing below i14.
- **Whiffs hard.** Big recovery on `B`, `3B`, `66B`, `22B` when stepped.

---

## Gameplan 📖📊 (❓ all untested as Nightmare)

### 1. Neutral: sit at sword range and punish whiffs
| Move | Job |
|---|---|
| `3B` | i22, M, 36 dmg, **LNC** → `2B` 57 / `SA` 62 📚. **-20 on block** → only vs a whiff or a ducked high. `3(B)` (hold) is **-6** → NSS: the safe version |
| `66B` | i20, M, LNC → `2A+B` 56 (+NTC) 📚. **-22 on block**. `66B6` (→ GS) is **-2**: always cancel unless it hits |
| `22A` | i22, M, anti-step 📖, **-10** / 0. → `22Aa6` GS (-14) ⚑ sheet -4 |
| `2B` / `2(B)` | i20, M, -10 / **+2** (→ NLS). Mid poke that keeps the turn when held |
| `66A` | i28, H, 38 dmg, -2, KND → `66B` **60** guaranteed at all distances 📚. Duckable |
| `agA` | i16, H, 36 dmg (42 just-frame), **+2 on block**, KND. The safe horizontal — slide input (`A` while sliding `1`/`4`→`G`, see [Controller](#controller--binding-notes-)) |

### 2. Armor through their pressure (read, not reaction)
| Move | Job |
|---|---|
| `6K` | i16, H, armor, **-4**, KND. Fastest armor; "block punisher" 📖. ✅ (from counter-matchup lab) **it's a high: a crouch beats it** |
| `6A` → `6AA` | i22, armor 10-20. `6A` -16 alone; `6AA` **+2**, CH combo 📊. ✅ (from counter-matchup lab) crouchable → `FC` punish |
| `6B` → `6BB` | i22, armor 10-22. `6BB` -12 but ✅ (from counter-matchup lab) **pushback too big to punish**. Sidestep beats it ✅ |
| `6A+B` Soul Wave | i36, armor 10-35 ⚑ (sheet 10-20), -14, KND. ✅ (from counter-matchup lab) **lows and throws beat it** (Ivy's `2A+G`/`3A+G`, `1K`) |
| DV | after an absorb: +2 on block, BA, → NTC on hit. → `66B` 53 / `SA` 58 📚 |

### 3. Cash in: break attacks and plus frames
| Move | Job |
|---|---|
| `4A` | i32, H, **BA**, +4, STN → `4KK` 80 (+NTC) / `236A+G` **96** 📚📊. Duckable |
| `A+B` | i32, M, **BA**, +8 on block, LNC, LH vs GI → `nbs B` 66 📚 |
| `44B(B)` | i34, MM, BA, **+6** → NSS. `44BB` +2 LNC. `44B[B] > nss bA` 75 📚 |
| `66A+B` | i31, MM, +4, LNC → `AA` 83 📚. 2nd hit only vs grounded ⚑ F1 |
| `1(A)6` | i62, L, BA, **+14** → GS. Slow; a read vs a turtle |

### 4. Stuck in melee: struggle out
| Move | Job |
|---|---|
| `3K` | i14, M, **-6** / +6. The go-to poke 📖. ⚑ sheet -8 / +4 (still unpunishable) |
| `K` | i14, H, -8, CH KND → `1A6` 44 📚. G-cancelable |
| `A` / `(A)` | i16, H, -6 / **0** (→ NSS) |
| `236A+G` | i12 mid throw, unbreakable 📖, catches crouchers. → NTC. The only i12 |
| `NSS K` | i10 from stance, -10, STN on CH ⚑ sheet -14 → [NSS](#nss--night-side-stance) |
| `4B+K` → NSS | 📖 Master: dodges short-range attacks → `NSS aB` (LH) |

### After a +frames move — pick before pressing
| They… | Pick | Why | Status |
|---|---|---|---|
| freeze / block | `236A+G` (i12) · `4A` (BA) | Throw catches crouchers; BA beats guard | ❓ |
| jab i10-12 | `6K` (armor) / `NSS K` (i10, from stance) | Armor absorbs; `NSS K` CH STN | ❓ |
| sidestep | `agA` (+2) · `22A` | Horizontal / anti-step | ❓ |
| duck | `3K` · `WR B` / `FC 3B` LNC | All mids | ❓ |
| backstep | `66B6` → GS · `66A` | Long reach | ❓ |

---

## Moveset status (2026-11-20)

New character → **everything is "to explore"** ❓. Priority order = the order below.

### To explore ❓
| Move | Why |
|---|---|
| `3K` · `agA` · `A` | The fast-and-safe core; learn the pokes first |
| `3(B)` / `66B6` / `2(B)` | Hold / cancel versions → safe and into stances |
| `3B` / `66B` whiff punish | His main damage source at range |
| `6K` / `6AA` / `6BB` / Soul Wave | Armor reads → DV → NTC |
| `4A` / `A+B` / `44B(B)` | BA + plus on block |
| `236A+G` | i12 punish / anti-crouch, NTC |
| `2A+B` ender | Universal NTC-gaining ender |
| NTC spend: `NTC 6BBB` · `NTC KB` · `NTC GS KK` · `NTC 66KK6` | Which spend for which situation |
| `NSS K` · `NSS bA` · `NSS B` | NSS mixup |
| `GS B` / `GS A` / `GS A+G` | GS mixup (📖 Adept) |

### In use / Use more
— (nothing yet; no Nightmare lab)

---

## Range zones 📊📖
| Zone | Definition | Tools |
|---|---|---|
| **Close** | jab range | `3K`, `K`, `A`, `236A+G` (i12), `6K` (armor), `4B+K` → NSS |
| **Mid** | his sword tip | `2B`/`2(B)`, `22A`, `agA`, `6A`/`6B` armor, `3B`/`66B` whiff punish |
| **Long** | out of his poke range | `66B6` → GS, `66A`, `66K6` → GS, `44B`, `22B`, `1(A)6` |

---

## Core moves
📊 values from [framedata.md](framedata.md). **Bold** = the key value.

| Role | Move | Lvl | i | Dmg | Blk | Hit |
|---|---|---|---|---|---|---|
| Fast punish (throw) | `236A+G` | M | **12** | 25 | — | +14 (→ NTC) |
| Poke | `3K` | M | **14** | 16 | **-6** | +6 |
| Poke / CH | `K` | H | **14** | 18 | -8 | +4 (CH KND) |
| Poke | `A` | H | 16 | 16 | -6 | +4 |
| Poke → NSS | `(A)` | H | 16 | 16 | **0** | +10 |
| Horizontal | `agA` / `abA` | H | 16 | 36 | **+2** | KND |
| Armor poke | `6K` | H | 16 | 24 | **-4** | KND |
| Armor | `6A` / `6AA` | H / HH | 22 | 20 / 20,30 | -16 / **+2** | -4 / KND |
| Armor | `6B` / `6BB` | M / MM | 22 | 18 / 18,20 | -16 / -12 | STN / KND |
| Armor | `6A+B` | M | 36 | 30 | -14 | KND |
| Launcher | `3B` / `3(B)` | M | 22 | 36 | **-20** / -6 | LNC |
| Launcher | `66B` / `66B6` | M | 20 | 24 | **-22** / -2 | LNC |
| Launcher (WR) | `WR B` / `WR (B)` | M | **16** | 18 | -22 / -2 | LNC |
| Anti-step | `22A` | M | 22 | 22 | -10 | 0 |
| Mid poke → NLS | `2(B)` | M | 20 | 18 | **+2** | +14 |
| BA | `4A` | H | 32 | 40 | **+4** | STN |
| BA | `A+B` | M | 32 | 42 | **+8** | LNC |
| BA → NSS | `44B(B)` | MM | 34 | 24,30 | **+6** | LNC |
| Long | `66A` | H | 28 | 38 | -2 | KND |
| Ender (+NTC) | `2A+B` | M | 20 | 15,25 | -16 | KND |
| Low | `2K` | L | 16 | 12 | -14 | -4 |
| Low | `2A` | L | 18 | 16 | -14 | -4 (CH +6) |
| Low → GS | `1A6` | L | 32 | 32 | -12 ⚑ | +14 (CH LNC) |

---

## Corrections log
Empty — no Nightmare lab yet. Sheet-vs-wiki numbers conflicts live in [community-guides § Move list vs framedata](community-guides.md#move-list-vs-framedata-generated); this log is for **my** lab overturning a 📊/📖/📚 claim.

---

## Neutral tree
```
CLOSE (jab range)
├─ my turn, they block      ───→ 3K (-6) · A (-6) · (A) → NSS (0) · agA (+2)
├─ they press (i10-14)      ───→ 6K armor (-4) · 4B+K → NSS (dodge) → NSS aB
├─ they turtle / crouch     ───→ 236A+G (i12, catches crouch) · 4A (BA)
└─ I'm minus                ───→ guard · 4B+K → NSS · Soul Wave (read; loses to lows/throws ✅)

MID (sword tip)
├─ they whiff / step in     ───→ 3B (LNC, -20) · 66B (LNC, -22)
├─ they sidestep            ───→ agA · 22A
├─ they press               ───→ 6A / 6B armor → DV → NTC
└─ keep the turn            ───→ 2(B) → NLS (+2) · 3(B) → NSS (-6) · 6(A) → NSS (-8)

LONG
├─ approach                 ───→ 66B6 → GS (-2) · 66K6 → GS (-6) · 66A (-2)
├─ they backstep / walk     ───→ 66A > 66B 60 (all distances 📚)
└─ they turtle              ───→ 44B(B) (BA +6) · 1(A)6 (BA +14)
```

---

## Combos
📚 = [community-guides.md](community-guides.md) sheet; 📊 = wiki Combos page. All ❓ untested.

| Starter | Route | 📚 dmg | Notes |
|---|---|---|---|
| `3B` | `> 2B` | 57 | easiest launcher route |
| `3B` | `> SA` | 62 | meter |
| `3(B)` | `> NSS bA` | 61 (📊 70 JF) | `b:A` JF = 68 📚 · `ntc nss b:AB` 85 |
| `66B` | `> 2A+B` | 56 | **gains NTC** |
| `66B` | `> ntc gs A+B > 66B` | 83 | spends NTC |
| `66A` | `> 66B` | 60 | all distances |
| `4A` | `> 4KK` | 80 | gains NTC 📊📚 |
| `4A` | `> 236A+G` | **96** | raw damage 📊📚 |
| `A+B` | `> nbs B` | 66 | LH: `> nbs B > BB` 88 |
| `44B` | `> 2A+B` | 55 | NTC |
| `44B(B)` | `> NSS bA` | 75 | |
| `CH K` | `> 1A6` | 44 | `> 1A6 > gs B` 81 techtrap |
| `WR (B)` | `> NSS bA` | 47 (55 JF) | CH: `> nss B > 66A+B` 80 |
| `FC 3B` | `> 66A+B > iagA` | **109** | ducked high punish |
| `66A+B` | `> AA` | 83 | `> 3AA` 85 |
| `NSS B` | `> 2A+B` | 58 | `> 66A+B` 71 |
| `GS B` | `> agA` | 70 | `> iagA` 75 |
| DV | `> 66B` | 53 | `> SA` 58 |
| `A+G` | `> 2A+B` | 95 | deathtrap (vs no ukemi) |

### Follow-up tree — "take NTC or spend it"
```
any launch (3B / 66B / NSS B / 44B)
├─ no NTC   ───→ 2A+B ender        → gain NTC (low dmg, sets up next loop)
└─ NTC on   ───→ ntc gs A+B > 66B  → +25-30 dmg, NTC gone
                 ntc nss b:AB      (from 3(B) / NSS routes)
```

### RE 📊📚
| Win | Result | Notes |
|---|---|---|
| `RE A` | 52, KND | -12 if blocked |
| `RE B` | 66, → NSS | `RE1 B > nss B` 62 · `> ntc nss A+B` 77 📚 ⚑ (sheet: JGL; 📊 STN) |
| `RE K` | attack throw, 26, → **NTC** on cinematic hit | -16 |

---

## Payoff tree
Punish by block value. Fastest real options: `236A+G` i12 (throw), `3K`/`K` i14, `A`/`agA`/`6K` i16, `66B` i20, `3B` i22.
```
I blocked their move
├─ -12 / -13  ───→ 236A+G (25 → NTC)                      ❓ throw vs punish window
├─ -14 / -15  ───→ 3K (16) · K (18) · 236A+G
├─ -16 to -19 ───→ agA (36 KND) · 6K (24 KND)
├─ ≤ -20      ───→ 66B LNC > 2A+B 56 (NTC)
├─ ≤ -22      ───→ 3B LNC > 2B 57 · > SA 62
├─ they whiff ───→ 3B · 66B · 66A > 66B 60 (range)
└─ ducked my high (I'm crouching) ───→ WR B (i16 LNC) · FC 3B (i26) > 66A+B > iagA 109
```
⚑ "i12 throw as a punisher" is unverified — throws can be teched unless 📖 "unbreakable" holds; lab it.

---

## Branch nodes 📊
From [framedata.md § Branch points](framedata.md#branch-points-2-follow-ups). Choose before pressing.

| Node | Children | Notes |
|---|---|---|
| `3A` | `3AA` -20/KND · `3AB` -6/STN · `3AK` +2/KND | 3 options. `3AA > SA` 73 📚 |
| `A` | `AA` -10/KND · `Aa6` -32 → GS · `(A)` 0 → NSS | `(A)` is the useful one |
| `6A` | `6AA` +2/KND · `6AaG` -11 → NBS · `6(A)` -8 → NSS | armor start |
| `44B` | `44BB` +2/LNC · `44B(B)` +6 → NSS | both BA |
| `4K` | `4KK` -6/KND (→ NTC) · `4KB` -12/0 | |
| `22A` | `22AA` -16/KND · `22Aa6` -14 → GS | |
| `B` | `BB` -16/KND · `Bb4` -6 → NBS | |

---

## STANCES — entries 📊
```
NSS (Night Side Stance)  ← 4B+K · (A) 0 · 6(A) -8 · 3(B) -6 · WR (B) -2 · WR (A) -2 · 44B(B) +6
                           NLS (A) -2 · NBS (A) -12 · NSS (A) -4 (loop) · RE B · NTC WR K(B) -2
NLS (Night Lower Stance) ← B+K · 2(B) +2 · FC (B) +2 · 22(B) -4 · 11(B) -10 · NSS B+K · NBS B+K
NBS (Night Behind Stance)← 6B+K · 6AaG -11 · Bb4 -6 · 66(B) -20 · NLS (B) +2 · NBS K (loop)
GS  (Grim Stride)        ← 236 · 66B6 -2 · 66a6 0 · 66K6 -6 · 1A6 -12 · 1(A)6 +14 · 22Aa6 -14
                           WR Aa6 -12 · Aa6 -32 · GS b6 -9 (loop) · NSS/NLS/NBS 236
NTC (state)              ← DV hit · Soul Wave hit · 4KK · 2A+B · 236A+G / GS A+G · RE K · SC ending
```

### NSS — Night Side Stance
| Move | Lvl | i | Blk | Hit | Job |
|---|---|---|---|---|---|
| `NSS K` | H | **10** | -10 ⚑ (sheet -14) | KND (CH STN) | fastest button; 📖 Master: wait for the CH → `> 2A+B` 50 📚 |
| `NSS bA` | H | 14 | -16 | KND | 48 dmg (JF) — combo ender, not a poke |
| `NSS B` | M | 20 | -14 | LNC | → `2A+B` 58 📚 |
| `NSS aB` | M | 27 | -18 | KND | LH on whiff punish (📖) → `2A` 40 📚 |
| `NSS (A)` | M | 26 | **-4** ⚑ (sheet -20?) | +14 | stays in NSS — 📖 Master pressure loop |
| `NSS 236` | — | | | | → GS |

### NLS / NBS
| Move | Lvl | i | Blk | Hit | Job |
|---|---|---|---|---|---|
| `NLS B` | M | 14 | -10 | KND | fast mid |
| `NLS (B)` | M | 14 | **+2** | STN | → NBS; `nls [B] > nbs KK > 2A+B` 57 📚 |
| `NLS A` / `NLS (A)` | L | 26 | -10 / -2 | +2 / +10 | low (→ NSS when held) |
| `NBS K` | M | **10** | -8 | +2 | loops in NBS |
| `NBS B` | M | 26 | **-2** | KND (CH LNC) | CH → `BB` 89 📚 |
| `NBS A` | L | 24 | -20 | 0 (CH KND) | low; `NBS (A)` -12 → NSS |

### GS — Grim Stride 📖 Adept
| Move | Lvl | i | Blk | Hit | Job |
|---|---|---|---|---|---|
| `GS A` | H | 18 | -16 | +8 (CH 18) | **GI vs verticals** 📖 → CH `> 4KK` 69 📚 |
| `GS B` | M | 22 | -10 | LNC | guard damage 📖 → `agA` 70 📚 |
| `GS K` | M | 18 | -14 | KND (CH STN) | → `2A+B` 53 📚 |
| `GS A+G` | M | **12** | — | +14 | throw, → NTC |
| GS → crouch | | | | | 📖 → `WR B` / `FC 3A+G` mixup |

---

## ADVANTAGE — NTC spend (choose before pressing)
| Move | Lvl | i | Blk | Hit | Use |
|---|---|---|---|---|---|
| `NTC 6BBB` | M×6 | 22 | **+4** | KND | BA, GD 18. 📖 Beginner |
| `NTC KB` | HM | **14** | -4 | KND | fast, safe 📖 Beginner |
| `NTC 66KK` / `66KK6` | MM | 16 | 0 / **+10** → GS | STN | BA. ⚑ sheet `66KK6` +20 |
| `NTC GS KK` | MH | 18 | **+10** | KND | BA, GD 16 |
| `NTC NLS A+B` | MMMM | 26 | **+14** | KND | BA, GD 19 |
| `NTC NSS bAB` | | 14 | | | 📖 SC: `3(B)`/`WR (B)` > `NTC NSS bAB` |

## ADVANTAGE — after stance holds
```
2(B) / FC (B) +2 → NLS ──→ NLS B (i14) · NLS (B) (+2 → NBS) · NLS A (L) · NLS A+B (NTC)
(A) 0 → NSS     ──→ NSS K (i10) · NSS (A) loop (-4) · NSS B (LNC) · NSS 236 → GS
44B(B) +6 → NSS ──→ same NSS options, more advantage
66B6 -2 → GS    ──→ GS A (GI) · GS B · GS K · GS A+G (i12) · crouch → WR B
```
❓ Whether the hold → stance follow-ups are true frame traps or interruptible — untested.

---

## LOWS — by job 📊
| Job | Move | i | Blk | Hit | Notes |
|---|---|---|---|---|---|
| Fast check | `2K` | 16 | -14 | -4 | TC |
| Fast check | `2A` | 18 | -14 | -4 (CH +6) | TC |
| CH knockdown | `1K` | 20 | -12 | -2 (CH +4) | |
| Into GS | `1A6` | 32 | -12 ⚑ | +14 (CH LNC) | ⚑ sheet 0/+26 |
| Big read | `1(A)6` | 62 | **+14** | LNC | BA |
| Stance low | `NLS A` / `NLS (A)` | 26 | -10 / -2 | +2 / +10 | TC |
| Stance low | `NBS A` | 24 | -20 | 0 (CH KND) | |
| Run | `RUN K` | 20 | -22 | KND | TJ/TC |
| Throw (low) | `FC 1A+G` / `FC 2A+G` | 18 | | KND | → `BT 2K` 44 / `SA` 41 📚 |

---

## MIXUPS — choose before pressing
| Situation | Mid / BA | Low | Throw |
|---|---|---|---|
| Neutral close | `3K` · `4A` (BA) | `2K` / `2A` | `236A+G` (catches crouch) |
| GS | `GS B` · `GS K` | (crouch →) `FC 3A+G` | `GS A+G` |
| NSS | `NSS B` · `NSS (A)` | — | — |
| NLS | `NLS B` / `NLS (B)` | `NLS A` | — |
| NBS | `NBS B` · `NBS K` | `NBS A` | — |

---

## Guard damage leaders 📊
| Move | Burst (GD) | Notes |
|---|---|---|
| `METER A+B+K` (CE) | 25 | -18 |
| `NTC NSS A+B` / `NTC NLS A+B` | 21 / 19 | NTC |
| `44BB` / `44B(B)` | 19 | BA, +2 / +6 |
| `NTC 6BBB` | 18 | +4 |
| `NTC GS KK` | 16 | +10 |
| `BB` · `66B` · `22B` · `44B` · `44K` | 15 | all punishable except `44B` (0) |
| `A+B` · `66A+B` | 13 | +8 / +4 |

---

## Controller / binding notes ❓
- **Slide inputs** `agA` / `abA`: `A` pressed during a `1`→`G` (or `4`→`G`) slide. "Perfect" input = 42 dmg + guard crush 📊. Sheet's `iagA` = straight out of the previous recovery.
- **Just frames:** `NSS b:A` (48 vs 38), `ntc nss b:AB`.
- **Buffers 📚:** `6~2A+B` ("the 6 must be absolutely minimal"); `3AA > 6~236A+B+K` (hold 6 briefly, then QCF → SA reliable vs all ukemi).
- **Holds:** `(A)`, `6(A)`, `3(B)`, `2(B)`, `WR (B)`, `44B(B)` decide the stance — commit before the hit.

---

## Open / untested
- [ ] `3K` / `agA` / `A` poke rhythm — the core fast-and-safe set.
- [ ] `236A+G` as an i12 punish — breakable or not (📖 "unbreakable")?
- [ ] `66B6` → GS: -2 (📊) and the GS mixup; ⚑ sheet `66a6` +10 / `66K6` +4.
- [ ] Armor reads: `6K` vs jabs, DV → `66B` 53.
- [ ] `66B > 2A+B` 56 vs `66B > ntc gs A+B > 66B` 83 — the NTC loop.
- [ ] `4A > 236A+G` 96 / `> 4KK` 80.
- [ ] NSS: `NSS K` CH STN, `NSS (A)` loop (⚑ -4 vs -20?).
- [ ] ⚑ `NSS K` -10 vs -14, `1A6` -12 vs 0, `GS b6` -9 vs +8 — the sheet conflicts that change safety.
- [ ] Ducked-high punish: `WR B` vs `FC 3B > 66A+B > iagA` 109.
- [ ] Mirror the findings back into [counter-matchup.md](counter-matchup.md) (which of his options Ivy must respect).
