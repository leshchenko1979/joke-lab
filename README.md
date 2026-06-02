# Joke Lab 🤡🧪

[🇷🇺 Русский](README.ru.md)

---

**Why are LLM jokes usually unfunny?** → [`references/research.md`](https://github.com/leshchenko1979/joke-lab/blob/master/references/research.md)

This repo is a **skill** that teaches any AI agent to draft, review, iterate, and polish jokes using a structured methodology. It follows the standard `SKILL.md` format (Anthropic, OpenAI, OpenCrabs compatible).

---

## Setup

**Primary:** Give your agent this URL and ask it to create a skill from this repo:

```
https://github.com/leshchenko1979/joke-lab
```

The agent reads [`SKILL.md`](SKILL.md) as the entry point (YAML frontmatter + instructions), and loads detailed reference material from [`references/`](https://github.com/leshchenko1979/joke-lab/tree/master/references) and [`examples/`](https://github.com/leshchenko1979/joke-lab/tree/master/examples) as needed.

**Fallback:** Paste the prompt from [`SKILL.md`](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/SKILL.md) into your agent's system instructions.

### Platform tips

| Platform | How to load the skill |
|----------|-----------------------|
| **Claude** | `~/.claude/skills/joke-lab/SKILL.md` or clone the repo and point Claude to the directory |
| **OpenCrabs** | Drop `SKILL.md` under `~/.opencrabs/skills/joke-lab/` — auto-registers as `/joke-lab` |
| **OpenAI / ChatGPT** | Settings → Custom Instructions → paste prompt from SKILL.md |
| **Gemini** | AI Studio → New project → System instructions → paste prompt |
| **Any API** | Pass prompt as `system` / `system_instruction` parameter |

---

## Example results

| Joke | Cycles |
|------|--------|
| *Homework / "It's downloading"* — kid says homework is loading because the notebook hasn't received the update | 6 |
| *Conscience / "Waiting for a call"* — kid can't sleep because conscience hasn't called yet | 3 |
| *Tweet / "This tweet survived 4 drafts"* — meta-announcement that proves the repo works by being created with it | 3 |
| *Tweet 2 / "This is draft 3"* — announcement using the research-enhanced methodology | 3 |
| *Tweet 3 / "12 blind spots"* — skeptical review exposed the methodology's blind spots | 1 |
| *Tweet 4 / "Training it to be wrong"* — first tweet using Author/Reviewer model separation — went through 4 drafts guided by Reviewer feedback | 4 |

Full logs: [`examples/`](https://github.com/leshchenko1979/joke-lab/tree/master/examples)

---

## Files

| File | What | Link |
|------|------|------|
| [`SKILL.md`](SKILL.md) | Skill entry point (required SKILL.md format) | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/SKILL.md) |
| `references/methodology.md` | Full 13-criteria methodology with scoring tables | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/methodology.md) |
| `references/limitations.md` | What the method cannot do — 10 documented constraints | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/limitations.md) |
| `references/research.md` | Academic research on why LLM jokes fail | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/research.md) |
| `examples/` | Full cycle logs with reviews and iterations | [view](https://github.com/leshchenko1979/joke-lab/tree/master/examples) |

---

## License

MIT
