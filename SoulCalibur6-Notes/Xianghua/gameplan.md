# Xianghua — Gameplan

> **Frame data lives in `framedata.md`.** This file is *decisions*.
> Notation rules are in that file and `../07-glossary.md` — not repeated here.
> Format: `i` / `blk` / `hit` / damage.

**Identity:** fast safe pokes, hard punishes, huge stance payoffs — and
**catastrophic mistake states** (-38, -46) that are accidentally triggerable.

---

# CORE

## Neutral

| Role | Move | i | Blk | Hit | Dmg |
|---|---|---|---|---|---|
| **Gap closer** | `66K` | 14 | -8 | +4 | 18 |
| **Safe advance** | `66B` | 20 | **-2** | +6 | 16 |
| **Poke (fast, safe)** | `6AA` H,**L** | 14 | -8 | +4 | 36 |
| **Chip poke** | `2A` **`SL`** | 12 | **-6** | **+6** | 10 |
| **Low knockdown** | `3AK` **L**,H | 22 | **-2** | **KND** | 34 |
| **Damage string** | `BBB` M×4 | 14 | **-6** | +4 | 50 |
| **Stance entry** ⭐ | `A(A)` → SXS | **10** | **-6** | +4 | 18 |

> ⚠️⚠️ **`2A` is `SL` — a SPECIAL LOW. A STANDING GUARD BLOCKS IT.**
> It is **not a mixup tool.** It only hits people who aren't blocking.
> **True lows (`L`) are the only thing that beats a standing guard.**

### `66B` — the gap-close toolkit
All four branches are neutral. Confirm `66B` (-2), then pick:

| They are… | Do | Result |
|---|---|---|
| **Hit** | `66BB` | 40 dmg |
| **Blocking short** | `AA` | safe, keeps the turn |
| **Blocking long** | `66B[B]` | ⭐ **+6 on block**, STN, 52 dmg, `[BA]` |
| **Throwing verticals** (`B`) | `66B4` / `66BB4` | GI → `[LH]` ⚠️ **-44 if wrong** |

#### ✅ `66BB` vs `66B[B]` — this is a MIXUP, not a ranking

The charge on `66B[B]` is **slow enough to lose to an i10 jab** (Xianghua `AA`,
Nightmare, Groh all interrupt it). Frame data never showed this — charge time
isn't a listed field.

| They are doing | I press | Result |
|---|---|---|
| Blocking both hits (the habit) | `66B[B]` | **Cracks the guard** |
| Jabbing between my hits | `66BB` | **2nd hit beats their jab** |

**Loop:** `66BB` repeatedly to train the block → `66B[B]` to break it → they start
jabbing the gap → back to `66BB` to catch the jab. Neither move is "better."

#### ✅ `66B[B]` hit → they collapse to the GROUND

They slump unconscious for ~half a second, **very low and very close**. Most
follow-ups whiff over them — **including lows.**

| Follow-up | Result |
|---|---|
| ⭐ **`6BB`** | ✅ **Best. 72 total in-game** |
| `1A` / `1B` | ✅ Hit |
| **`3B`** | ⚠️ **HITS BUT DOES NOT LAUNCH.** They stay grounded and **keep their wakeup options** (stand / roll L / roll R) |
| `3AK` | ❌ Whiffs — **even though it's a LOW** |
| `66A+B`, `66B+K` | ❌ Whiff |

> ✅ **72 measured.** ❓ *Why* (e.g. a scaling reset) is unproven, and 72 is
> not established as a ceiling.
>
> ✅ `3B` hit the collapsed opponent **without launching**, and they kept their
> wakeup. ❓ That does **not** prove grounded opponents can never be launched.
> Treat the follow-up as **okizeme** until something better is found.
>
> 📚 **Discord sheet:** `66B[B]` → `6BB` **70** · `bK` 65 · **crouch throw `2A+G`/`3A+G` = 92** ·
> `1A+GB+K` routes. Fits my "they're very low" observation — crouch throws only catch
> crouchers. ⚠️ Throws are **breakable**, so it's a read, not "better than `6BB`". **Q56.**

### `BB` — the cleanest node in the character
Confirm `BB` (-8), then all three branches are safe:

| Branch | i | Blk | Hit | |
|---|---|---|---|---|
| `BBB` | 14 | **-6** | +4 | 50 dmg, 4 mids |
| **`BBK`** | 20 | **-8** | +4 | ⭐ **LOW**, 40 dmg, tech crouch |
| `BB(B)` | 14 | **-6** | +4 | → SXS |

> ✅ **Q33 (2026-10-14):** `BB` blocked **standing** → `K` still lands the low.
> ✅ **The whole `BBK` can be sidestepped** (agrees with 📚 Jacky15x, who says `BBB` too).
> So: beats a fixed stand guard, **loses to a step**. Not "safe pressure".

> ✅ **`BBK` leaves me CROUCHING.** Any follow-up is a **While Rising** move.
> `WR B` (i16, -2, STN) is the natural continuation **on hit**.
> ⚠️ **On block I'm too negative — I get jabbed before `WR B` comes out.**
> `WR KB` starts faster and has pushback on block, but is still likely unsafe.
> **`BBK` blocked = end the turn. Do not continue.**

---

## Disadvantage

### Blocked something — what punishes?

| Certainty | Move | i | Blk | Hit | Dmg |
|---|---|---|---|---|---|
| **Safe / unsure** | `4K` | 16 | **-2** | **KND** | 16 |
| **i10 window** | `AAA` | 10 | -8 | +4 | 36 |
| **Sure & hard** ⭐ | `k6` | 14 | **-16** | **KND** | **24** |
| **-17 or worse** | `3B` → combo | 18 | -12 | **LNC** | 58-90 |

- `k6`'s -16 **doesn't matter when they're already in recovery.** Use it when sure.
- ⚠️ `k6` is a **HIGH** and a **slide input**. Never in neutral, never vs a blocked low.
- A failed `k6` slide gives you plain `K` — 14 dmg, no knockdown.

### Sidestep

| Role | Move | i | Blk | Hit | Dmg |
|---|---|---|---|---|---|
| **Whiff punish** | `3B` | 18 | -12 | **LNC** | 24 |
| **Step-catch** | `22B` / `88B` | 20 | **-8** | **LNC** | 25 |

⚠️ **Step Guard, not step-while-guarding.** Step a cardinal direction, *then* cancel
with `G`. Holding `G` and pressing `7`/`8`/`9` makes you **jump**.

### Knocked down — ❓ ordering below is coach inference from limited 2026-09-29 lab, not my ranking

> ⚠️ Individual observations (✅) are real; the **global order is not established.**

**Everything starts with `G` to stand up.** That's the key insight — since I have
to press `G` anyway, the "expensive" options cost less than they look.

| Rank | Option | Verdict |
|---|---|---|
| ⭐ **1** | **`G` → `RE`** | ✅ **Best.** Needs `G` first to stand fast, but the RE transition is **relatively safe**. Reliable. |
| **2** | **`G` → `6G` (Guard Impact)** | ✅ **Better than expected.** It's a read, but I'm already pressing `G` — so `G`→`6G` vs a button-presser is an easy extension. **More precise and less consistent than RE.** |
| 3 | hold `G` | Safe, predictable. Vary it. |
| 4 | `6`+`G` ukemi | Fastest, but lands in range |
| **5** | **`WR B`** | ⚠️ **Demoted.** Attacking from the ground is **slower than the other options and leaves me open longer.** |

> ⚠️ **`WR B` was previously listed as "the wakeup attack."** Lab says attacking
> off the ground is the *worst* of the five. `WR B` is still the right button
> **once I'm already crouching** (e.g. after `BBK` **on hit**) — just not as a wakeup.

No WR move tech *jumps*, so **there is no attacking answer to a low on wakeup — block it.**

> `iWR` (Instant While Rising) = from `2`+`G`, **release and immediately attack.**

### Being grabbed
Press a **direction**: `A+G`/`B+G`/`K+G` break forward throws, `4A+G` etc. break back throws.
**Matching is by direction only, not by button.**

> ✅ Crouch block evaded the standing throws tested.
> ❓ **Not "all" throws** — low/crouch throws and command throws are unchecked (Q19, Q40).

---

## Advantage

### Pressure

| Range | Move | i | Blk | Hit | Dmg |
|---|---|---|---|---|---|
| **Midrange chase** | `6BB` | 18 | **-6** | **KND** | 35 |
| **Close, safe** | `9KK` | 18 | **+2** | **STN** | 42 |
| **Into stance** ⭐ | `9KK2` → PXS | 18 | **-5** | **STN** | 42 |

⚠️ **`9K` alone is -12.** If they block the first two hits and interrupt before the
third, I'm punishable. Not visually telegraphed — a knowledge check on their part.

### Launcher follow-up
| Ender | ✅ **In-game** | Listed | When |
|---|---|---|---|
| ⭐ **`3B+KK`** | **57** | 73 | **Default.** Highest damage — and not the risk I thought |
| `3B` → `6BB` | **48** | 59 | Close second. **Better okizeme** |
| `3B` → `6KA` | **47** | 58 | Lowest. Keeps me closest |

> ✅ **Lab-measured 2026-09-29.** Listed sums are **~20% high** — combo scaling.
> **Always read the in-game counter, never add up the wiki numbers.**
> ⚠️ `3B+KK` still drops its 2nd hit at max range → then `6BB` / `6KA`.

⚠️ **`6KA`, never `6K(A)`.** Held = -20 and drops into BHH. Major leak.

### ✅ SXS is OFFENSIVE-ONLY — it has no defence

**The single most important thing learned about SXS.** On block the transition is
**not useful**: I cannot block, cannot move, and I'm -6 with no fast escape.

| Situation | Reality |
|---|---|
| **They blocked** | ❌ **No defensive option.** Only out is `2 ~ PXS` and hope their **high** whiffs |
| **Vs highs** | `2 ~ PXS` — fast, and their whiff feeds `SXS K` **Lethal Hit** |
| **Vs M horizontals** | `SXS B+K` GI[12-28] — **the only** GI in stance |
| **Vs M verticals** | ❌ Nothing |

> ⚠️ **`SXS B+K` is redundant vs highs** — `2 ~ PXS` is faster *and* sets up an LH.
> The GI is only worth it vs **mid horizontals**.
> ⚠️ **SXS alone does NOT duck highs.** Tested vs Xianghua `AA` — the stance
> doesn't lower me enough. **`2 ~ PXS` is required**, and it's a few frames slower.

#### ✅ On HIT (+4) — stance options that beat fast buttons

| Entry | Follow-up | vs | Result |
|---|---|---|---|
| `A(A)` | `SXS A+G` (i18) | i14 `BB` | Trades — bounces same frame |
| `A(A)` | `SXS K` (i14) | i10 `AA` | **Mutual CH** — but I win: they're knocked down, I'm stunned **standing** |
| ⭐ **`BB(B)`** | `SXS K` (i14) | i10 `AA` | ✅ **Beats it outright** |
| ⭐ **`BB(B)`** | `SXS A+G` (i18) | i14 `BB` | ✅ **Grabs first** |

> ❓ **`BB(B)` appears to give ~1 more frame of hitstun than `A(A)`** despite both
> listing +4. Consistent across two tests. **Prefer `BB(B)` as the stance entry
> when I expect to contest a button.** → **Q25**
### PXS — the payoff

| Role | Move | i | Blk | Hit | Dmg |
|---|---|---|---|---|---|
| **Main damage** | `PXS BB` | 20 | -14 | **LNC** | **57** |
| **Low mixup** | `PXS AA` L,M | 18 | -14 | +2 | 30 |
| **Throw mixup** | `SXS/PXS A+G` | 18 | — | **+14** | 25 |
| **Lethal Hit** ⭐ | `SXS/PXS K` | 14 | -6 | +8 | 16 |

> ✅ **`PXS BB` is a HIT-CONFIRM, not a guard breaker.** Lab-disproved: an all-block
> dummy blocks both hits. Hit 2 is guaranteed only once hit 1 **hits**.
> **If they blocked, do NOT press `BB`** — you're -14. Use `PXS A` (low) or the throw.

### ⭐ The whiff-punish route — 76 in-game

```
6B2  (18)   their HIGH whiffs over me — she never rises
  │
  └─ PXS K  [LH on whiffed highs]
       ├─ → 3B → 6KA     = 58   ✅ TOTAL 76
       └─ → 3B+KK        = 51   (the last K whiffs with no wall)
                         = 64   ✅ AGAINST A WALL → TOTAL 82
```

`SXS/PXS K` Rising Cloud's LH condition is literally *"LH on whiffed highs."*
**`6B2` causes the whiff.** Setup and payoff are designed together.

> ✅ Measured 2026-09-29. Was listed as "90" — that was summed wiki values.
> ⚠️ **`3B+KK` is the WORSE ender here** (51) even though it's the *better* ender
> off a raw `3B` (57). The LH launch height is different and the final `K` whiffs.
> **Near a wall it flips again** (64). Ender choice is route-specific, not global.

### Okizeme (they're down)

| Their ukemi | Answer |
|---|---|
| **Backward** | ✅ **Run in and GRAB.** All strikes whiff or get blocked |
| **Forward** | ✅ Anything. `3AK` re-knocks down, `6AA` chips, `6BB` pressures |
| **Sideways** | ✅ `6BB` (**tracks**) · ⭐ **`1A`** = `[LH]` **on side-rolling opponents** |

> **Pattern: they can ukemi away from strikes, but not away from a throw.**

---

# SITUATIONAL

| Trigger | Do | Payoff |
|---|---|---|
| **I'm crouched (FC/WR)** | **See "FC / WR" below** | Tree, lab 2026-10-14 |
| **They start a Reversal Edge** | **See the RE decision tree below** | Depends on whether I'm already mid-string |
| **I start a Reversal Edge** | hold **`G`** | They move → RE ends (back to neutral). They press → **round 2, which favours me**. `B` = 100% guard damage |
| **They GI'd me** | `SXS/PXS A+B6` | `[LH] on whiffed GI` |
| **They throw a vertical `B`** | ⚠️ ~~`4A+B`~~ → **`6A+B`** (i22, GI[4-12] vs vertical) or the `4` branches | GI → `[LH]` |
| **They jab (horizontal)** | `4A` (i28, GI[6-20]) · `4A+B` (i26, GI[4-10]) | ⚠️ Slow — a read, not a reaction |

> ⚠️ **2026-10-14 fix:** this table said `4A+B` vs verticals. Wiki framedata, my own aGI
> table below, and 📚 Jacky15x all say **`4A+B` = horizontal, `6A+B` = vertical** (both exclude kicks).
> Never lab-tested either way. See [`community-guides.md`](community-guides.md).
| **They throw a LOW** | `2A+B` (i28, GI[4-8]) | `[LH]` on success |
| **Free time / hard read** | `44(A)` | **+2 blk / +18 hit**, tech crouch[8-26] |

### FC / WR ✅ lab 2026-10-14

**Getting there:** `Tech Crouch` label ≠ ends crouched. Confirmed routes only:

| Move | Ends crouched? |
|---|---|
| `BBK` | ✅ → `WR B` |
| `6BA` | ✅ |
| `3A` (not `3AK`) | ✅ → `WR B` |
| `3AK` · `6AA` · `66ABB` | ❌ standing |

**WR** — choose before rising:
```
WR
├─ default ............ WR B   i16  -2  STN   frame traps
├─ want +4 on hit ..... WR AA  i20  -8  +4    competes with WR B
└─ WR K family ........ i12 but all unsafe, little extra dmg → skip
```

**FC** — choose before the input:
```
FC
├─ want launch ........ FC 3B         M   -8  LNC  (3B is -12)
├─ they stand-block ... FC 3A         L,H      +0 hit, moves me forward
│    after FC 3A hits, decide BEFORE the next input:
│    ├─ expect jab ......... FC 3AB   3rd hit beats i10 jab · -8 blk
│    │                       ⚠️ can whiff from the side (posture-dependent)
│    ├─ expect block ....... FC 3AA   3rd hit blockable · -12 blk
│    ├─ reset .............. stop at FC 3A (+0) → BB(K) etc.
│    └─ stance ............. FC 3(A)~SXS   K trades i14 · A+G loses to jab
├─ read a high ........ FC 3K         backsteps + TCs highs · -18 blk
│    only if FC 3K LANDS → FC 3KB6 (6% GD) / FC 3KB (12% GD) · KND
└─ hard read .......... FC 3B+K       slow guard-break low, STN, +8
skip: FC 2A (SL = stand-blocked) · FC 2B · FC 2K
```

### They start a Reversal Edge ✅ CONFIRMED WORKING

**`SXS/PXS A+B` is NOT reachable from a sidestep** — a sidestep returns me to
default standing, and there is no neutral input into SXS/PXS. It is only
reachable as a **branch off a move already in progress.**

```
They start an RE
│
├─ I am mid-string with a stance branch
│  │
│  ├─ BB(B) → SXS ─── SXS A+B ────────────► ✅ LETHAL HIT
│  │                  (47 dmg alone)
│  │                  → 3B → 6BB  = 88  ⭐ best
│  │                  → 3B → 6KA  = 86
│  │
│  └─ A(A) → SXS ── it depends on WHEN THEY RELEASE the RE
│     │
│     ├─ they release early (in my post-string gap — most people)
│     │  └─ SXS A+B immediately ──────────► ✅ LETHAL HIT
│     │
│     └─ they hold RE its full duration
│        ├─ SXS A+B immediately ──────────► ❌ TOO EARLY
│        │  they track the step and block it as another RE hit
│        └─ 2 ~ PXS  (extends stance duration)
│           └─ PXS A+B the instant RE turns guard→swing
│              ────────────────────────────► ✅ LETHAL HIT
│
│     ⇒ a full-hold RE is a knowledge check that puts ME in a 50/50:
│       commit SXS A+B now, or 2 ~ PXS and time PXS A+B on their release
│
├─ mid-string, NO stance branch
│  ├─ they release early ... finishing the string (AAA / BBB 3rd hit)
│  │                         COUNTER-HITS the RE mid-swing ✅
│  └─ they hold full ....... finish safe or block
│     ⚠️ early CPU releases made AAA/BBB look like they "break" RE — they don't
│
└─ neutral / already stepping → sidestep, then 3B → 6BB
```

> ⭐ **`SXS A+B` is a SIDESTEP first, a hit second.**
> That's the whole mechanic. The LH only triggers in the **split second the RE
> turns from a guard into a swing.** Too early and they track the step and block
> it as just another RE hit.
> **RE hold length is the opponent's choice.** They can release after blocking fewer hits.
> ✅ 2026-10-14: `A(A)` was only "too early" vs an RE **held for its full duration**.
> Vs the usual early release (in the breathing room after my string), `A(A)` → `SXS A+B`
> counters immediately. vs a full hold, `A(A)` needs `2 ~ PXS` to stall.
> `BB(B)`: ✅ confirmed vs a **full-duration hold** (an early release would have eaten
> the 3rd hit as a counter-hit instead). So vs a full hold, `BB(B)` lands in the window;
> `A(A)` doesn't.

> 📚 Jacky15x lists `A[A]`, `a[K]`, `FC 3[A]`, `WR [A]`, `SC 6K[B]` as RE-evading SXS
> entries — **consistent** once release timing is accounted for (Q57 resolved).

**Q24 answered:** `BB(B)` is fast enough. `SXS/PXS A+B` is a **real** RE answer,
not theoretical — and at 86–88 it's the hardest punish in the kit.

### ⚠️ Auto-GI moves only cover ONE attack type

| Covers | Moves |
|---|---|
| **vertical** (`B`) | `AAB4`, `6B4`, `6K(A)` ❓, `66B4`, `66BB4`, `44B4`, `44B+K`, `6A+B` |
| **horizontal** (`A`, incl. **jabs**) | **`4A`**[6-20], `4A+B`[4-10], `22B+K`[6-20] |
| **LOWS** | `2A+B`[4-8] |

The `4`-suffix backstep branches are **vertical-only** → they do **NOT** catch an i10 `A` jab.

> ❓ `6K(A)` → BHH: wiki row says "GI vs vertical", but BHH is a **horizontal** aGI stance
> (wiki + 📚 Jacky15x: "aGIs i12-or-faster horizontal block-punishes"). **Q58.**

---

# STANCE ENTRIES — ranked

| Entry | → | i | Blk | Hit | |
|---|---|---|---|---|---|
| ⭐ **`A(A)`** | SXS | **10** | **-6** | +4 | **Cheapest. Held jab.** |
| `BB(B)` | SXS | 14 | -6 | +4 | Off the `BB` string |
| ⭐ **`9KK2`** | **PXS** | 18 | **-5** | **STN** | **Best PXS entry** |
| `66(A)+(B)` | SXS | 20 | -8 | +6 | Gap-close entry |
| `a(K)` | SXS | 22 | -6 | +2 | slide input |
| `3A2` | PXS | 22 | -15 | +1 | low-profiles highs |
| `6B2` | PXS | 18 | -16 | -6 | low-profiles highs — **the 90-dmg setup** |

- **Pressure** → `A(A)` / `9KK2` (safe)
- **Whiff punish** → `6B2` (the -16 buys the low-profile)
- **`SXS/PXS 2` shifts SXS → PXS**, so a safe SXS entry still reaches PXS.

### ✅ `3A2` / `6B2` low-profile — safe vs HIGHS only
She stays crouched through the transition; their high whiffs entirely despite -15/-16.
⚠️ **i14 MIDS still punish**: Groh `B`/`3K`/`2B` · Geralt `B`/`3K`/`2B` · Zasalamel `a6`/`3K`/`4K`/`bK`.
**A read, not blanket safety.**

### ⚠️ `B` is overloaded in stance
`SXS/PXS B` = i28 / -10 · **`PXS B` = i20 / -12.** In PXS you get the faster one.

---

# LEAKS

1. **Throw breaking** — biggest gap. Arcade Astaroth: *"didn't break any."*
   Crouch block evaded the standing throws tested (not all throws — Q19/Q40).
2. **Ukemi** — understood, not yet automatic.
3. **Whiffing `3B`/`22B` in neutral** → 40% punishes. Poke with `66K`/`6A` instead.
4. **Rarely in FC/WR** — routes now known: `BBK`, `6BA`, `3A` end crouched (see FC / WR). Also `iWR`.
5. **Accidental stance entry** — `6K(A)` vs `6KA` is the big one.
6. **Mashing `BB` out of PXS** → counter-hit. Wait for the whiff.
7. **Slide inputs** (`k6`, `aK`, `1kA`) fail into *different moves*, not whiffs.

---

# ❌ TESTED AND DISMISSED

| Move | Verdict |
|---|---|
| **`SXS K+G`** | ❌ **Useless.** It's a **taunt** — i51, **1 damage**. 0 blk / +10 hit is irrelevant; nothing justifies committing 51 frames. 📚 Jacky15x disagrees: both taunts give **Soul Gauge** on completion, and **`SXS 6K+G`** (mid, i25, +10/0) is the better one — untested → **Q59** |
| **`2B+K` (quake)** | ⚠️ Standing `2B+K` gives the **pushback version — no damage.** The damaging move shares the input; access condition unknown → **Q8 still open** |
| **`WR B` as a wakeup** | ❌ Slower than `G`→`RE` / `G`→`6G`, and leaves me open longer |
| **`3AK` after `66B[B]`** | ❌ Whiffs — they're too low, **even for a low** |

---

# UNDERUSED — worth testing

| Move | i | Blk | Hit | Dmg | Why |
|---|---|---|---|---|---|
| `44(A)` | 38 | **+2** | **+18** | 30 | One of six plus-on-block moves |
| `A+B` | 42 | **+10** | KND | 40 | `[LH]` on impact counter, TC[6-24] |
| `aKB` | 22 | -14 | **KND** | **50** | Slide input. **Low ender** |
| `1kAAB` | 28 | -18 | **KND** | **69** | Slide input. **Low ender** |
| `1kAA` | 28 | **-8** | +4 | 40 | Tech crouch **and** tech jump |
