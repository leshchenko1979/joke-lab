# Joke Lab 🤡🧪

[🇬🇧 English](README.md)

---

**Почему LLM-шутки обычно несмешные?** → [`references/research.ru.md`](https://github.com/leshchenko1979/joke-lab/blob/master/references/research.ru.md)

Эта репа — **скилл**, который учит любого ИИ-агента писать, ревьюить, дорабатывать и полировать шутки по структурированной методологии. Использует стандартный формат `SKILL.md` (совместим с Anthropic, OpenAI, OpenCrabs).

---

## Установка

**Основной способ:** Дайте агенту ссылку на репу и скажите создать скилл из неё:

```
https://github.com/leshchenko1979/joke-lab
```

Агент читает [`SKILL.md`](SKILL.md) как точку входа (YAML-фронтматер + инструкции) и загружает детальные материалы из [`references/`](https://github.com/leshchenko1979/joke-lab/tree/master/references) и [`examples/`](https://github.com/leshchenko1979/joke-lab/tree/master/examples) по мере необходимости.

**Запасной:** Вставьте промпт из [`SKILL.md`](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/SKILL.md) в инструкции вашего агента.

### Подсказки по платформам

| Платформа | Как загрузить скилл |
|-----------|---------------------|
| **Claude** | `~/.claude/skills/joke-lab/SKILL.md` или клонировать репу и указать директорию |
| **OpenCrabs** | Положить `SKILL.md` в `~/.opencrabs/skills/joke-lab/` — авторегистрация как `/joke-lab` |
| **OpenAI / ChatGPT** | Settings → Custom Instructions → вставить промпт из SKILL.md |
| **Gemini** | AI Studio → New project → System instructions → вставить промпт |
| **Любой API** | Передать промпт как `system` / `system_instruction` |

---

## Примеры результатов

| Шутка | Циклов |
|-------|--------|
| *Домашка / «загружается»* — ребёнок говорит, что домашка грузится, потому что тетрадь не получила обновление | 6 |
| *Совесть / «важный звонок»* — ребёнок не может уснуть, потому что совесть ещё не позвонила | 3 |
| *Твит / «этот твит пережил 4 черновика»* — мета-анонс, доказывающий работоспособность репы | 3 |
| *Твит 2 / «это черновик 3»* — второй анонс по улучшенной методологии | 3 |
| *Твит 3 / «12 слепых зон»* — скептическая рецензия вскрыла слепые зоны методологии | 1 |
| *Твит 4 / «Учу его быть неправым»* — первый твит с разделением Автор/Рецензент — 4 черновика по замечаниям рецензента | 4 |

Полные логи: [`examples/`](https://github.com/leshchenko1979/joke-lab/tree/master/examples)

---

## Файлы

| Файл | Описание | Ссылка |
|------|----------|--------|
| [`SKILL.md`](SKILL.md) | Точка входа скилла (обязательный SKILL.md) | [raw](https://raw.githubusercontent.com/leshchenko1979/joke-lab/master/SKILL.md) |
| `references/methodology.md` / `.ru.md` | Полная методология 13 критериев | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/methodology.ru.md) |
| `references/limitations.md` / `.ru.md` | 10 ограничений метода | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/limitations.ru.md) |
| `references/research.md` / `.ru.md` | Исследование причин несмешных LLM-шуток | [view](https://github.com/leshchenko1979/joke-lab/blob/master/references/research.ru.md) |
| `examples/` | Полные логи циклов с ревью и итерациями | [view](https://github.com/leshchenko1979/joke-lab/tree/master/examples) |

---

## Лицензия

MIT
