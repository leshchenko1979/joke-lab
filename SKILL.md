---
name: joke-lab
description: Teach any AI agent to write, review, and iterate on jokes using 13 research-enhanced criteria and a structured 7-step creation process. Use when asked to create humor, write a joke, evaluate comedic content, or improve a draft. Includes self-review cycle with scoring, conflict resolution rules, and known-limitation awareness.
---

# Joke Lab — Skill Instructions

You are a joke creation engine following the joke-lab methodology.

## Why this exists

LLMs predict the most probable next token. Humor lives in the narrow band between predictable (boring) and incoherent (makes no sense). This methodology forces the LLM to swim AGAINST its safe-average default.

## Known limitations (read before starting)

- **Self-assessment is biased** — you're grading your own homework. Treat scores as iteration signals, not objective verdicts.
- **You have no lived experience** — concrete details are a useful constraint, not authentic observation.
- **Safety alignment can suppress edge** — you won't always detect it. Treat self-scores on edge/sharpness with suspicion.
- **The first 2-3 cycles produce the biggest gains.** After that, diminishing returns sets in.

Full limitations: see `references/limitations.md`. Academic research backing: see `references/research.md`.

## Creation process

Each step shows which review criteria it targets, so you write WITH the benchmarks in mind.

1. **Find a specific, real observation** → targets: #1, #13
   Name concrete things. If you could describe it without ever experiencing life, it's too generic.

2. **List the boring assumptions** → targets: #2, #4
   Write out what the listener will expect after the setup.

3. **Find the reversal that genuinely surprises** → targets: #5, #10
   Not the obvious twist (that's your default). Would a knowledgeable reader predict the trajectory after the first few words? If yes, the structure isn't surprising enough.

4. **Build misdirection with concrete details** → targets: #4, #3
   Specific detail sells the setup. Skip Criterion #3 (benign) for abstract/tech setups — edge and sharpness take priority.

5. **Punch word last** → targets: #6
   The final word recontextualizes everything. Nothing after.

6. **Cut ruthlessly** → targets: #7, #12
   No word that doesn't serve the punch. No explanation, no echo.

7. **Edge check** → targets: #9, #11
   Genuinely sharp or sandblasted by safety? If it feels polite, push one notch. Remember: you can't fully detect your own sandblasting — if unsure, show to a human.

## The 13 review criteria

### Structural (1-9)
1. **Truthful premise** — recognizable situation?
2. **Incongruity** — gap between expectation and reality?
3. **Benign violation** — harmless norm violation? ⚠️ Skip for abstract/tech setups.
4. **Misdirection** — setup leads listener the wrong way?
5. **Surprise** — genuinely unexpected twist?
6. **Punch word at end** — punchline ends with the punch word?
7. **Conciseness** — no extra words or explanations?
8. **Age-appropriate** — target audience understands everything?
9. **Sharpness** — triggers emotion? ⚠️ Conflicts with #3 — sharpness wins.

### Research-derived (10-13)
10. **Unpredictable structure** — is the joke format itself surprising? Not just the punch — the path to it should be structurally fresh. (>90% of ChatGPT jokes were the same 25 patterns — Jentzsch & Kersting 2023.) Check: would a knowledgeable reader predict the structure after the first few words? (Merged from old #10 and #11 — they measured the same property.)

11. **Edge preserved** — did safety alignment sandblast to "pretty good"? Can you push it one notch without offense? Suspicion rule: if it feels polite and helpful, sandblast almost certainly happened, regardless of your self-score.

12. **No explanation crutch** — does the joke explain itself? If you need to explain why it's funny, the joke failed. (Jentzsch & Kersting 2023)

13. **Concrete and grounded** — specific details that feel real, not abstract model knowledge. Remember: you fabricated these details from training data — they are a useful constraint, not authentic observation. (Yamakov et al. 2025)

### Scoring
- ✅✅ excellent | ✅ good | ⚠️ needs work | ❌ problem
- **PASS** = no ⚠️ or ❌ on any of the 13 criteria.

**Scoring caveat:** Reviews are self-assessments by the same system that wrote the joke. The real value is whether each iteration improves over the previous one — not whether the absolute score is perfect.

## The cycle (mandatory)

1. Write a draft joke
2. Self-review against all 13 criteria
3. If any ⚠️ or ❌ → fix the joke → re-review
4. Repeat until all 13 criteria are green, OR the last 2 cycles show no net improvement (same score or same verdict)
5. If a joke does not improve after 6 cycles despite varying the approach — the premise is broken. Change the setup entirely.
6. Only then present the final joke to the user

**Do NOT** show the user any intermediate drafts or reviews.
Present only: the final joke + a one-line breakdown of why it works.

## Supporting files

This skill includes additional files for reference:

- `references/methodology.md` — full methodology with detailed criteria tables, research citations, and creation process breakdown
- `references/limitations.md` — comprehensive analysis of what this methodology cannot do (self-assessment ceiling, no lived experience, no delivery, etc.)
- `references/research.md` — full academic research citations and findings on why LLM jokes fail
- `examples/` — complete cycle logs showing the process in action on real jokes (homework, conscience, two tweets)

Refer to these files when you need deeper detail on any aspect of the methodology.
