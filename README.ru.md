# Joke Lab 🧪

**Универсальная методология создания анекдотов**, которой может следовать любой ИИ-агент (или человек).
Использует строгий цикл **черновик → ревью → исправление → ревью → ... → идеал**.

Рождена из реального использования: анекдоты для 10-летней Саши,
каждый проходил до 6 итераций, пока все критерии не становились зелёными.
Ничего платформенно-специфичного — скормите промпт любой LLM, и заработает.

## Как работает

Каждый анекдот проходит циклы:

1. **Черновик** — пишется на основе правдивой ситуации
2. **Ревью** — оценка по 9 критериям (инконгруэнтность, мисдирекшн, ударное слово и т.д.)
3. **Если есть проблемы** → исправление → повторное ревью
4. **Повтор** пока все критерии не зелёные (максимум 10 циклов)
5. **Выдача** — только финальная, идеальная версия

## Использование с любым ИИ-агентом

Скопируйте следующий промпт в system prompt вашего агента:

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

Готово. После промпта передайте запрос пользователя — агент сам всё сделает.

## Файлы

```
joke-lab/
├── README.md                        — Английская версия (основная)
├── README.ru.md                     — Этот файл
├── research.md                      — Почему LLM-шутки несмешные (англ.)
├── research.ru.md                   — То же на русском
├── methodology.md                   — 9 критериев + пошаговая схема (англ.)
├── methodology.ru.md                — То же на русском
└── cycles/
    ├── cycle-01-domashka.md         — Пример: домашка / «загружается» (6 циклов)
    ├── cycle-01-domashka.ru.md      — Русская версия примера
    ├── cycle-02-sovest.md           — Пример: совесть / «важный звонок» (3 цикла)
    └── cycle-02-sovest.ru.md        — Русская версия примера
```

## Результаты

| # | Тема | Циклов | Вердикт |
|---|------|--------|---------|
| 1 | Домашнее задание / «загружается» | 6 | ✅ |
| 2 | Совесть / «важный звонок» | 3 | ✅ |

## Шпаргалка по методологии

9 критериев ревью:

| # | Критерий | Что проверяем |
|---|----------|---------------|
| 1 | **Правдивая ситуация** | Узнаваема? Не натянута? |
| 2 | **Инконгруэнтность** | Есть разрыв между ожиданием и реальностью? |
| 3 | **Benign violation** | Нарушение нормы, но безобидное? |
| 4 | **Мисдирекшн** | Уводит слушателя в ложную сторону? |
| 5 | **Сюрприз** | Поворот действительно неожиданный? |
| 6 | **Ударное слово в конце** | Последнее слово — это punch? |
| 7 | **Лаконичность** | Нет лишних слов или объяснений? |
| 8 | **Понятность возрасту** | Доступно целевой аудитории? |
| 9 | **Острота** | Вызывает эмоцию (улыбку/смех)? |

Оценки: ✅✅ отлично, ✅ хорошо, ⚠️ надо доработать, ❌ проблема.

**Пройдено:** нет ⚠️ или ❌. Все критерии зелёные.

## Лицензия

MIT — используйте, форкайте, делитесь.
