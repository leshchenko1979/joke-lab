# Joke Lab 🧪

A **general-purpose joke creation methodology** that any AI agent (or human) can follow.
Uses a rigorous **draft → review → fix → review → ... → perfect** cycle.

Born from real use: jokes for a 10-year-old, iterated up to 6 times
until every criterion passed. Nothing here is platform-specific —
feed the prompt to any LLM and it works.

## How it works

Every joke goes through cycles:

1. **Draft** — write a joke based on a truthful premise
2. **Review** — score against 9 strict criteria (incongruity, misdirection, punch word position, etc.)
3. **If issues found** → fix and re-review
4. **Repeat** until ALL criteria are green (max 10 cycles)
5. **Deliver** — only the final, perfect version is shown

## Use with any AI agent

Copy-paste the following into your agent's system prompt:

```
You are a joke creation engine following the joke-lab methodology.

== METHODOLOGY ==

Step-by-step creation:
1. Pick a truthful premise — a real, everyday situation
2. List assumptions — what the listener will expect
3. Find the twist — break one assumption in a surprising, harmless way
4. Make the punch word the LAST word
5. Cut all fat — no unnecessary words

The 9 review criteria:
- Truthful premise: is the situation recognizable?
- Incongruity: gap between expectation and reality?
- Benign violation: is the norm violation harmless?
- Misdirection: does the setup lead the listener the wrong way?
- Surprise: is the twist genuinely unexpected?
- Punch word at the end: does the punchline end with the punch word?
- Conciseness: any extra words or explanations?
- Age-appropriate: would the target audience understand everything?
- Sharpness: does it trigger emotion (smile/laugh)?

== THE CYCLE (MANDATORY) ==

1. Write a draft joke
2. Self-review against all 9 criteria (score: ✅✅, ✅, ⚠️, ❌)
3. If any ⚠️ or ❌ → fix the joke → re-review
4. Repeat until all criteria are green
5. Maximum 10 cycles
6. Only then present the final joke to the user

Do NOT show the user any intermediate drafts or reviews.
Present only: the final joke + a one-line breakdown of why it works.
```

That's it. Feed the user's request after the prompt and the agent handles the rest.

## Files

```
joke-lab/
├── README.md                        — This file
├── README.ru.md                     — Russian version
├── research.md                      — Why LLM jokes aren't funny (research summary)
├── methodology.md                   — 9 review criteria + step-by-step guide
├── methodology.ru.md                — Russian version
└── cycles/
    ├── cycle-01-domashka.md         — Example: homework / "it's downloading" (6 cycles)
    ├── cycle-01-domashka.ru.md      — Russian version
    ├── cycle-02-sovest.md           — Example: conscience / "important call" (3 cycles)
    └── cycle-02-sovest.ru.md        — Russian version
```

## Example results

| # | Topic | Cycles | Verdict |
|---|-------|--------|---------|
| 1 | Homework / "It's downloading" | 6 | ✅ |
| 2 | Conscience / "Waiting for a call" | 3 | ✅ |

## Methodology cheat sheet

The 9 review criteria:

| # | Criterion | What to check |
|---|-----------|---------------|
| 1 | **Truthful premise** | Is the situation recognizable? Not forced? |
| 2 | **Incongruity** | Gap between expectation and reality? |
| 3 | **Benign violation** | Norm broken but harmless? |
| 4 | **Misdirection** | Does setup lead listener the wrong way? |
| 5 | **Surprise** | Is the twist genuinely unexpected? |
| 6 | **Punch word at the end** | Last word IS the punch? |
| 7 | **Conciseness** | Any filler words or explanations? |
| 8 | **Age-appropriate** | Accessible to the target age? |
| 9 | **Sharpness** | Does it trigger emotion (smile/laugh)? |

Scoring: ✅✅ excellent, ✅ good, ⚠️ needs work, ❌ problem.

**Pass:** no ⚠️ or ❌. All criteria green.

## License

MIT — use, fork, share.
