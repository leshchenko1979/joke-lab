# Joke Lab 🧪

A **shareable skill** for structured joke creation using a rigorous **draft → review → fix → review → ... → perfect** cycle.

Born from real use: jokes for a 10-year-old, iterated up to 6 times until every criterion passed.

## How it works

Every joke goes through cycles:

1. **Draft** — write a joke based on a truthful premise
2. **Review** — score against 9 strict criteria (incongruity, misdirection, punch word position, etc.)
3. **If issues found** → fix and re-review
4. **Repeat** until ALL criteria are green (max 10 cycles)
5. **Deliver** — only the final, perfect version is shown

## Install as an OpenCrabs skill

```bash
curl -sL https://raw.githubusercontent.com/leshchenko1979/joke-lab/main/install.sh | bash
```

### Usage

In any OpenCrabs chat:

```
/joke make a joke about a kid who doesn't want to do homework
```

The agent runs the full cycle internally and only presents the final result.

## Files

```
joke-lab/
├── README.md                        — This file
├── README.ru.md                     — Russian version
├── methodology.md                   — 9 review criteria + step-by-step guide
├── methodology.ru.md                — Russian version
├── commands.toml                    — OpenCrabs skill definition
├── install.sh                       — Auto-install script
└── cycles/
    ├── TEMPLATE.md                  — Blank template for new joke cycles
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

## Creating your own jokes

1. Copy `cycles/TEMPLATE.md` to `cycles/your-topic.md`
2. Write a draft based on a truthful premise
3. Score yourself against the 9 criteria
4. If any ⚠️ or ❌ → rewrite and score again
5. Max 10 cycles. If it doesn't pass — change the premise.

## License

MIT — use, fork, share.
