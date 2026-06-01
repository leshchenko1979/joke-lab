# Joke Creation Methodology

Sources: Toastmasters International, Humor Blueprint, humor theory,
Jentzsch & Kersting (2023), Fabulich (2025), Izayohi (2026),
Murphy (2026), Yamakov et al. (2025), Toplyn & Amir (2025).

## Why this methodology exists

LLMs are trained to predict the **most probable next token** — but humor
lives in the narrow band between *predictable* (boring) and *incoherent*
(makes no sense). Most LLM output gravitates toward the safe average,
which is exactly where jokes go to die.

The methodology below **forces the LLM to swim against its own architecture**:
it specifically targets the failure modes documented in the research
(see [`research.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.md)).

## Step-by-step process

1. **Find a specific, real observation**
   — abstractions aren't funny. Name concrete things: objects, places,
   specific behaviors. If an LLM could describe it without ever experiencing
   life, it's too generic. Draw from particular details.
   *(Research: no lived experience — Yamakov et al. 2025)*

2. **List the boring assumptions**
   — what will the listener assume after the setup? Write them out.
   The obvious assumption is your target.

3. **Find the reversal that genuinely surprises**
   — not the most obvious twist (that's what every LLM picks by default).
   Find the specific angle that creates genuine incongruity.
   *(Research: LLMs minimize surprise by design — Fabulich 2025, Murphy 2026)*

4. **Build misdirection with concrete details**
   — a specific, weird detail makes the setup feel real and leads the
   listener into the wrong conclusion naturally. Generic setups produce
   generic punchlines.

5. **Punch word as the last word**
   — the final word recontextualizes everything. Nothing after it.

6. **Cut ruthlessly**
   — every word that doesn't advance the misdirection or deliver the
   punch dies. No trailing explanation, no setup echo.

7. **Edge check**
   — is this genuinely funny and sharp, or is it "pretty good"
   (i.e., sandblasted by safety alignment)? If it feels polite and safe,
   push it one notch further without crossing into offense.
   *(Research: RLHF suppresses edge — Izayohi 2026, Mirowski et al. 2024)*

## Review criteria (14 items)

### Structural criteria (original 9)

| # | Criterion | What we check |
|---|-----------|---------------|
| 1 | **Truthful premise** | Is the situation recognizable? Is it forced? |
| 2 | **Incongruity** | Gap between expectation and reality? |
| 3 | **Benign violation** | Norm violation harmless? Nobody gets hurt? |
| 4 | **Misdirection** | Does the setup lead the listener the wrong way? |
| 5 | **Surprise** | Is the twist genuinely unexpected? |
| 6 | **Punch word at the end** | Does the punchline end with it? |
| 7 | **Conciseness** | Any extra words, lines, explanations? |
| 8 | **Age-appropriate** | Would the target audience understand every word? |
| 9 | **Sharpness** | Does it trigger emotion (smile/laugh)? |

### Research-derived criteria (5 new)

| # | Criterion | What we check |
|---|-----------|---------------|
| 10 | **Unpredictable for an LLM** | Would a generic LLM produce something close to this? If yes, it's not surprising enough. The safe average is the enemy. *(Fabulich 2025, Murphy 2026)* |
| 11 | **Original structure** | Is this a fresh structure or a recycled format? Jentzsch & Kersting (2023) found >90% of ChatGPT jokes were the same 25 patterns. Stuffing new topics into old templates isn't creation — it's fill-in-the-blank. |
| 12 | **Edge preserved** | Did safety alignment sandblast the joke to "pretty good"? Can you take it one notch further without offense? If the model refused to write something borderline, it probably sandblasted the punch. *(Izayohi 2026)* |
| 13 | **No explanation crutch** | Does the joke explain itself within the joke? LLMs will fabricate reasons why something is funny even when it isn't (Jentzsch & Kersting 2023). If your review rationalizes a flat punch, the joke failed. If you need to explain it — it's not funny. |
| 14 | **Concrete and grounded** | Does the joke feel real? Specific details that come from observing life, not from abstract model knowledge. Great comedy uses concrete, named things the LLM couldn't have invented. *(Yamakov et al. 2025)* |

## Scoring

- ✅✅ — excellent
- ✅ — good
- ⚠️ — could be improved
- ❌ — problem, needs fixing

**Verdict "PASS":** no ⚠️ or ❌. All 14 criteria green.

## Max cycles

10. If a joke doesn't pass in 10 cycles — the premise is broken, change the setup entirely. The LLM is fighting against its own architecture; sometimes the only fix is a different premise that naturally creates the surprise gap.

## Why counting drafts matters

Every rejected draft is evidence that you steered the model away from its
safe-average default. The cycle-03 tweet example went through 3 drafts:
Draft 1 (feature list ❌), Draft 2 (cliché punchline ⚠️), Draft 3 (meta-reveal ✅).
Without the cycle, the LLM would have served Draft 1 — and it would have been forgotten immediately.
