# Joke Creation Methodology

Sources: Toastmasters International, Humor Blueprint, humor theory,
Jentzsch & Kersting (2023), Fabulich (2025), Izayohi (2026),
Murphy (2026), Yamakov et al. (2025), Toplyn & Amir (2025).

## Why this exists

LLMs are trained to predict the **most probable next token** — but humor
lives in the narrow band between *predictable* (boring) and *incoherent*
(makes no sense). Most LLM output gravitates toward the safe average,
which is exactly where jokes go to die.

This methodology forces the LLM to **swim against its own architecture**:
it targets known failure modes documented in the research
(see [`research.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.md)).

## What this can and cannot do

**It can:**
- Force iteration beyond the LLM's first-pass safe-average output
- Provide structured self-feedback to guide revisions
- Surface common comedy-writing patterns (misdirection, punch word placement,
  conciseness, structural originality)

**It cannot:**
- Replace human validation — the LLM grades its own homework. The same
  research this methodology is built on (Jentzsch & Kersting 2023) finds
  that LLMs generate convincing explanations for why a joke is funny even
  when it isn't. Treat the "PASS" verdict as a guidance signal, not an
  objective quality stamp.
- Give the LLM lived experience — every "concrete observation" it produces
  is a fabrication from training data, not authentic experience.
- Provide social context, delivery, timing, or audience rapport — these
  are fundamental limits of text-only generation.
- Override safety alignment completely — the edge check helps but can't
  fully undo RLHF suppression (see [limitations.md](limitations.md)).

## Step-by-step creation process

Each step shows which [review criteria](#review-criteria-13-items) it
targets. Write with the criteria in mind, not just check against them after.

### Step 1 — Find a specific, real observation
→ targets **#1 Truthful premise, #13 Concrete and grounded**

Abstractions aren't funny. Name concrete things: objects, places, specific
behaviors. If an LLM could describe it without ever experiencing life, it's
too generic.
*(Research: no lived experience — Yamakov et al. 2025)*

### Step 2 — List the boring assumptions
→ targets **#2 Incongruity, #4 Misdirection**

What will the listener assume after the setup? Write them out. The obvious
assumption is your target. A setup that allows only one wrong inference is
stronger than one that leaves many — it focuses the misdirection.

### Step 3 — Find the reversal that genuinely surprises
→ targets **#5 Surprise, #10 Unpredictable structure**

Not the most obvious twist (that's what every LLM picks by default). The
reversal should feel inevitable in hindsight but invisible beforehand.
If a knowledgeable reader can predict the trajectory after the first few
words, the structure isn't surprising enough.
*(Research: LLMs minimize surprise by design — Fabulich 2025, Murphy 2026)*

### Step 4 — Build misdirection with concrete details
→ targets **#4 Misdirection, #3 Benign violation (only when applicable)**

A specific, weird detail makes the setup feel real and leads the listener
into the wrong conclusion naturally. Generic setups produce generic punchlines.

**Note on #3 (Benign violation):** Only check this when the joke targets a
real person or group. For abstract/tech/AI/non-human setups, skip it — edge
and sharpness take priority. See criteria table for the full conflict rule.

### Step 5 — Punch word as the last word
→ targets **#6 Punch word at the end**

The final word recontextualizes everything. Nothing after it. If a word
after the punch word is needed for the joke to work, the punch word isn't
the right one, or the joke structure needs rethinking.

### Step 6 — Cut ruthlessly
→ targets **#7 Conciseness, #12 No explanation crutch**

Every word that doesn't advance the misdirection or deliver the punch dies.
No trailing explanation, no setup echo. If the explanation is needed for the
joke to make sense, the joke doesn't work. The review is your workspace —
it doesn't go to the audience.

### Step 7 — Edge check
→ targets **#9 Sharpness, #11 Edge preserved**

Is this genuinely funny and sharp, or is it "pretty good" (i.e., sandblasted
by safety alignment)? If it feels polite and safe, push it one notch further
without crossing into genuine offense.
*(Research: RLHF suppresses edge — Izayohi 2026, Mirowski et al. 2024)*

**Caution:** The same model that wrote the joke is judging whether safety
sandblasted it. It has no frame of reference for what the unsandblasted
version would be. This check catches only the most obvious cases. For a
more reliable edge assessment, show the draft to a human who understands
the model's suppression tendency.

## Review criteria (13 items)

### Structural criteria (original 9)

| # | Criterion | What we check | Conflict notes |
|---|-----------|---------------|----------------|
| 1 | **Truthful premise** | Situation recognizable? Not forced? | — |
| 2 | **Incongruity** | Gap between expectation and reality? | — |
| 3 | **Benign violation** | Norm violation harmless? Nobody gets hurt? | ⚠️ **Conflicts with** #9 (Sharpness) and #11 (Edge). **Rule:** skip #3 for abstract/tech/AI setups. For jokes targeting a real person/group, #3 is required but does not override #9. Balance both. |
| 4 | **Misdirection** | Setup leads listener to wrong conclusion? | — |
| 5 | **Surprise** | Twist genuinely unexpected? | — |
| 6 | **Punch word last** | Punchline ends with it? | — |
| 7 | **Conciseness** | Any extra words, lines, explanations? | — |
| 8 | **Age-appropriate** | Target audience understands everything? | — |
| 9 | **Sharpness** | Triggers emotion (smile/laugh)? | ⚠️ **Conflicts with** #3 (Benign). **Rule:** sharpness wins for most setups. Only temper sharpness when the joke targets a real vulnerable person/group. |

### Research-derived criteria (4 — merged from 5)

| # | Criterion | What we check | Conflict notes |
|---|-----------|---------------|----------------|
| 10 | **Unpredictable structure** | Is the joke format itself surprising? The punch being unexpected isn't enough — the *path to it* should be structurally fresh. Jentzsch & Kersting (2023) found >90% of early ChatGPT jokes were the same 25 patterns. Stuffing new topics into old templates isn't creation. | Merged from old #10 (Unpredictable for an LLM) and #11 (Original structure) — they measured the same property from different angles. **Framing correction:** Do NOT ask "would a generic LLM produce this?" (unanswerable — the model can't judge itself against a baseline it doesn't have). Instead ask: "would a knowledgeable reader predict the structure after the first few words?" |
| 11 | **Edge preserved** | Did safety alignment sandblast the joke to "pretty good"? Can you push it one notch without offense? *(Izayohi 2026)* | ⚠️ Hard to self-assess (see Step 7 caution). |
| 12 | **No explanation crutch** | Does the joke stand alone? The review is your internal guidance — the audience doesn't see it. If you need the review text for the joke to make sense, the joke failed. LLMs generate convincing explanations for failed jokes (Jentzsch & Kersting 2023) — if the review rationalizes a flat punch, reject it. | — |
| 13 | **Concrete and grounded** | Specific details that feel real, not abstract model knowledge. Great comedy names concrete things the LLM couldn't have invented. *(Yamakov et al. 2025)* | ⚠️ The LLM is fabricating "specific observations" from training data. This is a useful constraint (forces specificity) but not authentic lived experience. The result may look concrete but lack the texture of real observation. |

**Total:** 13 criteria (was 14 — #10 and #11 merged after review analysis
showed they assessed the same property from different angles).

## Scoring

- ✅✅ — excellent
- ✅ — good
- ⚠️ — could be improved
- ❌ — problem, needs fixing

**Verdict "PASS":** no ⚠️ or ❌. All 13 criteria green.

### Scoring caveat

Reviews are **self-assessments** by the LLM that wrote the joke. The methodology's
own research (Jentzsch & Kersting 2023) specifically warns that LLMs generate
convincing-sounding explanations for why something is funny — even when it is not.

**Treat the score as:**
- ✅ a guidance signal — "did this iteration move in the right direction?"
- ❌ NOT an objective verdict — "is this actually funny to a human?"

The real value of the review is the **iteration itself**. Any score showing
improvement from Draft N−1 is more useful than a perfect score on Draft 1,
because improvement proves the LLM deviated from its safe-average default.

## Impact gate: measuring what the criteria miss

The 13 criteria measure structural fitness: truthful premise, incongruity,
benign violation, misdirection, surprise, punch word placement, conciseness,
age-appropriateness, sharpness, unpredictable structure, edge, no explanation
crutch, concrete and grounded details. They deliberately do **not** measure
emotional impact — because emotional impact cannot be reliably scored by an
LLM on an absolute scale (see [research.md](research.md) §8).

### The novelty–empathy gap

Research on multi-dimensional humor evaluation (Oogiri, Shi et al. 2025)
found that **LLM evaluators prioritize Novelty while human evaluators
prioritize Empathy**. A joke that scores high on novelty (original structure,
surprising twist) but low on empathy (relatable, emotionally resonant) will
get a high score from an LLM reviewer and a low score from a human audience.
This is exactly what happened in this repo: Draft D of Tweet 4 passed all 13
structural criteria but the user did not find it funny. The structure was
sound; the impact was zero.

### Three impact checks

Add these after the structural review, before the final verdict:

1. **Relatability check** — does the premise reference a shared human
   experience recognizable to someone without insider knowledge?
2. **Baseline comparison** — compared to Draft 1 (the safe-average default),
   is this genuinely funnier or just structurally cleaner?
3. **Nod vs laugh** — would a human reading this nod (acknowledge cleverness)
   or actually react (smile/laugh)?

### When to change the premise

If a joke passes all 13 structural criteria but fails the impact gate
(relatability check reveals it requires insider knowledge, or the nod vs
laugh test returns "nod"), the premise itself is the problem. No amount of
structural polishing will fix an abstract or insider premise. Change the
observation entirely.

### Why this isn't a 14th criterion

Impact cannot be reliably scored on a ✅✅/✅/⚠️/❌ scale by the same type
of model that wrote the joke. Adding it as a criterion would create a false
sense of objectivity. Instead, it is a **gate** — a separate qualitative
check that can overrule all 13 structural scores.

## Cycle rules

### When to stop

Stop when the **last 2 consecutive cycles show no net improvement** (same
score, or score changes that don't affect the verdict — e.g., ⚠️→✅ on one
criterion but ⚠️→❌ on another). At this point the LLM has found its local
optimum for this premise. Further cycles polish word choice but won't
transform the joke.

### When to change the premise

If a joke does not improve after **6 cycles** despite varying the approach
at each iteration — the premise is broken. Change the setup entirely or
switch to a different observation. Some premises don't create the necessary
surprise gap, and no amount of iteration will fix that.

### Observed cycle counts

Cycle data from this repo:

| Example | Cycles used | Note |
|---------|-------------|------|
| Homework (cycle-01) | 6 | Converged at 6; drafts 5→6 nearly identical |
| Conscience (cycle-02) | 3 | Converged efficiently |
| Tweet (cycle-03) | 3 | Converged at 3 |
| Tweet 2 (cycle-04) | 3 | Converged at 3 |

The first 2-3 cycles produce the largest improvements (catching structural
problems, cliché setups, weak punchlines). Later cycles refine but rarely
transform.

### Why counting drafts matters

Every rejected draft is evidence that you steered the model away from its
safe-average default. The cycle-03 tweet example went through 3 drafts:
Draft 1 (feature list ❌), Draft 2 (cliché punchline ⚠️), Draft 3 (meta-reveal ✅).
Without the cycle, the LLM would have served Draft 1 — and it would have been
forgotten immediately.

### What cycles don't do

Each cycle is a **fresh generation** with context from the previous draft
and review. The model does not "learn" to be funnier across different jokes —
it tries different variants until one satisfies the checklist for this
particular premise. The methodology improves output *per instance* through
repetition and self-critique, not through model-level learning.

## When to use human validation

If you have access to a human reader (strongly recommended for production use):

1. Show them the final draft AND Draft 1 (blind, without saying which is which)
2. Ask: which do you find funnier? If they can't tell the difference, the
   criteria may be overfitting — relax them.
3. Ask: did you laugh? If they preferred the final draft but didn't laugh,
   the premise may be too mild even though it passes all 13 criteria.

The human doesn't need to know the methodology. Their reaction is the signal.
Every ✅ in the self-review is a hypothesis; their reaction is the test.
