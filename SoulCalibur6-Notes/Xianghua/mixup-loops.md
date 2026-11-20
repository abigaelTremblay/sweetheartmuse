# Guard-Breaking Mixup Loops (Xianghua)

**Purpose:** beat an opponent who holds a guard and never switches it.

---

## 0. ⚠️ THE NOOB TRAP — `SL` is not a low

| Level | Stand guard | Crouch guard |
|---|---|---|
| `H` high | **blocked** | **whiffs entirely** |
| `M` mid | **blocked** | ⭐ **HITS** |
| `L` **true low** | ⭐ **HITS** | **blocked** |
| **`SL` special low** | ❌ **BLOCKED** | **blocked** |
| **`SM` special mid** | ❌ **BLOCKED** | **blocked** |
| **`TH` throw** | ⭐ **PIERCES** | ❌ **whiffs** |

> ⚠️⚠️ **`2A` is `SL`, not `L`.** It is **blockable standing or crouching**, so it
> **never beats a guard at all.** I had it listed as the "chip low" in the
> gameplan — wrong. It's a **poke that punishes people who aren't blocking**,
> and an i12 interrupt. It is **not** part of any mixup.
>
> Xianghua's other `SL`s: `FC 2A`, `BT 2A`. Her only `SM`: `2B+K` (the quake).

### The real triangle

```
        THEY STAND GUARD          THEY CROUCH GUARD
              │                          │
      true L  ✅  hits            true L  ❌ blocked
      throw   ✅  hits            throw   ❌ WHIFFS (punishable)
      mid     ❌  blocked         mid     ✅ HITS
      high    ❌  blocked         high    ❌ whiffs
```

**Two keys vs standing: TRUE LOWS and THROWS. One key vs crouching: MIDS.**
⚠️ **Crouch block ducked the standing throws tested** (Q19/Q40). Low/command throws are **not checked**. Mids are the reliable answer.

---

## 1. ⭐ `BBK` — the self-covering string

> ✅ **Q33 (2026-10-14):** vs a **standing** block of `BB`, the `K` low still lands. But the
> **whole `BBK` can be sidestepped** (📚 Jacky15x agrees, and says `BBB` too).
> Self-covering vs a **fixed guard** only — a step beats it. See [`community-guides.md`](community-guides.md).

```
BBK  =  M , M , L      i20 · -8 blk · +4 hit
```

| They hold | Result |
|---|---|
| **Stand guard** | mids blocked → ⭐ **the LOW hits** → **+4** |
| **Crouch guard** | ⭐ **the MIDS hit** → combo |

**It beats both guard states on its own.** To block it entirely they must
**stand-block the two mids, then switch to crouch-block for the low** — a
mid-string guard switch. That's the *only* defence, and it's a knowledge check.

> This is why `BBK` > `6AA` as a mixup: `6AA`'s high **whiffs** on a croucher and
> the string dies. `BBK`'s mids **hit** a croucher.

---

## 2. True lows that leave me PLUS (neutral only)

| Move | Level | i | Blk | **Hit** | |
|---|---|---|---|---|---|
| `4BB` | H,**L** | **12** | -12 | **+2** | Fastest true low. Risky |
| `6AA` | H,**L** | **14** | -8 | **+4** | ⚠️ high **whiffs** on crouchers |
| ⭐ **`BBK`** | M,M,**L** | 20 | -8 | **+4** | ⭐ **self-covering** |
| `3AK` | **L**,H | 22 | **-2** | KND | Frame trap — see below |
| `1K` | **L** | 24 | -16 | +2 | |
| `1A` | **L** | 28 | -16 | **+4** | `[LH]` vs side-rollers |
| `44KK` | **L**,M,M | 38 | **-6** | **+6** | Slow, but safe **and** self-covering |

## 3. Mids for when they start crouching

| Move | i | Blk | Hit | |
|---|---|---|---|---|
| ⭐ **`9KK`** | 18 | **+2** | **STN** | **Plus on block.** Best anti-crouch |
| `66B` | 20 | **-2** | **+6** | Safe, advancing |
| `BBB` | 14 | **-6** | **+4** | Fastest |
| `6BB` | 18 | -6 | **KND** | Ends the turn with oki |

## 4. Throws (standing guard only)

| Throw | i | Dmg | Hit |
|---|---|---|---|
| `A+G` | 18 | **50** | — |
| `SXS/PXS A+G` | 18 | 25 | ⭐ **+14** |

---

## 5. ⭐ THE LOOP

**Engine: land any plus-on-hit low → you are at +4 → everything is unreactable.**

> **Effective startup = impact − my advantage.** Beginner reaction ≈ 20–25 frames.
> **Under ~16 they cannot react. They must guess.**

```
                    ┌──────────── +4 ────────────┐
                    │                            │
            ╔═══════▼════════╗                   │
            ║  6AA  or  BBK  ║  low hits         │
            ╚═══════╤════════╝                   │
                    │ +4                         │
      ┌─────────────┼─────────────┬──────────────┤
      │             │             │              │
   BBK i20       BBB i14      BB(B)→A+G      3AK i22
   eff 16        eff 10        eff 14        eff 18
   M,M,L          MIDS          THROW         L,H
      │             │             │              │
 beats BOTH    beats crouch   beats stand      KND
      │             │             │              │
      └─────────────┴─────────────┘         ► oki, reset
                    │
                  back to +4
```

### Effective startup at +4

| Follow-up | i | **Effective** | Reactable? |
|---|---|---|---|
| `4BB` | 12 | **8** | ❌ no |
| `BBB` / `6AA` | 14 | **10** | ❌ no |
| `BB(B)` → throw | 18 | **14** | ❌ no |
| `BBK` | 20 | **16** | ❌ barely |
| `3AK` | 22 | **18** | ⚠️ marginal |

### The two-string version (simplest to run)

```
BBK  ⇄  BBB
 ↑ M,M,L     ↑ M,M,M,M
 both start with the SAME two mids (BB)
```

⭐ **`BB` is a genuine 50/50 they cannot see coming.** Identical animation for the
first two hits, then either a **low** (`BBK`) or **more mids** (`BBB`).
Add `BB(B)` → `SXS A+G` as a third branch off the *same* opener and it's a **three-way
off one animation**. This is the strongest guard-breaking tool in the kit.

---

## 6. ⚠️ `3AK` is a FRAME TRAP, not a guaranteed string

✅ **Confirmed reasoning:**
- `3A` (the low) on hit = **−2**.
- So the `K` is **NOT guaranteed** — at −2 their guard is back up, and the `K` is a
  **HIGH** they can block *or duck*.
- Blocked `3AK` = **−2**. Safe, but the turn is over.

**Its actual value:** if they press a button at −2 they eat a **counter hit → KND**.
So `3AK` is a **frame trap that punishes impatience**, not a mixup string.
Use it to end a sequence and take the knockdown, not to continue pressure.

---

## 7. How they beat this (so I know what I'm looking for)

| Their defence | My answer |
|---|---|
| Pure stand guard | `BBK` low, or `A+G` throw (**50**) |
| Pure crouch guard | `9KK` (+2 blk), `BBB`, `66B`. **Throws whiff — stop throwing** |
| Guard-switching mid-string | They've solved `BBK`. Go to `BB(B)` → throw |
| Ducking my highs | ⚠️ **`6AA` and `4BB` die here** — their first hit is a HIGH |
| Interrupting at −8 | They need i8. Nothing has it. **`BBK`/`6AA` are safe in practice** |

---

## ❓ Lab questions → tracked as **Q33–Q35** in `../05-practice-queue.md`

---

# 8. ⭐ OTHER SELF-COVERING NODES — rotate these so `BB` isn't a tell

`BBK`/`BBB`/`BB(B)` is a three-way off **one** animation. Good, but it's still
**one** read: *"she pressed BB."* Real variety needs **different openers.**

Every node below is a **mid-or-low branch off a shared animation.**

### ⭐⭐ `66AB` — the best alternative (i16)

```
66A ─ 66AB   (i16 · -8 blk · +6 hit)     ← already +6, a real loop node
        ├── 66ABB   H,M,L   -12 · +4 · KND on CH   ← LOW
        └── 66ABA   H,M,M   -10 · KND              ← MID, knockdown
```

Both branches are strong; the low is **+4** (loops) and the mid is a **knockdown**.
Opener is a **dash-in**, so it reads nothing like `BB`.
⚠️ `66A` is a **HIGH** → the whole string **whiffs on a croucher.** Use it
*because* they're standing.

### ⭐ `6B` — nearly free, you already use it (i18)

```
6B ──┬── 6BB   M      -6  · KND    ← "midrange chase", already in the gameplan
     ├── 6BA   M,L    -10 · -2     ← ⭐ A LOW. Same opening animation
     └── 6B2   → PXS  -16 · -6     ← the whiff-punish route
```

**`6BB` is already a habit, so `6BA` costs nothing to add** — identical first hit.
⚠️ `6BA` is **−2 on hit**, so it does **not** loop. It's a threat that makes
`6BB` scarier, not a pressure continuer.

### `aK` — slide input (i22)

```
aK  (M,M · -8 · STN on CH)
     ├── aKB   M,M,L   -14 · KND   ⭐ 50 dmg LOW knockdown
     └── aKK   M,M,M   -12 · +4    MID
```

Same self-covering shape as `BBK` with a totally different animation.
⚠️ **Slide input** — a failed slide gives plain `A`.

### `4B` — fastest node in the kit (i12)

```
4B  (H · -8 · +4)
     ├── 4BB   H,L   -12 · +2   ← LOW
     └── 4BA   H,M   -10 · +4   ← MID
```

**i12** — nothing else is close. ⚠️ High opener → **whiffs on crouchers.**
A *standing-guard-only* tool, which is exactly this section's premise.

### `1kA` (i28) and `44K` (i38) — slow, for variety only

| Node | Branches |
|---|---|
| `1kAA` (-8, **+4**) | `1kAAB` **M,M,M,L** -18 KND **69 dmg** · `1kAAK` M,M,M,M -16 |
| `44K` (i38) | `44KK` **L,M,M** **-6** **+6** ⭐safe · `44K2K` **L,L** -16 KND *(double low!)* |

---

# 9. ⭐ vs NIGHTMARE — she is SLOW. Exploit it.

| Her fastest | |
|---|---|
| `3K` **i14** mid | her fastest strike |
| `K` i14 high | |
| **`A` i16** | ⚠️ **her jab is i16** — six frames slower than mine |
| `236A+G` i12 | a **throw** — crouch blocking beats it |

> ⭐ **Anything −13 or better is SAFE against Nightmare.**
> Moves I treat as risky are free here:

| Move | Blk | vs Nightmare |
|---|---|---|
| `66ABB` | −12 | ✅ **SAFE** |
| `4BB` | −12 | ✅ **SAFE** |
| `aKK` | −12 | ✅ **SAFE** |
| `6BA` | −10 | ✅ SAFE |
| `BBK` | −8 | ✅ SAFE |
| `aKB` | −14 | ⚠️ punished by `3K` **exactly** |
| `1kAAB` | −18 | ❌ punishable |

**Practical consequence:** vs her I can run `66ABB` and `4BB` freely, which are
**not** safe options against the wider cast. Build the Nightmare gameplan around
the i16 jab — she cannot contest my +4 with anything.

---

# 10. Rotation plan — four openers, same two questions

| Opener | i | Low branch | Mid branch |
|---|---|---|---|
| **`BB`** | 14 | `BBK` **+4** | `BBB` +4 / `BB(B)`→throw |
| ⭐ **`66AB`** | 16 | `66ABB` **+4** | `66ABA` **KND** |
| **`6B`** | 18 | `6BA` −2 | `6BB` **KND** |
| **`aK`** | 22 | `aKB` **KND** | `aKK` +4 |

**Every row asks the same question — "low or mid?" — with a different animation.**
She has to solve it four times instead of once, and the two that **loop**
(`BB`, `66AB`) can be chained into each other at +4.

> **Priority:** add **`66AB`** first (best branches, fast, dash opener), then
> **`6BA`** (free — `6BB` is already a habit).

## ❓ Lab questions

**All tracked as Q33–Q40 in `../05-practice-queue.md`** — that file has the running
order. Listed here for context:

| Q | Question | § |
|---|---|---|
| **33** | Is `BBK`'s low guaranteed after the mids are blocked? | §1 |
| **34** | Same for `66ABB` after a blocked `66AB`? | §8 |
| **35** | Same for `6AA` after the high is blocked? | §2 |
| **36** | ⚠️ Does `BB` at +4 beat Nightmare's i16 jab? **The loop premise.** | §5 |
| **37** | ⚠️⚠️ Is a string's `impact` the **first** hit or the **branch** hit? `BB`=14, `BBK`=20 | §5, §10 |
| **38** | Does `66ABA` (KND) confirm from `66AB` on hit? | §8 |
| **39** | Does `44KK` (−6 / +6) work as a 5th opener? | §8 |
| **40** | Does crouch block beat Nightmare's `236A+G` (i12 command throw)? | §9 |

> ⚠️ **Q37 gates everything in §5 and §10.** If `impact` is the branch hit rather
> than the first hit, every "effective startup" number in this file is wrong.
