# System Mechanics

Character-agnostic. The stuff that took longest to learn and pays off everywhere.

---

## Frame data: what "safe" actually means

**Safe = they cannot land a _guaranteed_ punish.** It is NOT about i10 jabs specifically.

Threshold: **is my block disadvantage ≥ their fastest attack's impact?**

| My block frames | vs. their i10 | Result |
|---|---|---|
| -8 | i10 | I recover frame 8, they hit frame 10 → **I act first.** Safe. |
| -10 | i10 | Both act frame 10 → **they hit me.** Punishable. |
| -16 | i10 | Guaranteed punish, possibly a launch. |

Most characters' fastest is **i12**, not i10. The threshold moves per matchup.

### ⚠️ Safe ≠ neutral. -8 and -2 are NOT the same.

| | `-8` | `-2` |
|---|---|---|
| Guaranteed punish? | No | No |
| Whose turn? | **Theirs** | Effectively neither |
| Can I contest? | No — anything I press loses | **Yes** |

**Safe is binary. Advantage is a spectrum.** Read the actual number, don't bucket
moves into safe/unsafe.

### The three bands

| Range | Meaning |
|---|---|
| **-9 or better** | Safe. At -6+ I can contest. At 0+ it's my turn. |
| **-10 to -16** | Jab / fast-mid punishable. Costs 15–30. |
| **-17 or worse** | **Launch punishable.** Costs 40–70+. Never on purpose. |

### Reading an opponent's disadvantage at a glance
- Slower move → generally more negative.
- Big committed swings, long recovery animations → punishable.
- **Probe with a -2 move** (Xianghua `4K`) to map what's actually punishable safely.

---

## Frame data limitations 📊

The wiki has **14 fields**: `moveid, chara, cat, name, input, level, impact, damage,
block, hit, counter, burst, notes, stance`.

**NOT included:** pushback, range, tracking, recovery frames, hitboxes, move level
(light/medium/heavy).

Consequences:
- A move can be negative but **safe due to pushback** — invisible in the data. Must test.
- `hit=KND` / `LNC` / `STN` are **states, not frame values**. No advantage number exists.
- `level` column = **attack height** (H/M/L/SL/SM), *not* move level. Different property.

### ⚠️ The `stance` field is lossy
It holds one value. Moves usable in multiple stances get truncated.
Example: `SXS/PXS A+B` Great Wall is tagged `stance=SXS` only — but `cat` says
`Silent/PlayfulXiaSheng`. **Trust `cat` over `stance`.**

---

## Tech crouch / tech jump ✅

| Property | Dodges | Because |
|---|---|---|
| **Tech crouch** | **HIGHS** | Move briefly crouches |
| **Tech jump** | **LOWS** | Move briefly leaves the ground |

Crouching also **whiffs throws**. Tech crouch therefore beats highs *and* command grabs.

> There is no such thing as "ducking under a low."

---

## Attack heights

| Code | Meaning | Beaten by |
|---|---|---|
| H | High | Crouching, tech crouch |
| M | Mid | Must block standing (or step) |
| L | Low | Must block crouching |
| SL | Special low | Blockable standing OR crouching |
| SM | Special mid | Hits crouchers |

**Low throws only catch STANDING opponents.** A crouching opponent is immune, not blocking.

---

## Clashes 📊

When both players' **weapon** attacks impact on the *same frame*.

Clash value: **Light/Medium/Heavy horizontal = 1/2/3. Verticals +1.**

| Level | Horizontal | Vertical |
|---|---|---|
| Light | 1 | 2 |
| Medium | 2 | 3 |
| Heavy | 3 | 4 |

| Difference | Result |
|---|---|
| 0 | Both stagger. No advantage. |
| **1** | Higher value continues uninterrupted, opponent recoils → big advantage |
| **2+** | Higher value scores a **counter hit** |
| CE / Soul attack | Always wins (ties other CE/Soul) |

**If either move is a non-weapon attack (KICKS), both players get hit.** Clash rules don't apply.

Move level isn't in the data but can be **estimated from damage**:
> Lights 0–21 · Mediums 22–34 · Heavies 35+ — *"These rules are often broken."*
`burst` (guard damage) correlates too.

### ⚠️ Clash is narrow
Requires **same-frame impact**, both weapons. It's a tiebreaker, not a priority system.
Can't build a gameplan on it.

---

## Throws ✅

**Break by matching DIRECTION only:**

| Throw | Break with |
|---|---|
| Forward `A+G` / `B+G` | **Any** of `A` / `B` / `K` |
| Back `4A+G` | **`4` + any** of A/B/K |

There is **no A-vs-B matching**. (I had this right originally.)

- Back throws from stance often have **no distinct animation** — still `4`-breakable.
- Throws whiff entirely on crouching opponents.
- Command throws (Astaroth `2A+G` 45 dmg, `1A+G` 55) are a major damage source.

---

## Guard Impact 📊

- Input `6+G`. Parries everything **except Break Attacks and unblockables**.
- Parry window **frames 2–11**. Recovery **35 frames**. Total **46 frames**.
- Costs 10% guard stamina, restores 12% on success.
- **GI'ing an `A+B` Break Attack gives the ATTACKER a Lethal Hit.**

Post-GI advantage by move level: **Light +28 · Medium +16 · Heavy +8**

> **Not a wakeup option.** 10-frame window, 35-frame recovery. Use when a specific
> move is expected, at neutral.

---

## Reversal Edge 📊

- Input `B+G`. **6-frame startup** universal parry. Holdable.
- If parry is struck or held long enough → becomes a **+8 on block Break Attack**,
  big chip, lots of meter.
- **Blocks highs, mids, lows, AND throws.**
- ❌ **Break Attacks (blue lightning) and unblockables (red flames) go straight through.**

### The minigame

| Option | Beats | Notes |
|---|---|---|
| `A` | `K`, `8_2`, `4` | 33% guard dmg vs G |
| `B` | `A`, `4`, `6` | **50% guard dmg vs G** |
| `K` | `B`, `8_2`, `6` | 33% guard dmg vs G |
| `6` | `A` | loses to B/K; else ends RE |
| `8_2` | `B` | loses to A/K; else ends RE |
| `4` | `K` | loses to A/B; else ends RE |
| `G` | — | **→ round 2** vs A/B/K/G; else ends RE |

Same attack option by both → round 2.

### ⚠️ Round 2 massively favors the INITIATOR
- Initiator's `B` = **100% guard damage, instant break**
- **All initiator attacks become Lethal Hits**
- Initiator wins mirror-option ties
- Both pick `G` → opponent eats a **level 3 GI**

**Implication:** RE is not "even." Damage volume doesn't break it — `[BA]` does.

---

## Knockdowns & Ukemi 📊

### Grounded options
Get up with guard · roll sideways · roll toward · roll away · ukemi

- Forward/back roll → returns to standing, **vulnerable to ground hits the whole animation**
- **Side roll keeps you downed** — evades certain verticals used for oki

### Ukemi (= "teching")
Press **`G` + direction.**

| Ukemi | Recovery | Trade-off |
|---|---|---|
| `6G` forward | **Fastest** | Worst evasion — moves toward them |
| `4G` back | +5 frames | Creates distance |
| `2G`/`8G` side | +10 frames | Best evasion, slowest |

**All ukemi share a 5-frame vulnerability to every non-high attack.**
→ RE's parry starts frame 6, so **RE cannot cover that gap.** A meaty beats it regardless.

### Why this matters most
Advantage on knockdown is **set by the defender**. Always holding G = the opponent
needs zero reads. Mixing options is the entire point; picking "correctly" is secondary.

Xianghua, Kilik, and Taki are the only characters with **while-downed attacks**.

---

## Guard Gauge / Guard Crush 📊

- Heavy moves drain more. `burst` field = guard damage.
- **Break Attacks `[BA]`** (blue lightning) — break guard, break RE and GI,
  and leave you plus on block. The main guard-pressure tool.
- Heavy attacks can all guard crush; some mediums can.
- Counter it: 8-way run to dodge, RE, Soul Charge, or just interrupt with something faster.

---

## Sidestep ✅

- **Tap the direction, don't hold.** Holding = 8-way run → jump → death.
- Loses to horizontals (by design).
- Best used **at midrange as an approach**, and to **whiff-punish**.
- In RE: `8`/`2` dodges `B`, `6` dodges `A`, `4` dodges `K`.

---

## Soul Gauge 📊

- **Critical Edge** `A+B+K` — 1 bar. Block punish, whiff punish, combo ender. NOT reversal-safe.
- **Soul Charge** `4A+B+K` — **i6, invincible from frame 4**, 0 on block, +8 on hit.
  Universal across the cast.
- Best used around **50% health to interrupt pressure**, not as a desperation button at 20%.
- Meter is gained from: forward 8-way run, landing/whiffing/being hit by attacks,
  throwing, breaking throws, getting thrown, Lethal Hits, just inputs, RE parries and landings.
- **Losing a round that puts the opponent on match point grants a full bar.**

---

## Lethal Hits 📊

Conditional big-reward hits. Conditions are **not in the movelist data** — only the `[LH]`
tag. Conditions live on strategy pages / in-game.

Known conditions collected so far (Xianghua):
- `1A` — on an opponent **side rolling**
- `SXS/PXS A+B` — counter hit or **whiff-punishing a Reversal Edge**
- `SXS A+B6` — on a **whiffed GI**
- `A+B` — on **impact counter**
- `FC 3K` — on a **jumping** opponent
- `SXS K` — on **whiffed highs**
- Auto-GI moves (`4A+B`, `2A+B`, `6A+B`) — on successful GI
- `RE AA` — on hit in RE **round 2 as the initiator**

---

## Armor 📊

Absorbs hits, reduces damage 50%. **Does not work vs. lows or moves dealing 22+ damage.**

- Astaroth / Haohmaru / Voldo: absorbs 1 hit (Astaroth up to 35 dmg)
- Nightmare / Mitsurugi / Hwang / Tira: absorb 1, then auto-GI everything after

Highest armor presence: **Nightmare, Astaroth.**

### Revenge details 📚 (Dustloop System Data, added 2026-10-24)

- Absorbs **one** H / M / **SM / SL** hit, threshold 0–21 dmg (0–35 Nightmare CE, Astaroth). Absorbed hit = 50% dmg.
- **Passes through:** true lows, throws, **Break Attacks**, Unblockables. ⚠️ **Attack throws can be absorbed.**
- Nightmare: absorb → move with **auto-GI**. Most aGI ignores **kick animations** ❓.
- Fast-recovering hit into armor → can still block the follow-up ("safejab"). Max recovery per move: `Nightmare/counter-matchup.md` §1.
- Crouch **state** from frame 1; FC move list only from frame **7** → iFC moves ≈ +6f.

---

## Abare 📊

Attacking while at minus frames. Legitimate in SC6 because GI/evasion make it risky
for the advantaged player to press. Tech-crouch/tech-jump moves are especially good
for interrupting mixups.

## Input notation — physical execution

| Written | Physical motion |
|---|---|
| `AB` | press A, then press B (sequential, normal) |
| `A+B` | press A and B **simultaneously** |
| `A(A)` | press A, **hold** the second A |
| `aK` | **tap A, then SLIDE the thumb to K within 1-2 frames** |
| `k6` | **tap K, then SLIDE the stick to 6 within 1-2 frames** |

**Lowercase = slide input.** It is an *execution* requirement, not a timing variant.
On a pad the thumb physically travels between buttons — this is why `A+K`-style
simultaneous presses on opposite diagonals are awkward and may need a rebind.

⚠️ **A failed slide gives you a different move**, not a whiff:
- failed `aK` -> `A` (i10 high)
- failed `k6` -> `K` (i12 high, -8)
- failed `1kA` -> `1K` (i24 low, -16)

Drill the slide entry in isolation before drilling the full string.

## 📚 Dustloop System Data — unverified extras (2026-10-14)

> User page, author says "may be wildly inaccurate". Source + use: `99-data-sources.md`. Nothing here is ✅.

| Topic | Claim | Affects |
|---|---|---|
| Throw heights | Universal `A+G` / `4A+G` = **High** (crouch avoids). **Mid** throws hit crouchers (Nightmare `236A+G`). **Low** throws can be crouch-guarded | Q40 — crouch block is not a universal throw answer |
| Unbreakable throws | Nightmare `236A+G`, Ivy `376231A+G` | Don't practise breaking them |
| GI advantage | 2f startup, 10 active. After GI'ing a strong attack +8, medium +16, weak +28 | GI follow-up choice |
| Resist Impact | `6+B+G`, 60 gauge; beats BA / UA / charged RE | Q21 |
| Sidestep gaps | 8f gaps usually steppable; 6f only with the right direction; 4f rarely | Stepping strings |
| `2G` | Full-crouch moves from frame 7; WR moves for 8 frames after release | FC/WR access |
| Counter hits | Attack CH +20%, back-run +20%, side-run +5–10%, air ~+45% | `08-damage-model.md` §1b |
| Lethal Hit | Ignores scaling and CH multipliers; 2nd LH in one combo = 75% | Combo damage |
