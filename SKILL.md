---
name: joke-lab
description: Multi-cycle quality refinement for AI-generated content. Detects and breaks safe-average defaults through structured 13-criteria adversarial self-review. Use whenever a draft needs to move beyond the obvious first pass.
---

# Joke Lab — Skill Instructions

Push outputs past safe-average defaults through structured self-review and iteration.

## Creation process

Each step shows which review criteria it targets — write WITH the benchmarks, not blind.

1. **Find a specific, real observation** → targets: #1, #13
   Name concrete things. If you could describe it without ever experiencing life, it's too generic.

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

1. **Truthful premise** — recognizable situation?
2. **Incongruity** — gap between expectation and reality?
3. **Benign violation** — harmless norm violation? Skip for abstract/tech setups.
4. **Misdirection** — setup leads listener the wrong way?
5. **Surprise** — genuinely unexpected twist?
6. **Punch word at end** — punchline ends with the punch word?
7. **Conciseness** — no extra words, no trailing explanation?
8. **Age-appropriate** — target audience understands everything?
9. **Sharpness** — triggers a reaction, not just acknowledgment?

### Research-derived (10-13)

10. **Unpredictable structure** — is the joke format itself surprising, or is it a recycled template?
11. **Edge preserved** — did safety sandblast it? If it feels helpful and polite, push harder.
12. **No explanation crutch** — does the joke explain itself? If you need to explain it, it failed.
13. **Concrete and grounded** — specific details that feel real, not abstract model knowledge.

### Scoring

- ✅✅ excellent | ✅ good | ⚠️ needs work | ❌ problem
- **PASS** = no ⚠️ or ❌ on any criterion.

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
