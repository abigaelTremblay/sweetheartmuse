# Setsuka — Community guides 📚

> Third-party material: **not labbed**, and not the wiki frame data. Use it for **routes and ideas**. For frame values, [framedata.md](framedata.md) 📊 is authoritative; disagreements are marked ⚑.
>
> **Sources** (linked from the supercombo wiki *Setsuka/Resources* page):
> - **"Setsuka Guide"** (Google Sheet, by Boomy#8396, Setsuka Discord; patch **2.30**, last updated 2020-12-01). It credits the "Setsuka bible" doc (Deluxium, Florida Man, Meesta AJ, rtsRANGEL, Master Sorel, Jashin), a translated JP sheet and the cheat sheet below. Tabs: WELCOME · MOVES LIST & FRAME DATA · COMBOS · PUNISHERS · TIPS & TRICKS (WIP) · VS. SETSUKA (super WIP).
>   https://docs.google.com/spreadsheets/d/16zcb65cqiL9tswMNmR7bievzQPIyVIyd2cFTLi4NJhU
> - **"Setsuka Cheat Sheet"** (Google Sheet, 1 tab, author not stated).
>   https://docs.google.com/spreadsheets/d/1Ct-STcAXb2vx4FO76oYvl8dZA-sCjrOqDE8QjIFdZi8
> - The wiki *Setsuka/Combos* page is **empty** ⚑, so every combo here comes from the Guide.
>
> Fetched 2026-11-20. Back to [gameplan.md](gameplan.md).

---

## Sheet notation

| Sheet | Meaning | In `framedata.md` / my notes |
|---|---|---|
| `:` (e.g. `4B:B`) | just frame | same |
| `( )` | hold | `( )` / `[ ]` |
| lowercase `a` / `b` (`aB`, `bA`, `agB`) | very brief tap, then the next button quickly ("slide") | same |
| `*` or `\|` | OR (`11*77*2361B` = any of these inputs) | — |
| `~` | instant transition | — |
| `236…` / **TH** | Twilight Haze: any 8-way-run move from standing (`236B` = `33B`/`[6]B`, `2362aB` = `22aB`, `2364B+K` = `44B+K`) | `236` |
| `214…` / **DH** | Dawn Haze: any FC/WR move from standing (`2143aB` = `FC 3aB`, `2143BB` = `FC 3BB`, `214K` = `WR K`) | `214` |
| `44X` / `2364X` | back-run move | `[4]X` ⚑ (likely the same thing) |
| `66B` (in fillers) | usually **Rising Crescent** (`33B`/`236B`) — ambiguous ⚑ | `[6]B` |
| `SKY C1/C2/C3` (Guide) · `C0/C1/C2` (Cheat Sheet) | Shrouded Sky charge stage I/II/III ⚑ offset by one | `SKY1/2/3` |
| `L1/L2/L3 6B+K` | Mirror Blade stage (auto-GI) | `6B+K` |
| SFC / SMC | Silver Moon Combo (`B+K` strings) | `B+KB…` |
| RoH | Ring of Heaven | `8B+K` |
| Shabu / buster | Shade Buster | `FC 3aB` / `6A+B` |
| Sakura / twister | Sakura Swipe | `22aB` |
| `W!` / `RO` / `rcc` | wall hit / ring out / recovery crouch cancel | — |
| `NC` | natural combo | — |
| `x / y` damage | no-JF / all-JF damage | — |

---

## vs. framedata.md

| Item | 📚 Sheet | 📊 framedata.md | Note |
|---|---|---|---|
| `A` block | -6 | -8 | ⚑ |
| `1B` height | M (Guide) | **L** | ⚑ wiki Overview + Style Lesson say low → trust 📊 |
| `44B+K` / `[4]B+K` Silver Shadow | -6 / +6 / KND; Punishers "Safe!" | **-10 / +2 / STN** | ⚑ big: if -10, i12 punish leaves me open to i10 |
| `b4` impact | i16 | i17 | ⚑ |
| `WoH B` block | -8 (Wintry: +2) | -12 | ⚑ |
| `BT B+K` hit | KND | STN | ⚑ |
| `WR B` hit | KND | STN | ⚑ |
| `4A+B` block | -20 (VS tab, Cheat) | -22 | ⚑ |
| `6A+B` dmg | 35 | 30 | ⚑ easy version is supposed to do *less* |
| `FC 3a:B` dmg | 40 | 35 | ⚑ |
| Rising Crescent dmg | 14 / 18 | 18 / 20 | ⚑ |
| RE A / B / K dmg | 42 / 49 / 24 | 45 / 54 / 30 | ⚑ patch? |
| `2362a:B` LH punish | listed at i14 | i16 | ⚑ |
| `236A+G` / `214A+G` | "+8 when broken free" | throws, 30 / 28 dmg, no break data | ⚑ missing in 📊 |
| `FC 2A` / `FC 2B` (crouching punishers) | listed | no such rows | ⚑ probably `FC A` / `FC B` |
| `agB` punish | i22 (Guide); i23 effective (Cheat) | i22 | ⚑ "slide input makes it not possible to punish -22" |
| `WR A` name | "Grasscutter" (wiki Overview) | "Crescent Slash" (`2A` is Grasscutter) | ⚑ naming only |
| `1B` | Overview: "-12, pretty safe"; launches on CH | -12, **STN** on CH | ⚑ -12 is i12-punishable |
| Rising Crescent | Style Lesson: "fairly safe" | -8 | OK-ish; -8 is still a turn for them |
| Cheat Sheet typos | `2142a:B`, `2372a:B`, `2134B:B` | — | read as `2143a:B`, `2362a:B`, `2143B:B` |

Consistent with 📊: `3A+B` TC, `66A+B` -12, `66A` duckable (H).

---

## Curated payoffs (my picks from the sheets) ❓

Easiest = shortest / no JF; max = highest listed. All 📚, none labbed.

| Situation | Easiest | 📚 dmg | Max (listed) | 📚 dmg |
|---|---|---|---|---|
| `3B` launch | `3B > 66B+KB` | 45 | `3B > CE` | 78 |
| `3B` launch, no meter | `3B > 2143a:B` | 47/51 | — | — |
| Rising Crescent NH | `33B > 2143a:B` | 54 | `33B > SC b:(A) > SKY C1 A+B` | 89 |
| Rising Crescent NH, no meter | `33B > b:A > 2362a:B` | 55/61 | — | — |
| Rising Crescent CH | `33B > 2143B:B > 2362a:B > 2362a:B` | 69/80 | `> 2143B:B > CE` | 87/93 |
| `4B:B` | `4B:B > 2143B:B > 3KB` | 51/59 | `> 2143B:B > CE` | 72/82 |
| `11B` | `11B > 2143a:B` | 54 | `11B > ag:B > 2143a:B` | 75 |
| `44BA` | `44BA > 66B+KB` | 60 | — | — |
| `FC 3A+B` | `2143A+B > 2143B:B > 2143a:B` | 63 | `> 2143B:B > 2362a:B > 2362a:B` | 77 |
| Throw `236A+G` / `214A+G` | `> 3KB` | 50 | `> 2362a:B` | 55/59 |
| CH `4A` | — | — | `4A > 2143B:B > 2362a:B > 2362a:B` | 64/75 |
| CH `1B` | `1B > 2362A+BA` | 54 | `1B > 8B+KB > 2143a:B` | 56/59 (char-specific; Hilde escapes) |
| CH `3B` | — | — | `3B > b:A > 2362a:B` | 71/78 |
| CH `6K` | `6K > 2362A+BA` | 41 | — | — |
| CH `[4]Kb6` | — | — | `> BT 2A+B > b:A > 2362a:B` | 87 |
| LH `22aB` (punish) | `22aB > CE` | 76/87 | — | — |
| LH `22K` (vs whiffed high) | — | — | `22K > 3B > b:A > 2362a:B` | 85/90 |
| LH `A+B` (vs GI/RE) | — | — | `A+B > 2143B:B > 2362a:B > 2362a:B` | 93/103 |
| LH `b6` (vs missed GI) | `b6 > B+KBB+K` | 69/74 | — | — |
| RE1 B | `RE B > 2143a:B` | 63/65 | — | — |
| RE2 K | `RE K > B+KBB+K` | 85/90 | — | — |
| `6B+K` L2 / L3 | `L2 > 8B+KB > 2143a:B` | 69 | `L3 > b:A > 2362a:B` | 76 |
| Wall | — | — | `3B W! > b:A W! > 2143B:B > 2362a:B > 2362a:B` | 113 ⚑ `b:A` needs a centre-to-left wall angle |
| NC (hard) | — | — | `ag:B > ag:B > 2A+B > BT B+KB > 2362a:B` | 100 |

Pattern: **`2143B:B` (`FC 3BB`) is the universal "STN → combo" filler**, `2362a:B` / `2143a:B` the enders, `b:A` the launcher extender.

---

## Punishers — digest

From the Guide PUNISHERS tab (verbatim below), with 📊 block values:

| i | Standing | Crouching | Safety 📊 |
|---|---|---|---|
| 12 | `214K`, `2A`, `AA`, `44B+K` | `WR K`, `FC A`, `44B+K` | all -6 except `44B+K` -10 ⚑ |
| 14 | `2143a:B` ⭐, `BB`, `2B` | `FC 3a:B`, `FC B` | `2143a:B` -22 |
| 16 | `2362a:B` (LH on punish) ⭐, CE, `6B`, SA | `2362a:B`, `FC 3B:B`, CE | `2362a:B` -16 |
| 18 | Rising Crescent, `4KA` | Rising Crescent, `WR B` | -8 |
| 20 | `4B:B`, `3B`, `8K`, `44BA`, `b:A`, `1A:A` | `4B:B`, `2364BA` | `4B:B` -12, `b:A` -22 |
| 22 | `ag:B` (📚 Cheat: effectively 23) | `FC 3A+B` | -22 / -20 |

---

## Tips & Tricks (WIP) — digest

- **Step killers:** `3A`, `66A`, `6AA`, `3A+B`, all SKY attacks (they track), `66A+B`, `b:A`. ⚠️ 📊: `66A`/`6AA` are highs; `3A+B` is -14; `b:A` is -22.
- **Whiff punishers:** Rising Crescent (also vs backstep) · `FC 3a:B` / `FC 3A+B` / `2362K` after ducking a high · `ag:B` vs big whiffs · `22aB` vs whiffed verticals.
- **CH moves:** Rising Crescent (`66B`/`2363B`), `2143B:B`, `6B`.
- **Post-GI:** after RI → `b4` (LH) · after Lv2 GI → `2362a:B` · after Lv3 GI → `ag:B` (JF). GI advantage: Lv1 +8, Lv2 +16, Lv3 +24 and KND.
- **Ukemi traps** (tested on Mitsurugi): `2362a:B > b:A` (catches R) · Rising Crescent `> b:A > b:A` (L) · `22BB > b:A` (L & R) · `214B > b:A` (R).
- **JF how-to:** `ag:B` is about speed and can be buffered in block stun (`A` early, then `:B+G`) · `1A:A:A`: press A as each hit lands · `4B:B`: press as the blade hits the ground · SKY2/3 A: press as her hand passes the centre of her torso / slightly after she touches the hilt.
- **Easy vs JF:** easy inputs cost ~1/6 meter notch and do slightly less damage; JF and `236`/`214` versions build meter (2.30). Pairs: `6A+B`→`2143a:B` · `3B+KB`→`2143B:B` · `4A+B`→`b:A` · `22aB`→`2362a:B` · `1AAA`→`1A:A:A` · `agB`→`ag:B` · `4BB`→`4B:B` · `1A+B`→`1A+B:A:A:A`.
- **Wave-dash cancel:** `236236 4A+B G`.

---

## Cheat Sheet — what it adds

- One-page move list with **guard crush yes/no** column: `aB`, `bK`, `3B`, `WR B`, jump B, `A+B`, `1A+B`, `B+K`, `2B+K`, `22B+K`, `11B+K`, `WoH B` (9% chip).
- `ag:B` is effectively **i23** because of the slide input → can't punish -22.
- `2368…` inputs are slower than `2362…` → use `2362`.
- SKY stages named `C0/C1/C2` (= Guide `C1/C2/C3`) ⚑.
- Same easy/JF pairs and Visions summary as the Guide. Typos noted in the ⚑ table.

---

## VS. SETSUKA (super WIP) — digest

From the Guide tab (based on a "Punishing Setsuka" doc). Useful for knowing what an opponent will try:

- She **returns to crouch** after `1B`, `2K`, `FC K`, `BT 2K`, `3A+B`, `1B+KB`, `11A`, `11K`, `SKY 2A` → opponents punish with **mids/lows**; Xianghua, Cassandra, Astaroth, Nightmare can low-throw.
- **Jails** (no escape between hits): `AA`, `BB`, `bK`, `3KB`, `1A+B`, `66B+KB`.
- **Duckable:** `AAA`, `22BB` (even delayed), `22A+BA`.
- **`BBB` can be stepped both ways** by Astaroth, Haohmaru, Hilde, Siegfried, Tira, Xianghua, Zasalamel.
- `[4]K`: stepping loses to `KB`, interrupting loses to `Kb6` → a 50/50 for the opponent (📊 `[4]KB` 0 on block, `[4]Kb6` -12).
- `SC 22aBA` can be interrupted by i10; `FC 3A+B` follow-up by i12.
- `SC 1K` SS parry beats i12/i14 punishes.
- Going into stance with `1K` or `bA` **does not** avoid the punish.
- `4A+B` listed -20 ⚑ (📊 -22).

---

## Sheet tables (verbatim)

### COMBOS (Guide tab, 215 rows)

`>` separates filler columns. Damage `x / y` = no JF / all JF. `↳` = same starter as the row above. Typos kept as in the sheet.

**NATURAL COMBO**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| ag:B | ag:B > 2A+B > BT B+KB > 2362a:b | 100 |  |
| ↳ | ag:B (delayed) > 2143a:B | 101 |  |
| aB | 214K > 66B | 42 | Heavy dmg scaling |
| 1A:A:A |  |  |  |
| 3B | 2143a:B | 47 / 51 |  |
| ↳ | CE | 78 |  |
| ↳ | 66B+KB | 45 |  |
| 4B:B | 2143B:B > 2143a:B | 60 / 66 |  |
| ↳ | 2143B:B > 2362a:B > 2362a:B | 57 / 70 |  |
| ↳ | 2143B:B > 3KB | 51 / 59 |  |
| ↳ | 2143B:B > CE | 72 / 82 |  |
| ↳ | 2143B:B > 2362a:B > 66B+KB | 71 |  |
| ↳ | 2143B:B > 6B > 8B+KB > 236A+B+K | 67 | SC ready if sufficient |
| ↳ | 2143B:B > 6B > 8B+KB > 2143a:B | 68 |  |
| 11*77*2361B | b:A > 2362a:B | 64 / 71 |  |
| ↳ | 8B+KA > BT B+KB > 2362a:B | 63 / 65 |  |
| ↳ | 1B+KB | 58 |  |
| ↳ | 1A:A:A | 60 |  |
| ↳ | ag:B > 2143a:B | 75 |  |
| ↳ | 2143a:B | 54 |  |
| 33*66*99*236B | b:A > 2362a:B | 55 / 61 |  |
| ↳ | b:A > 1B+KB | 48 |  |
| ↳ | b:A > 66B | 52 | Whiff LEFT ukemi |
| ↳ | SC b:(A) > SKY C1 A+B | 89 |  |
| ↳ | 8B+KA > BT B+K:B | 47 |  |
| ↳ | 2143a:B | 54 |  |
| 44*2364BA | 66B+KB | 60 |  |
| ↳ | 2362a:B | 55 / 57 |  |
| 2143A+B | 2143B:B > 2143a:B | 63 |  |
| ↳ | 2143B:B > 6B > 8B+KB > 2143a:B | 76 |  |
| ↳ | 2143B:B > 6B > 2143a:B | 69 |  |
| ↳ | 2143B:B > 2362a:B > 2362a:B | 77 |  |
| ↳ | 2143B:B > 6B > 214K | 62 / 67 | Can RO |
| 236A+G | 2362a:B | 55 / 59 |  |
| ↳ | 3KB | 50 |  |
| ↳ | 2362A+BA | 51 | Ukemi LEFT safe |
| ↳ | 2143a:B | 59 |  |
| ↳ | 236K |  |  |
| 214A+G | 2362a:B | 54 / 59 |  |
| ↳ | 2362A+BA | 51 |  |
| ↳ | 8B+KB > 2143a:B | 57 |  |
| 11*77*2361B+K | BT 2B | 43 |  |
| 22*88*23622B+K | 2362A+BA | 67 |  |
| ↳ | 2362a:B | 55 / 58 |  |
| ↳ | 66B+KB | 59 |  |
| ↳ | 1(K) | 50 | SKY ready |
| ↳ | 1B | 55 |  |
| BT B+K:B | 66B+KB | 53 |  |
| SKY C2&C3 2A | 66B+KB | 49 | 2nd stage |
| SKY C2&C3 B | 8B+KA > BT B+K:B > 2362a:B | 63 / 70 | 2nd stage |
| ↳ | ag:B > 2142a:B | 83 | 3rd stage |
| ↳ | 66A+B > 1B+KB | 74 / 78 | 3rd stage |
| L1 6B+K |  | 24 | H & M aGI. At tip range Setsuka dashes forward giving her +12 frame advantage |
| L2 6B+K | 8B+KB > 2143a:B | 69 |  |
| ↳ | 8B+KB > CE | 89 |  |
| ↳ | 8B+KB > 236A+B+K > 2362a:BA | 74 | SC ready |
| L3 6B+K | b:A > 2362a:B | 76 | Must turn around after L3 6B+K |
| ↳ | 8B+KB > CE | 85 |  |
| ↳ | 236A+B+K > 2362a:BA | 63 | Must turn around after L3 6B+K |

**COUNTER HIT**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| 4A | 2143B:B > 2362a:B > 2362a:B | 64 / 75 |  |
| ↳ | 2143B:B > 3KB | 56 / 60 |  |
| ↳ | 2143B:B > 2143a:B | 61 |  |
| ↳ | 2143B:B > 6B > 2143a:B | 68 |  |
| ↳ | 2143B:B > 2362a:B > 66B+KB | 74 |  |
| ↳ | 236B > 2143B:B > 2362a:B > 2362a:B | 70 |  |
| 1B | 2362A+BA | 54 |  |
| ↳ | 8B+KB > 2143a:B | 56 / 59 | Taki, Mina, Sophitia, Ivy, Kilik, Xianghua, Astaroth, Inferno, Raphael, Tira, Zasalamel, Groh, Geralt, 2B, Amy, Cassandra, Haohmaru can't ukemi out, even if hit at close range. Hilde can escape                    (Credit: Luk) |
| 3B | b:A > 2362a:B | 71 / 78 |  |
| ↳ | 1B+KB | 61 |  |
| ↳ | b:A > 66B | 65 |  |
| ↳ | ag:B > 2143a:B | 76 | ag:B hit seems inconsistent |
| 6B | 8B+KB > 2143a:B |  |  |
| ↳ | 2362A+BA |  |  |
| 6K | 2362A+BA | 41 |  |
| ↳ | 8B+KB > 2143a:B | 45 / 47 |  |
| 11*77*2361A | 8B+KB > 2143a:B | 49 / 51 |  |
| ↳ | 2362A+BA | 47 |  |
| 22*88*2362A | BT B+KB > 2362a:B | 49 / 52 |  |
| ↳ | BT B+KB > 2362A+BA | 53 / 55 |  |
| 44*2364AA (2nd hit) | AA | 39 |  |
| ↳ | 214K | 38 |  |
| ↳ | 44B+K | 46 |  |
| 2143B:B | 2362a:B > 2362a:B | 60 / 72 |  |
| ↳ | 2362a:B > 3KB | 48 / 53 |  |
| ↳ | 2362a:B > CE | 80 / 87 |  |
| ↳ | 2143a:B | 62 |  |
| ↳ | 6B > 8B+KB > 2143a:B | 71 |  |
| ↳ | 2362a:B > 66B+KB | 73 |  |
| ↳ | BT B+KB > 2362A+BA | 53 / 55 |  |
| 33*66*236B | 2143B:B > 2362a:B > 2362a:B | 69 / 80 |  |
| ↳ | 2143B:B > 3KB | 60 / 65 |  |
| ↳ | 2143B:B > CE | 87 / 93 |  |
| ↳ | 2143B:B > 2143a:B | 66 |  |
| ↳ | 2143B:B > 6B > 8B+KB > 2143a:B | 71 |  |
| ↳ | 2143B:B > 2143a:B | 74 |  |
| ↳ | 2143B:B > 6B > 8B+KB > 2143a:B | 78 |  |
| ↳ | 2143B:B > 2362a:B > 66B+KB | 81 |  |
| 44*2364Kb6 | BT 2A+B > 2362a:B | 73 |  |
| ↳ | BT B+K:B | 69 |  |
| ↳ | BT 2A+B > 2143a:B | 76 |  |
| ↳ | BT 2A+B > b:A > 2362a:B | 87 |  |
| 214B | 8B+KB > 2143a:B | 61 |  |
| 8B+KA | BT B+K:B > 2362a:B | 59 |  |
| BT 2A+B | b:A > 2362a:B | 82 |  |

**LETHAL HIT**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| ag:B | ag:B > ag:B > 2A+B > BT B+K:B > 2362a:B | 100 | LH when opponent is below x health and opponent missed weak attack |
| ↳ | RE > 2A+B > BT B+K:B > 2362a:B | 100 |  |
| ↳ | ag:B > ag:B > 8B+KA > 2143a:B | 100 |  |
| b4 | B+KBB+K | 62 / 66 | LH when opponent got RId by Setsuka and didn't reGI/reRI |
| ↳ | 2143B:B > 2362a:B > 2362a:B | 54 / 64 |  |
| ↳ | 66B > 2143B:B > 2362a:B > 2362a:B | 56 / | 1st & 2nd 2362a:B timing has to be exact |
| b6 | B+KBB+K | 69 / 74 | LH when opponent misses GI |
| ↳ | 2143B:B > 2362a:B > 2362a:B | 66 / 72 |  |
| ↳ | 2143B:B > CE | 76 / 82 |  |
| ↳ | ag:B > ag:B > 2143a:B > 66B | 71 / 88 |  |
| ↳ | 2361B > ag:B > 2143a:B > 2362a:B | 64 |  |
| 7*8*9K | 8B+KA > BT B+KB > 2362a:B | 78 / 83 | LH when opponent jumps. KND on CH |
| ↳ | CE | 91 |  |
| ↳ | b:A > 2362a:B | 82 |  |
| A+B | 2143B:B > 2362a:B > 2362a:B | 93 / 103 | LH when opponent GI or RE on impact |
| ↳ | 2143B:B > CE | 109 / 115 |  |
| ↳ | 66B > 2143B:B > 2362a:B > 2362a:B | 100 |  |
| 8B+KB | 2143a:B | 60 / 64 | LH when hitting opponents back, RoH, TC 4-8, TJ 8-30, TC 33-53, Hits grounded |
| ↳ | 3KB | 50 |  |
| ↳ | 8B+KB > 2143a:B | 53 / 55 |  |
| ↳ | 2143a:B > 66B | 67 |  |
| 22*88*2362a:B | CE | 76 / 87 | LH when used as punisher after guarding. Sakura/twister. Hits grounded |
| ↳ | 2143a:B > 66B | 66 |  |
| ↳ | 1B+KB | 66 |  |
| 22*88*2362B | B+KBB+K | 75 | LH when opponent miss RE, 2nd B can be delayed or left out |
| ↳ | ag:B > ag:B > 2143a:B > 66B | 90 |  |
| ↳ | ag:B > ag:B > 2143a:B > 2362a:B | 91 | (Credit: SiOvUyL) |
| 22*88*2362B(B) | 2143B:B > 2362a:B | 92 | LH when opponent miss RE, 2nd B can be charged by holding B or left out |
| ↳ | 2143B:B > CE | 95 / 100 |  |
| ↳ | 66B > 2143B:B > 2362a:B > 2362a:B | 90 |  |
| 22*88*2362K | 3B > b:A > 2362a:B | 85 / 90 | LH when opponent executes a HIGH move but misses, except throw. GI MID except kick & thrust, GI 39-38 |
| ↳ | 66B > 6K > 8B+KB > 2143a:B | 72 / 73 |  |
| ↳ | 66B > CE | 97 |  |
| ↳ | 2362a:B > 2362a:B | 89 |  |
| ↳ | 2141B > ag:B > 2143a:B > 2362a:B | 99 | (Credit: SiOvUyL, Setsuka discord) |
| SKY B | CE | 96 | LH when WoH A*B has hit opponent 2 or more times. Can be used once per match |
| ↳ | 8B+KA > BT B+KB > 2362a:B | 90 / 100 |  |
| ↳ | ag:B > 8B+KB > 2143a:B > 66B | 73 | Opponent has to hit ground after ag:B |
| ↳ | RE > b:A > 2362a:B | 98 |  |
| ↳ | ag:B > ag:B > ag:B > 2A+B > BT B+K:B | 98 | Very hard to execute 3 ag:Bs perfectly |
| WoH B | 2362a:B > 2362a:B | 79 / 89 | LH when SKY has been charged to C3 (full) 4 times, C2 (blue) 7 times OR C1 (no aura) 10 times. Setsuka gets a big white light when ready upon executing SKY. Can be used once per match. |
| 236A+B+K | 2143B:B:B > 8B+KB > 2143a:B | 81 | LH when all 3 visions are complete, SC moves ready |
| ↳ | ag:B > b:(A) > SKY A+B | 100 |  |
| ↳ | B+KBB+K | 89 / 92 |  |
| ↳ | ag:B > ag:B > 44B+K > 2362A+BAA | 93 |  |
| RE 2nd stage A | BT 2A+B > 8B+KA > BT B+KB > 2362a:B | 83 / 86 | LH when 2nd stage RE attack hits |
| B | 8B+KA > BT B+KB > 2362a:B | 70 | LH when 2nd stage RE attack hits |
| ↳ | 1B+KB | 71 |  |
| K | B+KBB+K | 85 / 90 | LH when 2nd stage RE attack hits |
| (K) |  | 31 | LH when 2nd stage RE attack hits, SKY ready |
| ↳ | SKY A+B | 86 |  |

**REVERSAL EDGE**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| RE 1st stage A | BT 2B+K | 54 |  |
| B | 2143a:B | 63 / 65 |  |
| ↳ | 66B+KB | 63 |  |
| RE 2nd stage A | BT 2A+B > 8B+KA > BT B+KB > 2362a:B | 83 / 86 | LH when 2nd stage RE attack hits |
| B | 8B+KA > BT B+KB > 2362a:B | 70 | LH when 2nd stage RE attack hits |
| ↳ | 1B+KB | 71 |  |
| K | B+KBB+K | 85 / 90 | LH when 2nd stage RE attack hits |
| (K) |  | 31 | LH when 2nd stage RE attack hits. SKY ready |

**SOUL CHARGE**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| 1A:A:A:A:A |  | 60 / 68 | NC |
| ag:B | b:(A) > SKY A+B | 99 / 125 |  |
| 2a(B) | WoH A > 2362a:B | 60 / 62 |  |
| 3B | 2a(B) > WoH A > 2362a:B | 72 |  |
| ↳ | b:(A) > SKY A+B | 105 |  |
| 11*77*2361B | 1:A:A:A:A:A | 75 |  |
| 22*88*236B | b:(A) > SKY A+B | 87 |  |
| 2143A+B | 2143B:B:B | 64 / 68 |  |
| 236A+G | 2aB > WoH A > 2362a:B | 72 |  |
| 214A+G | 2362A+BAA | 68 |  |
| ↳ | 8B+KB > 2aB > WoH A > 2362a:BA | 71 |  |
| LH 22*88K | ag:B > b:(A) > SKY A+B | 162 | LEFT side of opponent only        (Credit: Runaes, Setsuka discord) |
| RE (K) | SKY A+B | 86 |  |
| L1 6B+K |  | 26 | H & M aGI. GI 6-12. At tip range Setsuka dashes forward giving her +12 frame advantage |
| L2 6B+K | 8B+KB > 2aB > WoH A > 2362a:BA | 91 |  |
| ↳ | 8B+KB > CE | 98 |  |
| L3 6B+K | b:(A) > SKY A+B | 102 | Must turn around after L3 6B+K |
| ↳ | 8B+KB > CE | 94 |  |

**WALL HIT**

| Starter | Combo | Dmg | Notes |
|---|---|---|---|
| 3B w! | b:A W! > 2143B:B > 6B > 8B+KB > 214~3a:B | 111 | b:A needs center to left W! angle |
| ↳ | b:A W! > 2143B:B > 2362a:B > 2362a:B | 113 | b:A needs center to left W! angle |
| 214~3a:B | 2362a:B | 56 |  |
| 33*66*236B | b:A W! > 2143B:B > 6B > 8B+KB > 214~3a:B | 99 | b:A needs center to left W! angle |
| ↳ | b:A W! > 2143B:B > 2362a:B > 2362a:B | 102 | b:A needs center to left W! angle |
| CH 33*66*236B | 214~3B:B > 6B > 22A+BA W! > b:A W! > 2362a:B > 2362a:B | 98 | b:A needs center to left W! angle,22A+BA wants to be slightly left of center |
| ↳ | 214~3B:B > 6B > 22A+BA W! > 1B+K W! > BT 2A+B > 8B+KA > BT B+KB > 2362a:B | 103 | 22A+BA wants to be slightly left of center, 1B+K wants to be close to center |
| 6B | 8B+KB > 214~3a:B | 53 |  |
| ↳ | 8K W! > 214~3B:B > 6B > 8B+KB > 214~3a:B | 75 |  |
| ↳ | 8K W! > 214~3B:B > 2362a:B > 2362a:B | 75 |  |
| ↳ | 8K W! > ag:B > ag:B > 2A+B > BTB+KB > 2362a:B | 78 |  |
| ↳ | b:A W! > 214~3B:B > 6B > 8B+KB > 214~3a:B | 98 |  |
| ↳ | b:A W! > 214~3B:B > 2362a:B > 2362a:B | 102 |  |
| CH 6B | 22A+BA W! > b:A  W! > 214~3B:B > 2362a:B > 2362a:B | 95 |  |
| ↳ | 22A+BA W! > 1B+K W! > BT 2A+B > 8B+KA > BT B+KB > 2362a:B | 95 |  |
| 214~3B:B | 6B > 8B+KB > 214~3a:B | 71 |  |
| ↳ | 8K W! > 6B > 8B+KB > 214~3a:B | 76 | 8K needs center to left W! angle |
| ↳ | 8K W! > 214~3B:B > 6B > 8B+KB > 214~3a:B | 91 | 8K needs center to left W! angle |
| ↳ | 8K W! > 214~3B:B > 2362a:B > 2362a:B | 90 | 8K needs center to left W! angle |
| ↳ | 8K W! > ag:B > ag:B > 2A+B > BTB+KB > 2362a:B | 91/96 | 8K needs center to left W! angle |
| ↳ | b:A W! > 214~3B:B > 6B > 8B+KB > 214~3a:B | 118 | b:A needs center to left W! angle |
| ↳ | b:A W! > 214~3B:B > 2362a:B > 2362a:B | 119 | b:A needs center to left W! angle |
| CH 214~3B:B |  |  |  |

### PUNISHERS (Guide tab)

| Position | Impact | Moves | Notes |
|---|---|---|---|
| STANDING | 12 | AA, 2A, 44B+K, 214K | Safe! |
| STANDING | 14 | 2143a:B, BB, 2B | 2143a:B -22 on block |
| STANDING | 16 | 2362a:B, CE, 6B, 236A+B+K | 2362a:B * CE -16 on block |
| STANDING | 18 | 66B, 4KA | Safe! |
| STANDING | 20 | 4B:B, 3B, 8K, 44BA, b:A, 1A / 1A:A | 4B:B -12 on block... b:A -22 on block... 1A * 1A:A -20 on block |
| STANDING | 22 | ag:B | ag:B -22 on block |
| CROUCHING | 12 | 44B+K, FC 2A, WR K | Safe! |
| CROUCHING | 14 | FC 3a:B, FC 2B | FC 3a:B -22 on block |
| CROUCHING | 16 | 2362a:B, FC 3B:B, CE | 2362a:B * CE -16 on block... FC3B:B -14 on block |
| CROUCHING | 18 | 66B, WR B | Safe! |
| CROUCHING | 20 | 4B:B, 2364BA | 4B:B -12 on block |
| CROUCHING | 22 | FC 3A+B | FC 3A+B -20 on block |

Source credit (sheet): "Setsuka bible" doc + translated sheet + Cheat Sheet.
