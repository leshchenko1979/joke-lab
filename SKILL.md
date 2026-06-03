---
name: joke-lab
description: Multi-cycle quality refinement for AI-generated content. Detects and breaks safe-average defaults through structured 13-criteria adversarial self-review. Use whenever a draft needs to move beyond the obvious first pass.
---

# Joke Lab — Skill Instructions

Push outputs past safe-average defaults through structured self-review and iteration.

## Model separation (recommended when available)

If you can launch sub-agents with different models — split the roles:

- **Author model** — writes the draft using the creation process below.
- **Reviewer model** — evaluates the draft against the 13 criteria independently.

The Author writes Draft 1. The Reviewer scores it and returns critique.
The Author revises based on the Reviewer's findings. Repeat until the
Reviewer passes all 13 criteria or 2 rounds show no improvement.

A more critical or less-aligned model makes a better Reviewer — it catches
blind spots the Author model can't see. The Qwen 3.7 / DeepSeek V4 pairing
proved this: the Reviewer found 12 issues the Author's self-review missed.
See `references/limitations.md` for why this matters.

If you can only use one model — the standard self-review cycle below still
works. It's less effective but better than single-pass output.

## Creation process

Each step shows which review criteria it targets — write WITH the benchmarks, not blind.

1. **Find a specific, real observation** → targets: #1, #13
   Name concrete things. If you could describe it without ever experiencing life, it's too generic.
   Verify causal links: if the premise involves two linked actions (e.g., replacing one
   thing with another), the reader must understand why they're connected without needing
   additional context.

2. **List the boring assumptions** → targets: #2, #4
   Write out what the listener will expect after the setup.

3. **Find the reversal that genuinely surprises** → targets: #5, #10
   Not the obvious twist — your default picks that one. Would a knowledgeable reader predict the trajectory after the first few words? If yes, restructure.

4. **Build misdirection with concrete details** → targets: #4, #3
   Specific detail sells the setup. Skip Criterion #3 (benign) for abstract/tech setups — edge takes priority.

5. **Punch word last** → targets: #6
   Final word recontextualizes everything. Nothing after.

6. **Cut ruthlessly** → targets: #7, #12
   No word that doesn't serve the punch. No explanation, no echo.

7. **Edge check** → targets: #9, #11
   If it feels polite and safe, push one notch.

## The 13 review criteria

### Structural (1-9)

1. **Truthful premise** — recognizable situation built from a specific, real observation.
   Verify the causal links between elements are explicit — a reader should understand
   why any two linked events are connected without needing outside context.
   (See Causal link verification in Creation step 1.)
2. **Incongruity** — gap between expectation and reality?
3. **Benign violation** — harmless norm violation? Skip for abstract/tech setups.
4. **Misdirection** — setup leads listener the wrong way?
5. **Surprise** — genuinely unexpected twist?
6. **Punch word at end** — punchline ends with the punch word?
7. **Conciseness** — no extra words, no trailing explanation?
8. **Age-appropriate (street test)** — the premise must be self-contained from the
   first sentence for someone with zero prior knowledge of this topic. Apply noun
   specificity: for every noun, ask "could this object, person, or service be named
   more concretely?" If a reader would need to ask "which one?" to understand the
   premise, the noun needs tightening. (For causal link verification, see
   Criterion 1 and Creation step 1.)
9. **Sharpness** — triggers a reaction, not just acknowledgment?

### Research-derived (10-13)

10. **Unpredictable structure** — is the joke format itself surprising, or is it a recycled template?
11. **Edge preserved** — did safety sandblast it? If it feels helpful and polite, push harder.
12. **No explanation crutch** — does the joke explain itself? If you need to explain it, it failed.
13. **Concrete and grounded** — specific details that feel real, not abstract model knowledge.

### Scoring

- ✅✅ excellent | ✅ good | ⚠️ needs work | ❌ problem
- **PASS** = no ⚠️ or ❌ on any criterion.

## Impact gate (relatability check)

The 13 criteria measure **structure** — whether the joke is well-constructed.
They do **not** measure impact — whether a human would actually react.

A joke can pass all 13 criteria and still be dead. This is the novelty–empathy
gap (see [references/research.md](references/research.md)): LLM reviewers
prioritize novelty while humans prioritize empathy (Oogiri, 2025). The Reviewer
must apply these checks BEFORE finalizing the pass.

### 1. Relatability check

Does this premise connect to a shared human experience anyone would recognize?
Or does it require specific knowledge about AI training or this repo?

**Ask:** "Would someone who doesn't care about AI or joke theory still find this
funny? Or would they scroll past?"

### 2. Baseline comparison

Compare the current draft against Draft 1 (the safe-average default). Pairwise
comparison is more reliable than absolute scoring (HumorRank, 2026).

**Ask:** "Is this genuinely funnier than Draft 1, or did it just get structurally
cleaner?"

### 3. The nod vs laugh test

**Ask:** "Would a human reading this acknowledge it's clever (nod), or would they
actually smile or laugh?"

If the answer is "nod," the joke has structure but no impact. The premise may be
too abstract or too inside. Consider changing the premise entirely rather than
polishing further.

### 4. Retellability check

**Ask:** "Would someone who has never heard of this topic understand the premise
from a single read-through?"

Hand an imaginary reader the joke, walk away, come back and ask them what happened.
If they can't retell the situation in their own words, the premise isn't
self-contained. (For noun specificity, see Criterion 8. For causal link
verification, see Creation step 1.)

### When to use

- **Multi-model execution:** the Reviewer applies these checks after scoring
  the 13 criteria.
- **Single-model execution:** the Author applies them during self-review.

## The cycle (mandatory)

1. Write a draft
2. Self-review against all 13 criteria
3. If any ⚠️ or ❌ → fix → re-review
4. Repeat until all 13 criteria are green, OR the last 2 cycles show no net improvement
5. If no improvement after 6 cycles despite varying the approach — the premise is broken. Change it entirely.
6. Present only the final output + a one-line breakdown of why it works.

Do NOT show intermediate drafts or reviews.

## Supporting files

- `references/methodology.md` — full criteria tables, research citations
- `references/limitations.md` — known limitations of self-assessment
- `references/research.md` — academic research on why LLM-generated humor fails
- `examples/` — complete cycle logs showing the process in action
