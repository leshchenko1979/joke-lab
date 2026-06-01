# Joke Lab 🧪

[🇬🇧 English](README.md)

Заставьте любого ИИ-агента генерировать по-настоящему смешные шутки
через автоматический цикл **черновик → ревью → исправление → финал**.

## Как работает

Агент пишет черновик, сам проверяет по 9 критериям (инконгруэнтность,
мисдирекшн, ударное слово и т.д.), исправляет проблемы и повторяет,
пока все критерии не зелёные. Максимум 10 циклов. Показывает только финал.

## System prompt (на английском)

Скопируйте в инструкции своего агента (см. гайды по платформам ниже).

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

## Гайды по платформам

### Claude (claude.ai)

**Рекомендуется:** Claude Projects (нужен Pro)

1. Перейдите в [claude.ai/projects](https://claude.ai/projects) → **New Project**
2. Назовите (например "Joke Lab")
3. Откройте **Project settings** → вставьте промпт в **Project instructions**
4. **Save** — каждый диалог в проекте следует циклу

**API:**

```json
{
  "model": "claude-sonnet-4-20250514",
  "system": "<промпт выше>",
  "messages": [{"role": "user", "content": "create a joke about cats"}]
}
```

### ChatGPT (chatgpt.com)

**Рекомендуется (бесплатно):** Custom Instructions

1. Профиль → **Settings** → **Personalization** → **Custom Instructions**
2. Вставьте промпт в **"How would you like ChatGPT to respond?"**
3. **Save** — применяется ко всем новым диалогам

**Альтернатива (Plus):** GPT Builder

1. **Explore GPTs** → **Create** → вкладка **Configure**
2. Вставьте в **Instructions** → **Save**

### Gemini (gemini.google.com)

**Рекомендуется:** Google AI Studio ([aistudio.google.com](https://aistudio.google.com))

1. **New project** → вставьте промпт в **System instructions** (левая панель)

**Альтернатива (Advanced):** Gems

1. [gemini.google.com](https://gemini.google.com) → **Gems** → **Create Gem**
2. Вставьте промпт как инструкции → **Save**

### API (разработчикам)

**OpenAI / ChatGPT:**

```python
response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "system", "content": "<промпт>"},
        {"role": "user", "content": "create a joke about programmers"}
    ]
)
```

**Anthropic / Claude:**

```python
response = client.messages.create(
    model="claude-sonnet-4-20250514",
    system="<промпт>",
    messages=[{"role": "user", "content": "create a joke about cats"}]
)
```

**Google / Gemini:**

```python
model = genai.GenerativeModel(
    model_name="gemini-2.5-flash",
    system_instruction="<промпт>"
)
response = model.generate_content("create a joke about dogs")
```

### Perplexity, Grok, Copilot, DeepSeek и другие

У большинства LLM-приложений есть настройки **custom instructions** или **persona**.
Ищите поле с названием:
- "System prompt"
- "Custom instructions"
- "Persona"
- "Как мне отвечать?"

Вставьте промпт туда.

### OpenCrabs

Добавьте в `~/.opencrabs/commands.toml`:

```toml
[commands.joke-lab]
description = "Создание шуток по методологии joke-lab"
prompt = "<промпт выше>"
action = "prompt"
```

Используйте `/joke-lab` в любом чате OpenCrabs.

## Примеры результатов

| Шутка | Циклов |
|-------|--------|
| *Домашка / «загружается»* — ребёнок утверждает, что домашка грузится, а тетрадь не получила обновление | 6 |
| *Совесть / «важный звонок»* — ребёнок не может уснуть, потому что совесть ещё не позвонила | 3 |

Полные логи циклов: см. `cycles/`

## Файлы

| Файл | Описание |
|------|----------|
| `README.md` / `README.ru.md` | Этот гайд (EN + RU) |
| `research.md` / `research.ru.md` | Почему LLM-шутки несмешные (академические источники) |
| `methodology.md` | 9 критериев + пошаговая схема |
| `cycles/` | Полные логи для обоих примеров |
| `system-prompt.md` | Промпт отдельным файлом |

## Лицензия

MIT
