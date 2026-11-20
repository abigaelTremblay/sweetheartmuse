# Damage Model — predicting combo damage without the lab

**Goal:** stop summing wiki values (always ~20% high) and stop needing training
mode for every route.

---

## 1. Combo scaling — FITTED FROM LAB DATA, not documented

⚠️ **The SuperCombo wiki does NOT document combo scaling.** No table exists on
`/System`. A web search returned a confident answer ("hit 2 = 100%, then -10%
per hit") — it cited **2XKO, SF6 and a generic calculator, zero SC6 sources**,
and it is **falsified by our own measurements** (it predicts 56 for
`3B`→`6KA`; the real value is 47). **Discard it.**

### The model

```
total = d1  +  floor(d2 x M2)  +  floor(d3 x M3)  +  ...
```

- **Hit 1 always deals full listed damage.**
- **Each later hit is scaled, then FLOORED** (rounded down).

| Hit | Multiplier |
|---|---|
| 1 | **100%** |
| 2 | **75% or 80%** ← not yet separated |
| 3 | **65% or 60%** ← paired with the above |
| 4+ | ❓ **unknown** |

### Evidence — 3/3 exact

| Combo | Listed sum | Predicted | ✅ Measured |
|---|---|---|---|
| `3B` → `6KA` (24,14,20) | 58 | **47** | **47** |
| `3B` → `6BB` (24,18,17) | 59 | **48** | **48** |
| `3B` → `3B+KK` (24,22,27) | 73 | **57** | **57** |

**Both candidate pairs predict all three exactly.** A brute-force search over
every `(M2, M3)` from 60–90% / 50–85% returned **34 fitting pairs**; `100/75/65`
and `100/80/60` are the only *round* ones.

> **Why they can't be separated yet:** in all three combos the errors **cancel.**
> For `6KA`: hit2 `14` → 10 (75%) vs 11 (80%), **+1**. Hit3 `20` → 13 (65%) vs
> 12 (60%), **−1**. Net zero. The same accident holds for the other two.
> **Every combo tested so far was structurally blind to the difference.**

### ⭐ The experiment that separates them — Q31

Use a **TWO-hit** combo. With no third hit, nothing cancels.

| Test | `100/75/65` says | `100/80/60` says |
|---|---|---|
| ⭐ **`3B` → `3K`** *(i14, MID, 14)* | **34** | **35** |
| ⭐ **`3B` → `66K`** *(i14, MID, 18)* | **37** | **38** |
| `3B` → `22A+B` *(i24, MID, 30)* | **46** | **48** ← 2 apart, most robust |

**Also confirm hit 1 is unscaled:** a raw `3B` on its own must read exactly **24**.

> Prefer **mids** (`3K`, `66K`, `22A+B`). `K`/`6A`/`4B`/`k6` are **highs**.

---

## 1b. Dustloop System Data (2026-10-14) — 📚 community, compared to my data

Source: `https://www.dustloop.com/w/User:Cyllene.!/SCVI/System_Data` — a **user page, self-described as "may be wildly inaccurate"**, data collected mainly with **Azwel**.
The author writes that combo scaling is *"extremely convoluted and not yet understood"*. They only verify hit 1 → hit 2.

| Claim (📚) | vs my data |
|---|---|
| Simple table: hit N scaled by **0.75^(N-1)** (100 / 75 / 56.25 / 42.19…) | ❌ **Fits 0/3** of my measured 3-hit combos (predicts 45–46 / 46–48 / 55–56 vs ✅ 47/48/57), under every rounding variant tested. Treat it as illustrative only, as the author does |
| Hitting an **airborne** opponent → next hit **75%**; airborne hits **+~2%** | Consistent with my hit-2 = 75% candidate. Doesn't decide it |
| Combo UI: **each hit rounded down, total rounded to nearest** | ⚠️ If true, my "floor every hit then sum" model may be wrong. **Q31 now tests this too** |
| Some moves carry **built-in string scaling** (Azwel `3B`: other moves 50%, own string 66%) | Character-specific. **Not** evidence about Xianghua's `3B` |
| STN / STN-UKD can **apply** scaling; scaling may persist across a dropped combo; wall hits scale oddly | Contradicts nothing measured. Undermines treating "knockdown = reset" as a rule (§2) |
| **Lethal Hit** ignores combo scaling and CH multipliers. A 2nd LH in the same combo = 75% | Fits `PXS K` LH behaving > listed |
| Counter multipliers: **Attack counter +20%**, back-run counter +20%, side-run counter +5–10% (page is inconsistent), **air attack counter ~+45%**, impact/stun counter 0% | Replaces my "punish counter ~+20%" guess |
| GI hitstun applies extra scaling; **auto-GI (aGI) does not** | Refines §2 |
| Guts: weak −30/−35/−40%; medium, strong & throws −5/−10/−20% | ✅ Matches §3 (independent second source) |
| HP = 240.1 (float); chip can't K.O. | Matches |

### Q31 — three hypotheses, one test

| `3B` → X | 75% + floor (mine) | 75% + round-total (Dustloop UI rule) | 80% |
|---|---|---|---|
| `3K` (14) | 34 | 35 | 35 |
| `66K` (18) | 37 | 38 | 38 |
| ⭐ **`22A+B` (30)** | **46** | **47** | **48** |

⭐ **`3B`→`22A+B` alone separates all three.** Run it first.

---

## 1c. Ivy LH routes — ✅ lab 2026-10-17 (cumulative counter readings)

Raw readings as reported. Listed = 📊 `Ivy/framedata.md`. "Added" = difference between consecutive readings.

### `AA` LH > `6B[A]` > `SE [K]` > `SE B×3`
| Step | ✅ Reading | Added | Listed for that step | Added ÷ listed |
|---|---|---|---|---|
| `AA` LH | 21 | 21 | 18 (2nd hit; `AA` = 8,18) | 117% |
| `> 6B` | 36 | 15 | 14 | **107%** |
| `> 6B[A]` (2nd hit of `6B(A)`) | 55 | 19 | 26 | 73% |
| `> SE [K]` | 67 | 12 | 18 | 67% |
| `> SE B` | 70 | 3 | ❓ no per-hit row (`SE BBB` = 36 total) | — |
| `> SE B×2` | 73 | 3 | ❓ | — |
| `> SE B×3` | 78 | 5 | ❓ | `SE BBB` 11 of 36 = 31% |

📚 Sheet: `SE B×5` ender = 85.

### `66[A]` LH > `9B+K` > `4A` > `4B8` > `2A+BB`
| Step | ✅ Reading | Added | Listed | Added ÷ listed |
|---|---|---|---|---|
| `66[A]` LH | 24 | 24 | ❓ `66(A)` = 44 total, split unknown | — |
| `> 9B+K` | 47 | 23 | 26 (2 hits, split unknown) | **88%** |
| `> 4A` | 56 | 9 | 20 | 45% |
| `> 4B8` | 78 | 22 | 45 (12 hits) | 49% |
| `> 2A+B` | 84 | 6 | 22 | 27% |
| `> 2A+BB` | **90, sometimes 91** | 6–7 | 18 | 33–39% |

### What this settles
- ❌ **The §1 model can't be applied to these routes.** It says hit 2 gets 75% or 80%. Here, the move right after the LH gets **107%** (`6B`) and **88%** (`9B+K`). Either an LH opener changes the scaling for the following hits, or a launched opponent takes extra damage (📚 Dustloop: air-attack counter ~+45%), or something else. **Can't tell which from this data.**
- ⚠️ **Not the same situation as §1.** §1 was fitted to non-LH `3B` openers with single-hit follow-ups. Do not pool these numbers with it.
- ❌ **Can't refit by hit number.** `9B+K` (2 hits), `4B8` (12) and `SE B×3` have no per-hit damage in the data, so the hit count at each step is unknown.
- ⚠️ **Same inputs gave 90 or 91.** Damage is not fully repeatable. Unexplained; candidates: a hit of `4B8` dropping, or the total being rounded from fractions (📚 Dustloop UI rule). The 78 after `4B8` was not compared between runs.
- ✅ **`AA` LH = 2nd hit only, boosted.** ✅ 2026-10-17: in every run the 1st `A` **whiffed completely**. (If the 1st `A` hits, the 2nd is **not** an LH and the route isn't possible.) So 21 vs a listed 18 = LH bonus **≈ +17%** (+15–22% depending on rounding). The `66[A]` 24 can't be decomposed (unknown split).
- **Q31 is still open.** None of this separates 75/65 from 80/60.

### My theories (2026-10-17) — ❓ untested

| Theory | Fits | Against | Test |
|---|---|---|---|
| **T1. Hidden fractional damage.** Training mode tops the dummy's HP back up but keeps a leftover fraction unless the game state is reset, so the same combo reads ±1 between attempts | 90 vs 91 on identical inputs. 📚 Dustloop: HP is a float (240.1); each hit rounded down, total rounded to nearest | Only matters if the counter is computed from HP lost. If it sums per-hit values, leftover HP changes nothing | 10 runs **with a full reset** between each, 10 **without**. Spread only in the no-reset set → T1 |
| **T2. Scaling per move, not per hit.** Every hit of one move shares one multiplier | `SE B×3` hits (3, 3, 5) look like one heavily scaled block. Leaves `9B+K` (88%) to an LH effect, as you said | ⚠️ **`6B(A)` contradicts it as measured:** its 1st hit added 15 (107%), its 2nd added 19 of 26 (73%). Same move, very different rates. Possible escapes: `6B` alone and `6B[A]` were separate attempts (±1 noise can't cover the gap), or the 2nd hit's listed 26 is wrong | Read `AA` LH > `6B[A]` in **one** run, noting the counter after each hit if visible. Then check a non-LH `6B[A]` alone: does it read 40? |

### Tests that would decompose it (→ Q68)
1. ~~`AA` with both hits LH~~ — impossible (1st hit landing cancels the LH).
2. `66(A)` **non-LH**, close, both hits: reveals the 44 split.
3. The same `6B` follow-up off a **non-LH** launch (e.g. `3B > 6B` if it connects): compare with the +15 here. Separates "LH boosts what follows" from "airborne bonus".
4. T1 reset vs no-reset runs (above).
5. T2 `6B[A]` checks (above).
## 2. Things that BREAK the model

| Effect | What it does |
|---|---|
| **Knockdown pause** | ❓ `66B[B]`→`6BB` measured **72** ✅. The "scaling resets" explanation is **my inference, not established**. Dustloop says STN can *apply* scaling |
| **Lethal Hit** | Deals **more than listed**. `PXS K` lists 16 but behaves as ~20 (+~30%) |
| **Counter hit** | Uses the `counter` column, not `damage` |
| **Counter hits** | 📚 Attack counter +20%, air attack counter ~+45% (§1b) |
| **Post-GI combos** | Explicitly scaled **harder** (wiki-confirmed) |
| **Walls** | Change which hits *connect*. `3B+KK` went **51 → 64** near a wall |
| **Guts** | See below |

---

## 3. Guts — ✅ wiki-documented, exact

Damage **reduction** when the *defender* is at low health. **Everyone has 240 HP.**

| Defender HP | vs **Lights** | vs **Mediums / Heavies / Throws / CE** |
|---|---|---|
| 30% (72hp) | **−30%** | −5% |
| 20% (48hp) | **−35%** | −10% |
| 10% (24hp) | **−40%** | **−20%** |

> ⭐ **Lights are gutted brutally (−40%), mediums/heavies barely (−20%).**
> **Finish rounds with mediums and heavies.** A light-damage poke string loses
> nearly half its value at the exact moment it would close a round.
> ⚠️ Chip damage ignores guts **and cannot kill.**
> ⚠️ **Lab dummies at full health show NO guts** — measurements are unscaled by it.

---

## 4. Move Level — ✅ wiki-documented

Not in the frame data. **Inferred from listed damage:**

| Level | Damage |
|---|---|
| **Light** | **0–21** |
| **Medium** | **22–34** |
| **Heavy** | **35+** |

*"These rules are often broken"* — a heuristic, not a law.

**Move level controls:**
- **Clashes** when two weapon attacks meet
- **GI advantage:** light GI'd → **+28** (they fall) · medium → **+16** · heavy → more
- **Meter gain** on hit
- **Guard crush:** heavies always can, some mediums can, **lights never**
- Some **Lethal Hit conditions**
- **Guts scaling** (above)

> ⚠️ **A GI against a LIGHT attack is +28 and knocks them down.** That is a far
> bigger reward than GI-ing a heavy. Cheap jabs are the best GI targets.

---

## 5. Quick reference — Xianghua enders off `3B` (24)

| Ender | Listed | ✅ Real |
|---|---|---|
| `3B+KK` (22,27) | 73 | **57** |
| `6BB` (18,17) | 59 | **48** |
| `6KA` (14,20) | 58 | **47** |

**Rule of thumb: a 3-hit combo lands at ~78–80% of the listed sum.**
Use that to triage routes, then lab only the ones that look close.

