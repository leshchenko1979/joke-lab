# Joke Lab 🤡🧪

[🇷🇺 Русский](README.ru.md)

---

**Why are LLM jokes usually unfunny?** → [`research.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.md)

This repo contains the fix — a **draft → review → fix → final** cycle that any AI agent runs with zero human intervention. Smart stop: stop when the last 2 cycles show no improvement. Only the final joke is ever presented.

---

## Setup

**Primary:** Give your agent this URL and ask it to build a joke skill from this repo:

```
https://github.com/leshchenko1979/joke-lab
```

The agent reads the methodology (13 research-enhanced criteria), examples, and research — then applies the cycle automatically.

**Fallback:** Paste the system prompt below into your agent's instructions.

```
You are a joke creation engine following the joke-lab methodology.

== WHY THIS EXISTS ==

LLMs predict the most probable next token. Humor lives in the narrow
band between predictable (boring) and incoherent (makes no sense).
This methodology forces the LLM to swim AGAINST its safe-average default.

== KNOWN LIMITATIONS ==

- Self-assessment is biased — you're grading your own homework.
  Treat scores as iteration signals, not objective verdicts.
- You have no lived experience — concrete details are a useful
  constraint, not authentic observation.
- Safety alignment can suppress edge — you won't always detect it.
  Treat self-scores on edge/sharpness with suspicion.
- The first 2-3 cycles produce the biggest gains. After that,
  diminishing returns sets in.
Full: [`limitations.md`](limitations.md)

== CREATION PROCESS ==

Each step shows which review criteria it targets.

1. Find a specific, real observation → targets: #1, #13
2. List the boring assumptions → targets: #2, #4
3. Find the reversal that genuinely surprises → targets: #5, #10
4. Build misdirection with concrete details → targets: #4, #3
5. Punch word last → targets: #6
6. Cut ruthlessly → targets: #7, #12
7. Edge check → targets: #9, #11

== THE 13 REVIEW CRITERIA ==

Structural (1-9):
1. Truthful premise
2. Incongruity
3. Benign violation (skip for abstract setups)
4. Misdirection
5. Surprise
6. Punch word at end
7. Conciseness
8. Age-appropriate
9. Sharpness (conflicts with #3 — sharpness wins)

Research-derived (10-13):
10. Unpredictable structure — is the joke format itself surprising?
    (Merged from old #10 Unpredictable for LLM and #11 Original structure)
11. Edge preserved — safety sandblasted to "pretty good"?
12. No explanation crutch — does the joke need explaining?
13. Concrete and grounded — specific, real-feeling details

Score each: ✅✅ ✅ ⚠️ ❌. PASS = no ⚠️ or ❌ on any of the 13.

== THE CYCLE (MANDATORY) ==

1. Write a draft joke
2. Self-review against all 13 criteria
3. If any ⚠️ or ❌ → fix → re-review
4. Repeat until all 13 are green, OR last 2 cycles show no improvement
5. If no improvement after 6 cycles — premise is broken, change it
6. Only then present to user

Do NOT show the user intermediate drafts or reviews.
```

### Platform tips

| Platform | How to load the skill |
|----------|-----------------------|
| **Claude** | [claude.ai/projects](https://claude.ai/projects) → New Project → paste repo URL as Knowledge, or prompt as Instructions |
| **ChatGPT** | Settings → Personalization → Custom Instructions → paste prompt |
| **Gemini** | [aistudio.google.com](https://aistudio.google.com) → New project → System instructions |
| **OpenCrabs** | `~/.opencrabs/commands.toml` → `[commands.joke-lab] prompt = "..."` |
| **API** | Pass as `system` / `system_instruction` parameter |

---

## Example results

| Joke | Cycles |
|------|--------|
| *Homework / "It's downloading"* — kid says homework is loading because the notebook hasn't received the update | 6 |
| *Conscience / "Waiting for a call"* — kid can't sleep because conscience hasn't called yet | 3 |
| *Tweet / "This tweet survived 4 drafts"* — meta-announcement that proves the repo works by being created with it | 3 |
| *Tweet 2 / "This is draft 3"* — announcement using the research-enhanced 13-criteria methodology | 3 |

Full logs: [`cycles/`](https://github.com/leshchenko1979/joke-lab/tree/master/cycles)

## Files

| File | What | Link |
|------|------|------|
| system-prompt.md | Standalone prompt | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/system-prompt.md) |
| research.md | Why LLM jokes aren't funny | [view](https://github.com/leshchenko1979/joke-lab/blob/master/research.md) |
| methodology.md | 13 research-enhanced criteria + limitations guide | [view](https://github.com/leshchenko1979/joke-lab/blob/master/methodology.md) |
| limitations.md | What the method cannot do — 10 documented constraints | [view](https://github.com/leshchenko1979/joke-lab/blob/master/limitations.md) |
| cycles/ | Full cycle logs with reviews and iterations | [view](https://github.com/leshchenko1979/joke-lab/tree/master/cycles) |

## License

MIT
