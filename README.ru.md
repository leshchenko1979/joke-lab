# Joke Lab 🤡🧪

[🇬🇧 English](README.md)

---

**Почему LLM-шутки обычно несмешные?** → [`research.ru.md`](https://github.com/leshchenko1979/joke-lab/blob/main/research.ru.md)

В этой репе — решение: цикл **черновик → ревью → исправление → финал**,
который любой ИИ-агент выполняет автоматически. Максимум 10 циклов.
Показывается только финальная версия.

---

## Установка

**Основной способ:** Дайте агенту ссылку на репу и скажите создать скилл для шуток:

```
https://github.com/leshchenko1979/joke-lab
```

Агент прочитает методологию, примеры и исследование — и будет применять цикл автоматически.

**Запасной:** Вставьте system prompt ниже в инструкции вашего агента.

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

### Подсказки по платформам

| Платформа | Как загрузить скилл |
|-----------|---------------------|
| **Claude** | [claude.ai/projects](https://claude.ai/projects) → New Project → URL репы как Knowledge, или промпт как Instructions |
| **ChatGPT** | Settings → Personalization → Custom Instructions → вставить промпт |
| **Gemini** | [aistudio.google.com](https://aistudio.google.com) → New project → System instructions |
| **OpenCrabs** | `~/.opencrabs/commands.toml` → `[commands.joke-lab] prompt = "..."` |
| **API** | Передать как `system` / `system_instruction` |

---

## Примеры результатов

| Шутка | Циклов |
|-------|--------|
| *Домашка / «загружается»* — ребёнок говорит, что домашка грузится, потому что тетрадь не получила обновление | 6 |
| *Совесть / «важный звонок»* — ребёнок не может уснуть, потому что совесть ещё не позвонила | 3 |

Полные логи: [`cycles/`](https://github.com/leshchenko1979/joke-lab/tree/main/cycles)

## Файлы

| Файл | Описание | Ссылка |
|------|----------|--------|
| system-prompt.md | Промпт отдельным файлом | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/main/system-prompt.md) |
| research.md / research.ru.md | Почему LLM-шутки несмешные | [view](https://github.com/leshchenko1979/joke-lab/blob/main/research.ru.md) |
| methodology.md / methodology.ru.md | 9 критериев + создание | [view](https://github.com/leshchenko1979/joke-lab/blob/main/methodology.ru.md) |
| cycles/ | Полные логи циклов | [view](https://github.com/leshchenko1979/joke-lab/tree/main/cycles) |

## Лицензия

MIT
