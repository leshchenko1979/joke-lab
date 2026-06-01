# Joke Lab 🧪

[🇷🇺 Русский](README.ru.md)

Make any AI agent generate genuinely funny jokes using a rigorous
**draft → review → fix → final** cycle — fully automated.

## How it works

The agent writes a draft, self-reviews against 9 criteria (incongruity,
misdirection, punch-word position, etc.), fixes any issues, and repeats
until every criterion passes. Max 10 cycles. Only the final joke is shown.

## System prompt

Paste this into your agent's system instructions (see setup guides below).

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

## Setup guides by platform

### Claude (claude.ai)

**Recommended:** Claude Projects (Pro required)

1. Go to [claude.ai/projects](https://claude.ai/projects) → **New Project**
2. Name it (e.g. "Joke Lab")
3. Open **Project settings** → paste the system prompt into **Project instructions**
4. Click **Save** — every conversation in this project now follows the cycle

**Alternative — API:**

```json
{
  "model": "claude-sonnet-4-20250514",
  "system": "<paste system prompt above>",
  "messages": [{"role": "user", "content": "create a joke about cats"}]
}
```

### ChatGPT (chatgpt.com)

**Recommended (free):** Custom Instructions

1. Click your profile → **Settings** → **Personalization** → **Custom Instructions**
2. Paste the system prompt into **"How would you like ChatGPT to respond?"**
3. Click **Save** — applies to all new conversations

**Alternative (Plus):** GPT Builder

1. Click **Explore GPTs** → **Create** → **Configure** tab
2. Paste into **Instructions** field → **Save** — reusable as a dedicated GPT

### Gemini (gemini.google.com)

**Recommended:** Google AI Studio ([aistudio.google.com](https://aistudio.google.com))

1. Click **New project** → paste the system prompt into **System instructions** (left panel)
2. Send your first message — the instruction applies for the whole project

**Alternative (Advanced):** Gems

1. Open [gemini.google.com](https://gemini.google.com) → **Gems** → **Create Gem**
2. Paste the system prompt as instructions → name it → **Save**

### API (developer)

**OpenAI / ChatGPT API:**

```python
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "<paste system prompt above>"},
        {"role": "user", "content": "create a joke about programmers"}
    ]
)
```

**Anthropic / Claude API:**

```python
response = client.messages.create(
    model="claude-sonnet-4-20250514",
    system="<paste system prompt above>",
    messages=[{"role": "user", "content": "create a joke about cats"}]
)
```

**Google / Gemini API:**

```python
model = genai.GenerativeModel(
    model_name="gemini-2.5-flash",
    system_instruction="<paste system prompt above>"
)
response = model.generate_content("create a joke about dogs")
```

### Perplexity, Grok, Copilot, DeepSeek, etc.

Most LLM chat apps offer a **custom instructions** or **persona** settings page.
Look for a field labelled:
- "System prompt"
- "Custom instructions"
- "Persona"
- "How should I respond?"

Paste the system prompt there. See each platform's docs for exact location.

### OpenCrabs

Add to `~/.opencrabs/commands.toml`:

```toml
[commands.joke-lab]
description = "Generate a joke using joke-lab methodology"
prompt = "<paste system prompt above>"
action = "prompt"
```

Then use `/joke-lab` in any OpenCrabs chat.

## Example results

| Joke | Cycles |
|------|--------|
| *Homework / "It's downloading"* — kid claims homework is loading because the notebook hasn't received the update | 6 |
| *Conscience / "Waiting for a call"* — kid can't sleep because conscience hasn't called yet | 3 |

Full cycle logs: see `cycles/`

## Files

| File | What |
|------|------|
| `README.md` / `README.ru.md` | This guide (EN + RU) |
| `research.md` / `research.ru.md` | Why LLM jokes aren't funny (academic sources) |
| `methodology.md` | 9 criteria + step-by-step creation guide |
| `cycles/` | Full cycle logs for both example jokes |
| `system-prompt.md` | Standalone prompt file (same as block above) |

## License

MIT
