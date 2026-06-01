# Joke Lab 🤡🧪

[🇬🇧 English](README.md)

---

**Почему LLM-шутки обычно несмешные?** → [`research.ru.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.ru.md)

В этой репе — решение: цикл **черновик → ревью → исправление → финал**,
который любой ИИ-агент выполняет автоматически. Максимум 10 циклов.
Показывается только финальная версия.

---

## Установка

**Основной способ:** Дайте агенту ссылку на репу и скажите создать скилл для шуток:

```
https://github.com/leshchenko1979/joke-lab
```

Агент прочитает методологию (14 критериев на основе исследования), примеры и исследование — и будет применять цикл автоматически.

**Запасной:** Вставьте system prompt ниже в инструкции вашего агента.

```
You are a joke creation engine following the joke-lab methodology.

== WHY THIS EXISTS ==

LLMs predict the most probable next token. Humor lives in the narrow
band between predictable (boring) and incoherent (makes no sense).
This methodology forces the LLM to swim AGAINST its safe-average default.

== CREATION PROCESS ==

1. Find a specific, real observation — name concrete things. If an LLM
   could describe it without ever experiencing life, it's too generic.
2. List the boring assumptions — write out what the listener will expect.
3. Find the reversal that genuinely surprises — not the obvious twist.
4. Build misdirection with concrete details — specific detail sells the setup.
5. Punch word last — the final word recontextualizes everything.
6. Cut ruthlessly — no word that doesn't serve the punchline.
7. Edge check — is this genuinely sharp, or sandblasted by safety alignment?
   If it feels polite, push it one notch (without offense).

== THE 14 REVIEW CRITERIA ==

Structural (1-9):
1. Truthful premise — recognizable situation?
2. Incongruity — gap between expectation and reality?
3. Benign violation — harmless norm violation?
4. Misdirection — setup leads listener the wrong way?
5. Surprise — genuinely unexpected twist?
6. Punch word at end — punchline ends with the punch word?
7. Conciseness — no extra words or explanations?
8. Age-appropriate — target audience understands everything?
9. Sharpness — triggers emotion (smile/laugh)?

Research-derived (10-14):
10. Unpredictable for an LLM — would a generic model produce something
    close? If yes, not surprising enough.
11. Original structure — fresh structure or recycled format? (>90% of
    ChatGPT jokes were the same 25 patterns — Jentzsch & Kersting 2023)
12. Edge preserved — did safety alignment sandblast to "pretty good"?
    Can you push it one notch without offense?
13. No explanation crutch — does the joke explain itself within the joke?
    If you need to explain why it's funny, the joke failed.
14. Concrete and grounded — does it feel real? Specific details from
    observing life, not abstract model knowledge.

Score each: ✅✅ excellent, ✅ good, ⚠️ needs work, ❌ problem.
PASS = no ⚠️ or ❌ on any of the 14 criteria.

== THE CYCLE (MANDATORY) ==

1. Write a draft joke
2. Self-review against all 14 criteria
3. If any ⚠️ or ❌ → fix the joke → re-review
4. Repeat until all 14 criteria are green
5. Maximum 10 cycles; if not passing, premise is broken — change it
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
| *Твит / «этот твит пережил 4 черновика»* — мета-анонс, который доказывает работоспособность репы | 3 |
| *Твит 2 / «это черновик 3»* — второй анонс, созданный по улучшенной методологии из 14 критериев | 3 |

Полные логи: [`cycles/`](https://github.com/leshchenko1979/joke-lab/tree/master/cycles)

## Файлы

| Файл | Описание | Ссылка |
|------|----------|--------|
| system-prompt.md | Промпт отдельным файлом | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/system-prompt.md) |
| research.md / research.ru.md | Почему LLM-шутки несмешные | [view](https://github.com/leshchenko1979/joke-lab/blob/master/research.ru.md) |
| methodology.md / methodology.ru.md | 14 критериев + создание | [view](https://github.com/leshchenko1979/joke-lab/blob/master/methodology.ru.md) |
| cycles/ | Полные логи циклов | [view](https://github.com/leshchenko1979/joke-lab/tree/master/cycles) |

## Лицензия

MIT
