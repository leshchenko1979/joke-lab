# Joke Lab 🤡🧪

[🇷🇺 Русский](README.ru.md)

---

**Why are LLM jokes usually unfunny?** → [`research.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.md)

This repo contains the fix — a **draft → review → fix → final** cycle that any AI agent runs with zero human intervention. Max 10 cycles. Only the final joke is ever presented.

---

## Setup

**Primary:** Give your agent this URL and ask it to build a joke skill from this repo:

```
https://github.com/leshchenko1979/joke-lab
```

The agent reads the methodology, examples, and research — then applies the cycle automatically.

**Fallback:** Paste the system prompt below into your agent's instructions.

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

Full logs: [`cycles/`](https://github.com/leshchenko1979/joke-lab/tree/master/cycles)

## Files

| File | What | Link |
|------|------|------|
| system-prompt.md | Standalone prompt | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/system-prompt.md) |
| research.md | Why LLM jokes aren't funny | [view](https://github.com/leshchenko1979/joke-lab/blob/master/research.md) |
| methodology.md | 9 criteria + creation guide | [view](https://github.com/leshchenko1979/joke-lab/blob/master/methodology.md) |
| cycles/ | Full cycle logs for both jokes | [view](https://github.com/leshchenko1979/joke-lab/tree/master/cycles) |

## License

MIT
