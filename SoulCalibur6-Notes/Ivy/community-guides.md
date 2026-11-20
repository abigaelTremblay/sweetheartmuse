# Ivy — Community guide 📚

> 📚 **Everything in this file is third-party**, not my lab. ✅ = my lab, which wins on conflict (both kept).
> **Source:** "Ivy SC6 combo sheet" (Google Sheet), managed by **Lupin (skeiider#4434)** and **NGEN (Storia#9224)**, Ivy Discord https://discord.gg/5S9Xjwr
> https://docs.google.com/spreadsheets/d/1gkXY-mPcyii1dlHCUhGCWZgIpAdFQzhToIPwXZv4YkE/edit?gid=1094344092
> Changelog: published 2019-12-03 · 2.02 2019-12-20 · 2020-01-31 · **2.10 2020-04-06** (last). Fetched 2026-10-15.
> Tabs marked "(old)" (pre-2.10) were skipped. Tables below are **generated verbatim** from the current tabs; only the `↳` (same starter as above) and video links are formatting.

---

## Sheet notation

| Sheet | Means |
|---|---|
| `>` | next move in the combo |
| `:` | justframe / exact input — in `SE B:B:B:B:B` each `B` is timed |
| `[ ]` | hold |
| `iWR` / `iFC` | instant While Rising / Full Crouch (straight out of the previous move's recovery) |
| `RCC` | Recovery Crouch Cancel |
| `iCS` / `iSS` | instant (fastest-input) Calamity Symphony / Summon Suffering — more damage |
| `22_88A` | `22A` **or** `88A` |
| `RE1` / `RE2` | win in the **1st / 2nd** round of the Reversal Edge clash (RE2 wins are LH in the sheet) |
| `RE 2` / `RE 6` / `RE 8` | winning the RE clash **with a movement** (direction) instead of a button |
| `RO` / `W!` / `RRO` | ring out / wall splat / (rear?) ring out |
| `SA` | Soul Attack `236A+B+K` · `CE` Critical Edge `A+B+K` |
| ⚠️ `CS` / `SL` | **Ivy-specific:** Calamity Symphony / **Spiral Lust** stance. (General glossary: `CS` Crumple Stun, `SL` Special Low — context decides) |
| GI levels | Lv1 +8 · Lv2 +16 · Lv3 +28 |

---

## vs. my notes (2026-10-15)

| Topic | My notes | 📚 Sheet | Verdict |
|---|---|---|---|
| `AA` | Old: "`AK` strictly beats `AA`, never use `AA`" · ✅ 2026-10-15: 2nd hit LH vs sidesteppers | `AA` LH > `6B[A] > SE [K] > SE B:B:B:B:B` = **85** (`> 6B[A] > CE` = 101) | **Old note was wrong.** `AA` has a job (anti-step LH); `AK` is still the plain punish |
| `AA` LH follow-up | ✅ wiki route = the near option. ✅ 2026-10-17: `SE B×5` too hard; `SE B×3` = 78 | Same route, 85 (B×5) | ✅ agrees on the route. Far option (`8B+K > 6B8`) is mine, not in sheet |
| `66[A]` LH | ✅ 2026-10-17: route measured 90, sometimes 91 | `9B+K > 4A > 4B8 > 2A+BB` = **90** (all ranges, "TT all side"); `> 214[B] > SE B×5` = 85 | ✅ agrees (91 unexplained) |
| `22(A)` LH | ✅ only 2nd (far) hit, vs 8-way step/run | `22_88A` LH > `CS` = **85, only from the opponent's back** (90 iCS); `> 6B[A] > SE [K] > SE B×5` = 81 | Compatible. **A CS entry** — see below |
| `3B > 6B8` | ✅ good default | 46, "leads to 6B8 airborne oki" | ✅ agrees |
| `8B+K > 6B8` | ✅ tight inputs | 49; alt `4B 9B+K` = 48 "to keep away" | ✅ agrees |
| `B+K > 6B8` | ✅ hard, `B+K` close + slow | 56 | agrees on the route; difficulty not mentioned |
| `8B+K` | ✅ launcher, guardable BA | GC table: `8B+K` / `9B+K` GC → **"NOTHING GUARANTEED"** | consistent |
| Calamity Symphony | ✅ raw CS inconsistent, want easier entry | `22_88A` LH from behind > CS 85 · **`RE 2` win > CS 90 (100 iCS)** · RE 8 > SS 60 | **Two combo entries for CS** → Q63 |
| `AK` out of guard | ✅ quick chip, no outright advantage | AK = **+6 on hit** → setup table (66A+B, SS, micro step B+K, 66B, backstep G) | Not a conflict: +6 is **on hit**; on block it's -8 📊 |
| RE B | ✅ `RE BOB BBBBBBBB` big dmg | `RE1 B > BBBBBBB` = 54 · `RE2 B LH > BBBBBBB` = 74 | Sheet writes it as mash-B follow-ups. "BOB" notation still ❓ |
| Wakeup `6B8` | — | `6B8` vs **midair** = 41 dmg throw 📊 (`Midair Opponent 6b8`) | explains why `6B8` "catches midair and pulls them in" |

**Not in the sheet (so no 📚 answer):** low throws vs crouch, `1AA`, `4B` neutral use, throw breaks.

---

## Curated: payoffs by situation (from the tables below)

| Situation | Easiest listed | Max listed |
|---|---|---|
| `3B` hit | `6B8` 46 | `66B+K > 214[B] > SE B×5` 99 *(LH, close)* |
| `8B+K` hit | `6B8` 49 | — |
| `9B+K` hit | `B+K > BT A > 2A+BB` 78 | — |
| `3A+G` hit | `66BB` 59 (+14 mixup after) | — |
| `FC 1B` (after blocking a low) | `BT A > 2A+BB` 70 *"easy"* · `B+K 6B8` 66 *"easy"* | `G > 4A > 214[B] > SE B×5` 87 *"hard"* |
| `WR BB` | `214[B] > SE B×5` 75 | `4A > 214[B] > SE B×5` 84 |
| `8BBB` | `8A+B[B]` 87 | — |
| `1K` CH | `1K` 35 *"easier"* | `iWR B+K` 38 |
| `WR A` CH | `6B[A] > SE [K] > SE B×5` 70 | `> CE` 79 |
| `AA` / `66[A]` / `22A` LH | 85 / 90 / 85 (CS, from back) | — |
| Wall | `66BB` W! … 128 | `214A` 197 |

---

## Sheet tables (verbatim)

### NH Combos


**NORMAL COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| 3B | 6B8 | [▶](https://youtu.be/klSL0tdU-ws) | 46 | Lead to 6B8 airborne hit oki |
| ↳ | (in SC) 66K[K] > SE B:B:B:B:B | [▶](https://youtu.be/klSL0tdU-ws?t=4) | 63 | In Soul Charge combo |
| ↳ | 6KB > iWR B+K | [▶](https://youtu.be/klSL0tdU-ws?t=10) | 59 | Works only at tip hit |
| 22_88K | WR B+K | [▶](https://youtu.be/RVYyvYQ8RgU) | 39 |  |
| ↳ | 214[B] | [▶](https://youtu.be/RVYyvYQ8RgU?t=3) | 34 | Lead to SE oki |
| 3A+G | 66BB | [▶](https://youtu.be/t9NMHNn82Ws) | 59 | Lead to a +14 ranged mixup |
| ↳ | SA | [▶](https://youtu.be/t9NMHNn82Ws?t=5) | 55 | Bar consuming combo |
| FC 1B | G > 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/EvRqZ8VdiCI) | 87 | Hard to execute |
| ↳ | BT A > 2A+BB | [▶](https://youtu.be/EvRqZ8VdiCI?t=7) | 70 | Easy to execute |
| ↳ | BT A > 4A > 6KB > iWR B+K | [▶](https://youtu.be/EvRqZ8VdiCI?t=11) | 77 | The 4A doesn't connect against Amy / Talim and Xianghua |
| ↳ | B+K 6B8 | [▶](https://youtu.be/EvRqZ8VdiCI?t=19) | 66 | Easy to execute, lead to 6B8 airborne oki |
| ↳ | BT A > 4[A] > SE 8B+K | [▶](https://youtu.be/EvRqZ8VdiCI?t=24) | 71 | RO and W! |
| ↳ | BT A > 4[A] > CE | [▶](https://youtu.be/EvRqZ8VdiCI?t=32) | 94 | Bar consuming combo |
| 8B+K | 6B8 | [▶](https://youtu.be/QaSLEuZx47s) | 49 | Lead to 6B8 airborne hit oki |
| ↳ | 4B 9B+K | [▶](https://youtu.be/QaSLEuZx47s?t=5) | 48 | If you want to keep the opponent away |
| 9B+K | B+K > BT A > 2A+BB | [▶](https://youtu.be/xgJs2ljR3wM) | 78 |  |
| ↳ | B+K > BT A > iWR B+K | [▶](https://youtu.be/xgJs2ljR3wM?t=7) | 75 |  |
| ↳ | B+K > BT A > SA | [▶](https://youtu.be/xgJs2ljR3wM?t=13) | 70 | Bar consuming combo |
| ↳ | (in SC) B+K > BT A > 66K[K] > SE B:B:B:B:B | [▶](https://youtu.be/xgJs2ljR3wM?t=21) | 89 | In Soul Charge combo |
| 22[B] | SE 6B > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/AiQJtYzP0Mg) | 82 |  |
| ↳ | SE 6B > 4[A] > CE | [▶](https://youtu.be/AiQJtYzP0Mg?t=7) | 93 | Bar consuming combo |
| WR BB | 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/wuZS6UYcl-Q) | 84 | Whiff against a few characters |
| ↳ | 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/wuZS6UYcl-Q?t=8) | 75 |  |
| ↳ | [A]6 > 8B+K | [▶](https://youtu.be/wuZS6UYcl-Q?t=14) | 49 | RRO / You can do a micro forward step to make it push further ! |
| 8BBB | 8A+B[B] | [▶](https://youtu.be/gVV8hFyF17A) | 87 |  |
| ↳ | (in SC) 4A 66K[K] > SE B:B:B:B:B | [▶](https://youtu.be/gVV8hFyF17A?t=6) | 91 | In Soul Charge combo |
| ↳ | [A]6 > 8B+K | [▶](https://youtu.be/gVV8hFyF17A?t=16) | 70 | RRO / You can do a micro forward step to make it push further ! |
| B+K | 6B8 | [▶](https://youtu.be/e1V5fhsZZCM) | 56 | Lead to 6B8 airborne hit oki |
| ↳ | (in SC) 66K[K] > SE B:B:B:B:B | [▶](https://youtu.be/e1V5fhsZZCM?t=4) | 88 | In Soul Charge combo |

**SOUL CHARGED COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| (Soul Charged) SE AA | (in SC) 4B8 B6 | [▶](https://youtu.be/97csgkiwbWs) | 74 | In Soul Charge combo |

### CH Combos


**NORMAL COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| WR A | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/D8LNSDsyus4) | 70 |  |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/D8LNSDsyus4?t=7) | 68 | RO and W! |
| ↳ | 6B[A] > SE K > SA | [▶](https://youtu.be/D8LNSDsyus4?t=14) | 66 | Lead to your SA mixup |
| ↳ | 6B[A] > CE | [▶](https://youtu.be/D8LNSDsyus4?t=22) | 79 | Bar consuming combo |
| 1K | iWR B+K | [▶](https://youtu.be/JFH2P9RRne8) | 38 |  |
| ↳ | 1K | [▶](https://youtu.be/JFH2P9RRne8?t=3) | 35 | Easier |
| ↳ | 214[B] | [▶](https://youtu.be/JFH2P9RRne8?t=7) | 30 | SE oki |
| FC 3B | WR B+K | [▶](https://youtu.be/eGdRqmlUux0) | 40 | Whiff at tip range |
| ↳ | RCC 1AA | [▶](https://youtu.be/eGdRqmlUux0?t=3) | 32 |  |
| FC 3[B] | SL B (delay) > 66B+K > 4B8 | [▶](https://youtu.be/eGdRqmlUux0?t=7) | 76 | Whiff on Asta and Geralt |
| ↳ | SL B (delay) > 66B+K > 6B8 | [▶](https://youtu.be/eGdRqmlUux0?t=13) | 70 | Lead to 6B8 airborne hit oki |
| ↳ | SL B (delay) > 4[A] > CE | [▶](https://youtu.be/eGdRqmlUux0?t=20) | 80 | Bar consuming combo |
| BT 2AB | 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/e-3IKnyRcZ0) | 68 |  |
| 6KB | iWR B+K | [▶](https://youtu.be/wmzvFANXzRs) | 62 |  |
| B6 tip hit | 6[B+K] | [▶](https://youtu.be/WX_iUvkX0-8) | 56 | Lead to a +10 mixup |
| ↳ | 8B+K > 6B8 | [▶](https://youtu.be/WX_iUvkX0-8?t=4) | 55 | Lead to 6B8 airborne hit mixup, can whiff at short range |
| ↳ | 3A+G > 6KB > iWR B+K | [▶](https://youtu.be/WX_iUvkX0-8?t=9) | 59 | Can whiff at short range |

**SE COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| SE K | 6B8 | [▶](https://youtu.be/ROB74Z_LRrA) | 48 | Lead to 6B8 airborne hit oki |
| ↳ | SA | [▶](https://youtu.be/ROB74Z_LRrA?t=4) | 41 | Lead to your SA mixup |
| ↳ | (in SC) 66K[K] SE B:B:B:B:B | [▶](https://youtu.be/ROB74Z_LRrA?t=9) | 71 |  |
| SE [K] | SE B:B:B:B:B | [▶](https://youtu.be/ROB74Z_LRrA?t=14) | 67 |  |
| ↳ | SE 8B+K | [▶](https://youtu.be/ROB74Z_LRrA?t=19) | 55 | RO and W! |
| ↳ | SE CE | [▶](https://youtu.be/ROB74Z_LRrA?t=24) | 75 | Bar consuming combo |
| ↳ | 6 (forward step) SE 6B SA | [▶](https://youtu.be/ROB74Z_LRrA?t=35) | 55 | Haven't tested against the whole cast but seems to work, lead to your SA mixup |

### LH Combos


**NORMAL LH COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| A+B | iFC 1B > BT A > 4A > 6KB > iWR B+K | [▶](https://youtu.be/ktOLPGlgeqk) | 101 | 4A Whiffs against Amy / Talim and Xianghua |
| ↳ | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/ktOLPGlgeqk?t=8) | 94 |  |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/ktOLPGlgeqk?t=15) | 89 | RO and W! |
| ↳ | iFC 1B > BT A > 4[A] > CE | [▶](https://youtu.be/ktOLPGlgeqk?t=23) | 118 | 4[A] Whiffs against Amy / Talim and Xianghua |
| 3B | 66B+K > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/wj7HPx9nBtk) | 99 | 66B+K works only at close range |
| ↳ | 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/wj7HPx9nBtk?t=8) | 85 | Works at all range |
| AA | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/_cew29AKFVU) | 85 |  |
| ↳ | 6B[A] > CE | [▶](https://youtu.be/_cew29AKFVU?t=7) | 101 | Bar consuming combo |
| 66[A] | 9B+K > 4A > 4B8 > 2A+BB | [▶](https://youtu.be/tsmsAsr-KbI) | 90 | Also TT all side |
| ↳ | 9B+K > 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/tsmsAsr-KbI?t=7) | 85 |  |
| ↳ | 9B+K > 4A > 4B8 | [▶](https://youtu.be/tsmsAsr-KbI?t=15) | 78 | Oki |
| ↳ | 9B+K > B+K > BT A > SA | [▶](https://youtu.be/tsmsAsr-KbI?t=22) | 83 | Lead to your SA mixup |
| 22_88A | CS | [▶](https://youtu.be/_tN-w6l_Lo0) | 85 | Works only if you are in the back of the opponent, 90 dmg if iCS |
| ↳ | iFC 1B > BT A > 4A > 6KB > iWR B+K | [▶](https://youtu.be/_tN-w6l_Lo0?t=7) | 88 | 4A Whiffs against Amy / Talim and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/_tN-w6l_Lo0?t=16) | 77 | RO and W! |
| ↳ | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/_tN-w6l_Lo0?t=23) | 81 |  |
| B+K | iFC 1B > BT A > 4A > 6KB > iWR B+K | [▶](https://youtu.be/f9CFGHl6iWI) | 82 | 4A Whiff against Amy / Talim and Xianghua |
| ↳ | G > 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/f9CFGHl6iWI?t=8) | 79 |  |
| ↳ | G > 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/f9CFGHl6iWI?t=18) | 75 | RO and W! |
| ↳ | iFC 1B > BT A > 4[A] > CE | [▶](https://youtu.be/f9CFGHl6iWI?t=26) | 100 | 4A Whiff against Amy / Talim and Xianghua |
| 2B+K | 666B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/gdvhaU3ncL0) | 81 | The further the opponent is, the harder it becomes |
| ↳ | B6 (tip hit) > 8B+K > 6B8 | [▶](https://youtu.be/gdvhaU3ncL0?t=7) | 70 | Lead to 6B8 airborne hit oki |
| ↳ | B6 (tip hit) > 6[B+K] | [▶](https://youtu.be/gdvhaU3ncL0?t=13) | 70 | Front mixup (+10) |
| ↳ | B6 (tip hit) > 3A+G > SA | [▶](https://youtu.be/gdvhaU3ncL0?t=19) | 66 | Lead to your SA mixup |
| ↳ | 666B[A] > SE CE | [▶](https://youtu.be/gdvhaU3ncL0?t=27) | 91 | Bar consuming combo |
| ↳ | 66[A] > 9B+K | [▶](https://youtu.be/gdvhaU3ncL0?t=42) | 67 | Send the opponent far away |
| 3B+K | 9B+K > B+K > BT A > 2A+BB | [▶](https://youtu.be/AcKshfsHlMw) | 87 | Whiff if the opponent is too close |
| ↳ | 9B+K > 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/AcKshfsHlMw?t=7) | 84 |  |
| ↳ | (in SC) 9B+K B+K > BT A > 66K[K] > SE B:B:B:B:B | [▶](https://youtu.be/AcKshfsHlMw?t=21) | 95 |  |
| 44B | 66B+K > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/GVDG_5abACE) | 108 | 66B+K works only at close range |
| ↳ | 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/GVDG_5abACE?t=8) | 90 | Works at all range |
| FC 3B | RCC 1AA | [▶](https://youtu.be/maxGhxwUXKs) | 32 |  |
| FC 3[B] | SL B (delay) > 66B+K > 4B8 | [▶](https://youtu.be/maxGhxwUXKs?t=4) | 76 | Close range only |
| ↳ | SL B (delay) > 4B8 | [▶](https://youtu.be/maxGhxwUXKs?t=11) | 55 | Works as long as SL B (delay) connects |
| 3[K] | iFC 1B > BT A > 4A > 6KB > iWR B+K | [▶](https://youtu.be/ds53NE02Ktg) | 73 | 4A Whiff against Amy / Talim and Xianghua |
| ↳ | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/ds53NE02Ktg?t=8) | 72 |  |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/ds53NE02Ktg?t=15) | 70 | RO and W! |
| ↳ | iFC 1B > BT A > 4[A] > CE | [▶](https://youtu.be/ds53NE02Ktg?t=23) | 91 | 4A Whiff against Amy / Talim and Xianghua |

**SE LH COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| SE 4B | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/S_eJLnSWytg) | 95 |  |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/S_eJLnSWytg?t=7) | 91 | RO and W! |
| ↳ | 6B[A] > CE | [▶](https://youtu.be/S_eJLnSWytg?t=15) | 109 | Bar consuming combo |
| ↳ | 6B[A] > SE K > SA | [▶](https://youtu.be/S_eJLnSWytg?t=29) | 86 | Lead to your SA mixup |

### RE Combos


**RE 1 COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| RE1 A | iWR B+K | [▶](https://youtu.be/yzERZzSXqVg) | 43 |  |
| RE1 [A] | SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/yzERZzSXqVg?t=4) | 52 |  |
| ↳ | SE [K] > SE 8B+K | [▶](https://youtu.be/yzERZzSXqVg?t=10) | 51 | RO and W! |
| ↳ | SE [K] > 6 > SE 6B > SA | [▶](https://youtu.be/yzERZzSXqVg?t=16) | 51 | Lead to your SA mixup |
| ↳ | SE CE | [▶](https://youtu.be/yzERZzSXqVg?t=24) | 75 | Bar consuming combo |
| RE1 B | BBBBBBB | [▶](https://youtu.be/GYW6NsrYs8M) | 54 |  |
| RE1 K | - | [▶](https://youtu.be/NR1kyBgfKmg) | 25 |  |
| ↳ | 4A > 214[B] > SE B:B:B:B:B | [▶](https://youtu.be/NR1kyBgfKmg?t=4) | 98 | Works only against Mi-na |

**RE 1/2 MOVEMENT COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| RE 6 | 44B LH | [▶](https://youtu.be/ZiG6sprVBzY) | 108 | See LH combos |
| RE 2 | 3B LH | [▶](https://youtu.be/ZiG6sprVBzY?t=5) | 99 | See LH combos |
| ↳ | CS | [▶](https://youtu.be/ZiG6sprVBzY?t=11) | 90 | 100 dmg if iCS |
| RE 8 | SS | [▶](https://youtu.be/ZiG6sprVBzY?t=18) | 60 | 65 dmg if iSS |
| ↳ | 3B | [▶](https://youtu.be/ZiG6sprVBzY?t=25) | 46 | See NH combos |

**RE 2 COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| RE2 A LH | iFC 1B > BT A > 4A > 6KB > WR B+K | [▶](https://youtu.be/yzERZzSXqVg?t=37) | 63 | 4A Whiffs against Amy / Talim and Xianghua |
| ↳ | iFC 1B > BT A > 4[A] > CE | [▶](https://youtu.be/yzERZzSXqVg?t=46) | 80 | Bar consuming combo |
| ↳ | 6B[A] > SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/yzERZzSXqVg?t=63) | 63 |  |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/yzERZzSXqVg?t=70) | 61 | RO and W! |
| ↳ | 6B[A] > SE CE | [▶](https://youtu.be/yzERZzSXqVg?t=78) | 71 | Bar consuming combo |
| RE2 [A] LH | SE [K] > SE B:B:B:B:B | [▶](https://youtu.be/yzERZzSXqVg?t=93) | 54 |  |
| ↳ | SE [K] > SE 8B+K | [▶](https://youtu.be/yzERZzSXqVg?t=98) | 53 | RO and W! |
| ↳ | SE [K] > 6 > SE 6B > SA | [▶](https://youtu.be/yzERZzSXqVg?t=105) | 53 | Lead to your SA mixup |
| ↳ | SE CE | [▶](https://youtu.be/yzERZzSXqVg?t=113) | 77 | Bar consuming combo |
| RE2 B LH | BBBBBBB | [▶](https://youtu.be/GYW6NsrYs8M?t=5) | 74 |  |
| RE2 K LH | - | [▶](https://youtu.be/NR1kyBgfKmg?t=11) | 57 |  |

### Wall Combos


**DIRECT SPLAT COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| 66BB | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/dGJ1weB0fxo) | 128 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/dGJ1weB0fxo?t=9) | 133 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/dGJ1weB0fxo?t=26) | 100 | RO |
| ↳ | 6B[A] > SE K W! > 44B+K > SL B (delay) > 66B+K > 4B8 | [▶](https://youtu.be/dGJ1weB0fxo?t=33) | 125 | Oki |
| FC 3A+B | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/xO4vFgLYjow) | 108 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/xO4vFgLYjow?t=9) | 110 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/xO4vFgLYjow?t=26) | 100 | RO |
| 4A+BB | 1K | [▶](https://youtu.be/5E4Wp3FCd1Y) | 53 |  |
| ↳ | 214[B] | [▶](https://youtu.be/5E4Wp3FCd1Y?t=5) | 50 | SE oki |
| 2A+BB | iWR B+K | [▶](https://youtu.be/9OclVADXTJs) | 64 |  |
| ↳ | 214[B] | [▶](https://youtu.be/9OclVADXTJs?t=4) | 62 | SE oki with the opponent BT |
| WR B | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/D6maZtIyAeY) | 81 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE |  | 83 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K |  | 62 | RO |
| 7_8_9BB | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/APP_czSnK5A) | 114 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/APP_czSnK5A?t=9) | 121 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/APP_czSnK5A?t=27) | 87 | RO |
| 7_8_9K | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/TTFzhfSLUoM) | 108 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/TTFzhfSLUoM?t=8) | 114 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/TTFzhfSLUoM?t=25) | 81 | RO |
| 3B | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/NE4h1htfyFE) | 88 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/NE4h1htfyFE?t=8) | 90 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/NE4h1htfyFE?t=25) | 69 | RO |
| 1[B] | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/moV9zXpOqWc) | 100 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/moV9zXpOqWc?t=8) | 106 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/moV9zXpOqWc?t=25) | 73 | RO |
| 214A | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/nnxjiVkCxPg) | 197 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/nnxjiVkCxPg?t=9) | 204 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/nnxjiVkCxPg?t=27) | 174 | RO |

**SE SPLAT COMBOS**

| Starter | Combo | Video | Dmg | Notes |
|---|---|---|---|---|
| SE 8B+K | 2A+G W! |  | 105 | Whiff at close range / No follow-up |
| ↳ | 666B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/5b13L0jZ8kQ) | 145 | 4[A] whiff against Talim / Amy and Xianghua - Input 3 time 6 at the begining so the game register 6B[A] and not 66B |
| ↳ | 666B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/5b13L0jZ8kQ?t=20) | 139 | Input 3 time 6 at the begining so the game register 6B[A] and not 66B |
| ↳ | 666B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/5b13L0jZ8kQ?t=31) | 111 | RO - Input 3 time 6 at the begining so the game register 6B[A] and not 66B |
| SE 6A airborne | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/K5B8CJRVtmE) | 100 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/K5B8CJRVtmE?t=9) | 107 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/K5B8CJRVtmE?t=27) | 73 | RO |
| SE K CH | 6B[A] > SE K W! > 44B+K > SL B (delay) > 8A+B[B] | [▶](https://youtu.be/VArl-H0i6TM) | 97 |  |
| ↳ | 6B[A] > SE K W! > FC 1B (slight delay) > BT A > 4[A] > CE | [▶](https://youtu.be/VArl-H0i6TM?t=8) | 101 | 4[A] whiff against Talim / Amy and Xianghua |
| ↳ | 6B[A] > SE [K] > SE 8B+K | [▶](https://youtu.be/VArl-H0i6TM?t=25) | 73 | RO |

### Guard Crush Combos

| GC type | Starter | Follow-up | Video | Scaling | Notes |
|---|---|---|---|---|---|
| Type 1 | 6B+K | WR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | 8B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | FC 3A+B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | 44B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | WR B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | 3[K] | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | FC 1B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | 33[K] | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | SE 4B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 1 | SE 6B | iWR BB | [▶](https://youtu.be/05ptD30GzyE) |  | See NH combos |
| Type 2 | A+B | iFC 1B or iWR BB | [▶](https://youtu.be/79ohwdCrh5I) |  | Whiff at max range/ See NH combos |
| Type 2 | 2B | iFC 1B or iWR BB | [▶](https://youtu.be/79ohwdCrh5I) |  | Whiff at max range/ See NH combos |
| Type 2 | 3B | iFC 1B or iWR BB | [▶](https://youtu.be/79ohwdCrh5I) |  | Whiff at max range/ See NH combos |
| Type 2 | SE B | iFC 1B or iWR BB | [▶](https://youtu.be/79ohwdCrh5I) |  | Whiff at max range/ See NH combos |
| Type 3 | 6[B+K] | B6 tip hit | [▶](https://youtu.be/m70JfZ6tLO0) |  | See 6B+K for close range combos / See CH combos |
| Type 3 | 3B+K | B6 tip hit | [▶](https://youtu.be/m70JfZ6tLO0) |  | Whiff at max range / See CH combos |
| Type 3 | 8A+B[B] | B6 tip hit | [▶](https://youtu.be/m70JfZ6tLO0) |  | See CH combos |
| Type 4 | 4A+BB | iWR BB or b6 tip hit | [▶](https://youtu.be/487sATeogSA) |  |  |
| Type 4 | SE 6AA | iWR BB or b6 tip hit | [▶](https://youtu.be/487sATeogSA) |  |  |
| Type 5 | 4B | 66[A] LH |  |  | Works only at mid-range / See LH combos |
| Type 5 | 4B | 9B+K | [▶](https://youtu.be/QzyeDi9uCLo) |  | Works only at long range / See NH combos |
| Type 5 | 4B | B6 tip hit | [▶](https://youtu.be/QzyeDi9uCLo?t=5) |  | Works at close range / See CH combos |
| Type 5 | 4B | iWR BB | [▶](https://youtu.be/QzyeDi9uCLo?t=9) |  | Works at very close range / See NH combos |
| Type 6 | 8A+BB | 3B | [▶](https://youtu.be/nPV3MVxj4ws) |  | Whiff at mid and long range / See NH combos |
| Type 6 | 8A+BB | 66BB | [▶](https://youtu.be/nPV3MVxj4ws?t=5) |  | Whiff at long range |
| Type 6 | 8A+BB | 6[A] | [▶](https://youtu.be/nPV3MVxj4ws?t=10) |  |  |
| Type 7 | 66[A] | 3A+G | [▶](https://youtu.be/x5nrS0Cdrvo) |  | Whiff at max range / See NH combos |
| Type 7 | 66[A] | 9B+K | [▶](https://youtu.be/x5nrS0Cdrvo?t=6) |  | Works only at max range / See NH combos |
| Type 8 | 2B+K | B6 tip hit | [▶](https://youtu.be/pnqF-8aUYJE) |  | Whiff at close range / See CH combos |
| Type 8 | 2B+K | 6[B+K] | [▶](https://youtu.be/pnqF-8aUYJE?t=5) |  | Whiff at max range |
| Type 9 | 22_88[B] | SE B:B:B:B:B | [▶](https://youtu.be/DZAk2loT7pk) |  |  |
| Type 9 | 22_88[B] | SE CE | [▶](https://youtu.be/DZAk2loT7pk?t=5) |  |  |
| Type 10 | SL B | iWR BB | [▶](https://youtu.be/TZTh9qr8wkc) |  | Whiff at mid and long range / See NH combos |
| Type 10 | SL B | 6[B+K] | [▶](https://youtu.be/TZTh9qr8wkc?t=6) |  |  |
| Type 11 | 66B+K | 2A+G | [▶](https://youtu.be/NDUaFLpeFn0) |  |  |
| Type 11 | 66B+K | 8B+K | [▶](https://youtu.be/NDUaFLpeFn0?t=9) |  | See NH combos |
| Type 12 | SE 7B+K | iWR BB |  |  | Whiff at mid and long range / See NH combos |
| Type 12 | SE 7B+K | 6[A] | [▶](https://youtu.be/ORYQGYvJnXM) |  |  |
| Type 13 | 66BB | iFC 1B | [▶](https://youtu.be/JWNipP92DpA) |  | See NH combos |
| Ty[e 14 | 2A+BB | iFC 3B | [▶](https://youtu.be/EdVe51xuG48) |  | See CH combos |
| Type 15 | 8B+K | NOTHING GUARANTEED | N/A |  |  |
| Type 15 | 9B+K | NOTHING GUARANTEED | N/A |  |  |
| Type 15 | SE 9B+K | NOTHING GUARANTEED | N/A |  |  |

### AK (+6 on hit) setups — from tab "Kopie listu Wall Combos" (rest of that tab duplicates Wall Combos)

| Setup (on hit) | Option | Wins vs | Loses vs | Notes |
|---|---|---|---|---|
| AK (+6) | 66A+B | GI / i12+ / Step / Backstep / RE | i10 | You can step after hitting the RE / Clash win against i12 / Forceblock after a step |
|  | SS | Freeze / GI / backstep / 8WR step | Step 2G / TC moves / i14 or less / 2G / RE | Do it if the opponent start freezing |
|  | micro step B+K | AA / 2A / GI | Movements / any mids or lows / RE | Biggest rewards but very risky |
|  | 66B | i10+ / backstep | Step / GI / RE / Freeze | Clash +19 with i10 / Do it to prevent mashing vs characters with an i10 |
|  | Backstep G | / | / | 100% safe but doesn't guarantee anything |

