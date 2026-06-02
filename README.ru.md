# Joke Lab 🤡🧪

[🇬🇧 English](README.md)

---

**Почему LLM-шутки обычно несмешные?** → [`research.ru.md`](https://github.com/leshchenko1979/joke-lab/blob/master/research.ru.md)

В этой репе — решение: цикл **черновик → ревью → исправление → финал**,
который любой ИИ-агент выполняет автоматически. Smart stop: остановиться, когда последние 2 цикла не показывают улучшения.
Показывается только финальная версия.

---

## Установка

**Основной способ:** Дайте агенту ссылку на репу и скажите создать скилл для шуток:

```
https://github.com/leshchenko1979/joke-lab
```

Агент прочитает методологию (13 критериев на основе исследования), примеры и исследование — и будет применять цикл автоматически.

**Запасной:** Вставьте system prompt ниже в инструкции вашего агента.

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
| *Твит 2 / «это черновик 3»* — второй анонс, созданный по улучшенной методологии из 13 критериев | 3 |

Полные логи: [`cycles/`](https://github.com/leshchenko1979/joke-lab/tree/master/cycles)

## Файлы

| Файл | Описание | Ссылка |
|------|----------|--------|
| system-prompt.md | Промпт отдельным файлом | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/system-prompt.md) |
| research.md / research.ru.md | Почему LLM-шутки несмешные | [view](https://github.com/leshchenko1979/joke-lab/blob/master/research.ru.md) |
| methodology.md / methodology.ru.md | 13 критериев + ограничения | [view](https://github.com/leshchenko1979/joke-lab/blob/master/methodology.ru.md) |
| limitations.md / limitations.ru.md | 10 задокументированных ограничений метода | [view](https://github.com/leshchenko1979/joke-lab/blob/master/limitations.ru.md) |
| cycles/ | Полные логи циклов | [view](https://github.com/leshchenko1979/joke-lab/tree/master/cycles) |

## Лицензия

MIT
