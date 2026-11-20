# Dismissed / Resolved

So I don't re-litigate these.

---

## ❌ Rejected

### Xianghua auto-GI moves (`6A+B`, `4A+B`, `2A+B`)
The strategy guide recommends them for Lethal Hits. **It states the reward, not the risk.**

`6A+B`: i22, **-16 on block**, GI window only **frames 4–12** (8 frames), vs. vertical H/M only.
Three stacked reads for a launch-punishable failure.

**Exception:** `SXS B+K` → BHH has a 17-frame window (12–28) and is a *stance transition*,
not a committed attack. `2A+B` is situationally OK vs. lows.

### Xianghua `2K` Woan Shyong Nibble
i16, **-14 on block, -4 on hit.** Negative even when it works. Use `2A` (-6, +6) or `6AA`.

### Xianghua `1A` as a regular low
i28 is far too slow to use on purpose. **Keep only** as the side-roll Lethal Hit punish.

### ~~Ivy `AA`~~ — ♻️ REINSTATED 2026-10-15
~~`AK` is strictly better: same i12, same damage, second hit is a **MID**, -8 vs -12, +6 vs +2.~~
✅ `AA`'s 2nd hit is a **LH vs sidestep** (📊 `[LH]` was in the data all along). `AK` stays the punish; `AA` is the anti-step. See `Ivy/gameplan.md`.

### Ivy `22A`/`88A` Wolf Lash (Reddit's anti-step rec)
**HIGH**, i26, -12, **0 on hit.** Duckable, slow, no reward. Use `66A` or `4A`.
> ♻️ 2026-11-20: back on the explore list (Q82) **only** for its LH when hitting from behind (after they whiff) — not as an anti-step.

### Ivy combos tried vs Nightmare (2026-11-20) ✅
- `B+K` LH > `G` > `6B[A] > SE [K] > SE B×3` — the BT `G` cancel leaves too little airtime. **Use `3B` instead.**
- `9BBB > 8A+B[B]` (~92) — i42, he blocks unless I'm instant. Inconsistent.
- `22[B] > SE 6B > 214[B] > SE B×3` after a sidestep — not a combo, `SE 6B` whiffs.
- `8B+K` vs Soul Wave — too long-ranged; `2A+G`/`3A+G` cover those ranges.

### Rebinding Ivy's `A+B` off the left trigger
`A+B` Revelation: i38, **+10 on block**, KND, `[BA]`, `[LH]`. Don't give it up.
(The "A+K" that prompted this **doesn't exist** — it was just `A`.)

### GI as a wakeup option
10-frame parry window, **35-frame recovery**, costs 10% stamina, and GI'ing an `A+B`
Break Attack gives the **attacker** a Lethal Hit. RE covers the same need with a
far better failure mode.

### Xianghua `WD A+B` "Crybaby"
Meme. Immobile, tiny damage, -30 on block, -20 on hit. Never.

### Hilde and Seong Mi-na as secondary picks
Both were the friend's recommendations; both scored **worst** on beginner metrics.
Seong Mi-na: 7 fast-safe moves, fastest non-jab i18, 13 range-dependent moves.
Hilde: 9 fast-safe, 30-second charge management.

---

## ✅ Resolved disputes

### `k6` vs `4K` — I was right, coach was wrong
Coach recommended replacing `k6` (i14, -16, 24 dmg, KND) with `4K` (i16, -2, 16 dmg, KND).

**Correct answer:** `k6` for punishing (its -16 is irrelevant when they're in recovery),
`4K` for "I'm not sure this is punishable." Different tools.

### Throw breaks are DIRECTION-only — I was right
Coach initially said forward = `A`, back = `B`. **Wrong.**
Forward `A+G` breaks with **any** of A/B/K. Back `4A+G` breaks with **`4` + any**.

### Tech crouch / tech jump — coach had it backwards
Tech **crouch** dodges **HIGHS**. Tech **jump** dodges **LOWS**.
"Ducking under lows" is incoherent.

### `KB` and `3KB` are stance moves — coach missed the `stance` field
Coach recommended `KB` as an "i12 standing punish" (it's **`WR KB`, -14**) and
`3KB` as "most undervalued, +10" (it's **`FC 3KB`**).
Root cause: the parser dropped the `stance` field. **Now fixed.**

### ✅ The `stance` field is lossy — the strategy guide was right
Guide said PXS can do `A+B`; it wasn't showing in the filtered data.
`cat=Silent/PlayfulXiaSheng` means **both** stances, but `stance` holds only one value
and recorded `SXS`. **Trust `cat`.**

Knock-on: **PXS is a superset of SXS** (18 moves vs 13), including a low and
`PXS BB` (57 dmg launcher).

### RE is not broken by damage volume
It's broken by **`[BA]` Break Attacks and unblockables**. Damage/hit-count is irrelevant.
This is why panic-RE loses to Nightmare.

### `FC 3K` only launches on COUNTER hit
Normal hit is +6. Explains the perceived inconsistency.

### "Enter PXS on hit only" — coach's rule was WRONG
Coach said `3A2` (-15) and `6B2` (-16) are jab-punishable so should only be used on hit.

**Lab result: they're safe on block vs HIGHS.** `3A` is a crouching attack, `6B` lowers
Xianghua to the ground, and the `2` input drops her further — **she never rises.**
The opponent's high whiffs completely. Even Xianghua's own i10 `A` whiffs.

**Low-profiling is not in the frame data at all.** Caveat: still loses to **i14 mids**.
It's a read, not blanket safety.

### `3B+KK` as "the" bread and butter — overstated
It does more damage (73 vs 58) but **drops at max range** and pushes the opponent far away.
**`6KA` is the default** (guaranteed, keeps pressure). `3B+KK` is the *positional* choice:
ring outs, wall carry, reclaiming space.

### Pushback is NOT in the frame data
Neither is range, tracking, recovery, or hitboxes. A move can be negative but safe
via pushback — **must be tested in game.**
Range-dependent moves (from `notes` prose): Seong Mi-na 13 · Ivy 7 · Nightmare 3 · **Xianghua 2**.

### "Safe = anything -9 or better" — incomplete
That's only true vs. an i10 jab. Most characters' fastest is i12, so it varies per matchup.
And **-8 vs -2 are completely different situations** even though both are "safe."

---

## 🤔 Judgement calls

### Would Xianghua have been recommended as a first character?
Ranked **3rd** for a cold beginner (Sophitia 1st).
Her buttons are beginner-viable — tied with Sophitia at **25 fast-safe moves**.
Her *failure mode* is catastrophic: **41 SS cancels** (vs Sophitia's 2) and mistake
states as bad as **-38** and **-46**, accidentally triggerable.

**Conclusion: the friend's pick was better than mine would have been**, given how
well it was risen to.

### One agent for both characters, or two?
**One.** Half the value is cross-character: Ivy's zoning sharpened Xianghua's spacing;
Geralt notes apply to both; throw-breaking, systems, and the matchup map are
character-agnostic. If it gets unwieldy, split by **topic**, not character.

### `RE KB+K` → Hou Lee
`HL (B)` Lower Great Wall: i56, **+8 on block**, 55 dmg, `[BA]`. Strong numbers,
but i56 only lands on someone who's stopped defending. **Niche. Low priority.**

### `PXS BB` as a guard crusher — DISPROVED (lab, all-block dummy)
I floated that the 2nd hit might be a heavy that breaks guard, reasoning from
damage (57 total - 18 = 39; heavies are 35+). **The all-block dummy blocks both hits.**

The `burst=2` field was telling the truth and I talked myself past it.
**Lesson: when a direct field contradicts my inference from derived numbers,
the field wins.** Damage-to-move-level is a heuristic, not a rule.

`PXS BB` is a natural combo — hit 2 guaranteed only after hit 1 *hits*.
On block it is a -14 mid string. Hit-confirm tool, not pressure.

### `6K(B)` as a safe SXS entry — RETRACTED (SC-only)
I pitched `6K(B)` (-4 blk / +10 hit) as a better stance entry than `6B2` (-16).
It is `cat=GaugeAttacks, stance=SC` — **Soul Charge only**. So are `6KB` and `6KBB`.
`6K+G` is an **SXS throw**, not a `6K` follow-up.
**`6B2` remains the ONLY neutral PXS entry. The -16 is unavoidable.**

### `66KAA` as a gap closer — RETRACTED (SC-only)
Pitched as i14 / -8 blk / tech crouch + tech jump. The entire `66K` tree is
SC-gated except the bare `66K` (i14, -8 blk, +4 hit).

### ROOT CAUSE (3rd occurrence)
Same error as `WR KB` and `6AK`: I analysed on `input` alone.
**`input` is never sufficient. Filter `cat` + `stance` FIRST, always.**
Standing fact: **116 of 220 moves are neutral-accessible.** Any raw 220 count
(including my own earlier character-scoring) overstates the real toolkit by ~2x.

### "`6B2` is the only neutral PXS entry" — RETRACTED
There are four: `A+B2`, `9KK2` (-5/STN), `3A2` (-15), `6B2` (-16).
`6B2` is the **worst** of them by frames. It earns its place only as the
**whiff-punish** setup (low-profile -> `PXS K` LH), not as general stance access.

### `66(B)` — I dropped a real move
User listed `66[B]` -> SXS. My prefix matching folded it into `66B(B)` (the Break
Attack) and it disappeared. It exists: `cat=RunAttacks`, -21 blk / -9 hit, SS into SXS.
**Cause: `66(B)` (hold from dash) and `66B(B)` (66B then hold) are different moves.**

### ROOT CAUSE #2 — `+` is not a follow-up
`StartsWith()` prefix matching treats `66B+K` as a child of `66B`. It is a
**sibling** — both branch from `66`. Inflated every branch count and hid the real
sibling set. **Tokenize inputs; never raw prefix-match.**

### "SS cancels" as a sidestep metric — WRONG
When scoring characters I counted `[SS]` in the notes field and called it
"sidestep cancels" (Xianghua 41, Sophitia 2, 2B 36, Seong Mi-na 7).

**`SS` = Special Stance.** Official glossary: *"an attack that transitions to a stance."*
Those numbers count **stance transitions**, not sidesteps. The comparison was still
directionally meaningful (Xianghua really is stance-dense) but the **label was wrong**
and Sophitia's "2" meant *2 stance entries*, not *poor mobility*.

Character-selection scores in `04-matchups.md` carry this error. Frame data has
**no sidestep metric at all**.

### "RE is broken by damage volume" — now officially confirmed FALSE
Glossary: Break Attacks are *"unable to be countered by Guard Impact or Reversal Edge."*
It is **BA and UA**, not hit count or damage. Matches what I said earlier; now sourced.

### `cat=GaugeAttacks` == "Soul Charge only" — WRONG
It only means **costs meter**. Building Ivy's file exposed it:
`4A+B+K` is named **"Soul Charge"** — it obviously cannot *require* Soul Charge.
`236A+B+K` is the **Critical Edge**. Both are **neutral-usable**.

Only `stance=SC` moves need the Soul Charge *state*. The wiki tags Xianghua's
CE/SC entries `stance=SC` anyway, so that field is unreliable for gauge moves.
**Now labelled `METER` in both frame-data files.**

### Ivy session-1 claims — resolved against data
- `8B+K` is **not** a blockable long-range grab. It is a **[BA]**, i28, **+10 on block**, TC[9-14].
- `66(A)` is **-4 on HIT** — negative even when it connects.
- ~~Low throws do **not** catch crouchers; crouch block evades **all** throws.~~ → ✅ 2026-10-15: `2A+G`/`3A+G` **do** catch crouchers (low attack → animation); crouch **block** blocks them.

---

## Error 16 — "Sidestep the RE, then `SXS/PXS A+B`"

**Claimed:** the RE sidestep practice feeds the `SXS/PXS A+B` Lethal Hit.

**Wrong.** A sidestep returns Xianghua to **default standing**. There is no
neutral input into SXS or PXS — the stance is only reachable as a **branch off a
move already in progress**. Sidestepping and entering stance are mutually
exclusive routes.

**Root cause:** I treated "stance move" as an option available whenever the
*situation* called for it, ignoring that **reachability is a property of the
move tree, not of the situation.** Same error class as Errors 5/10/11/15 —
reasoning about a move without checking its precondition.

**Rule:** before recommending any `SXS`/`PXS`/`SE`/`SL` move as an answer to a
situation, state **which specific neutral move branches into that stance**, and
confirm that move is plausibly already in progress at that moment.

**Consequence:** the value of a stance Lethal Hit is **proportional to how much
of my neutral carries a stance branch.** Currently only `9KK2` does, so
sidestep → `3B` remains the real RE answer.

---

## Error 17 — Every combo total in my notes was inflated ~20%

**Claimed:** `3B`→`3B+KK` = 73 · `3B`→`6KA` = 58 · the `6B2` route = 90.
**Measured in-game:** **57 · 47 · 76.**

**Root cause:** I summed the wiki's per-hit `damage` field. That field is the
**unscaled** value. Combo scaling reduces every hit after the first, so **any sum
of listed damage is an upper bound that never occurs in play.**

**Rule:** never state a combo total from summed wiki values. Either read the
in-game counter or label the number **"listed, unscaled."**

**Consequence:** the *ordering* also changed. `3B+KK` (57) now **beats** `6KA` (47)
off a raw `3B` — I had it as the risky/positional option. But inside the `6B2`
route it **loses** (51 vs 58) because the LH launch height makes the final `K`
whiff. **Ender choice is route-specific, not global** — I had been reasoning about
enders as if they had a fixed value.

---

## Error 18 — "`WR B` is the wakeup attack"

**Wrong.** Lab: attacking off the ground is **slower than every other wakeup
option and leaves me open longer.** Ranked 5th of 5.

**Root cause:** I compared `WR B` only against `WR K` (the other *attack*), never
against not-attacking. I picked the best move inside a category I hadn't
justified entering.

**Correction:** `G`→`RE` is best; `G`→`6G` (GI) is second and cheaper than it
looks, **because standing up already requires `G`.** `WR B` remains correct once
already crouching (e.g. `BBK` **on hit**) — just not as a wakeup.

---

## Error 19 — Frame data cannot express charge time

`66B[B]` is **+6 on block, 52 dmg** — I called it "the best node in the `66B` tree."
Lab: the **charge is slow enough to lose to an i10 jab** outright, so the on-block
value is often never reached.

**Root cause:** the 14 fields have **no charge-duration or total-duration field.**
`impact` is startup of the *uncharged* version. I treated a held move's frame data
as if it described the held version.

**Correction:** `66BB` and `66B[B]` are a **mixup**, not a ranking. Neither is better.

**Generalise:** for any `(X)` hold move, the listed `impact` may not describe what
I'm actually pressing. Charge moves must be lab-timed.

---

## Error 20 — "`A(A)` and `BB(B)` are interchangeable SXS entries"

Both list i10-14, **-6 blk / +4 hit** → I treated them as equivalent, preferring
`A(A)` for speed.

**Lab:** off `BB(B)`, `SXS K` **beats** an i10 `AA` and `SXS A+G` **grabs before**
an i14 `BB`. Off `A(A)`, the same follow-ups only **trade**. `BB(B)` behaves as if
it gives ~1 more frame of advantage.

**And vs a Reversal Edge:** `BB(B)`→`SXS A+B` **works**, `A(A)`→`SXS A+B` **arrives
too early** and gets tracked and blocked.

**Root cause:** identical listed frames ≠ identical hitstun/timing. The `+4` field
does not capture whatever differs here.

**Correction:** **`BB(B)` is the contest-a-button stance entry. `A(A)` is the cheap
one.** Not interchangeable. → open question Q25.

---

## Error 21 — `2A` listed as the "chip low"

`2A` is level **`SL` (Special Low)**, which the glossary defines as
**"blockable standing or crouching."** It therefore **never beats a guard** and
is **not a mixup tool at all.** I had it in the Neutral table as the chip low,
implying it pressured a standing opponent. It does not.

**Root cause:** I read the `level` field as a three-value set (H/M/L) and treated
`SL` as a flavour of `L`. It is a **separate category with opposite properties** —
an `L` beats standing guard, an `SL` loses to it.

**Correction:** `2A` is a **poke** — i12 interrupt, +6 on hit vs someone who
isn't blocking. Real lows are `4BB`, `6AA`, `BBK`, `3AK`, `1K`, `1A`, `44KK`.
Also affects `FC 2A`, `BT 2A` (`SL`) and `2B+K` (`SM`).

---

## Error 22 — `SXS/PXS A+G` is i18, not i14

Observed in lab as beating an i14 `BB` "at i14." The throw is **i18**.
It wins because `BB(B)` leaves **+4**, so its *effective* startup is 18−4 = **14**.

**Lesson:** raw impact and effective impact are different numbers. **Effective
startup = impact − advantage**, and that is the number that decides who wins.
Frame data lists only the raw value.

**Also:** `SXS/PXS A` is a **HIGH** (i18, −2, +8). `PXS A` is a **LOW** (i18, −18,
−2). Two different moves — the `B` overloading problem again, now on `A`.
