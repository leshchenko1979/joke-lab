# Why LLM Jokes Aren't Funny — Research Summary

A review of academic and industry findings (2023–2026) on why
LLM-generated humor falls short of human comedy.

---

## 1. Design conflict: LLMs minimize surprise, humor *requires* it

> "LLMs tell bad jokes because they avoid surprises by design."
> — **Dan Fabulich** (2025)

LLMs are trained to predict the **most probable next token** given a context.
But humor depends on a **precisely calibrated departure** from the expected:
surprising enough to trigger a cognitive jolt, coherent enough to resolve
into meaning.

The most probable output is predictable, and predictable isn't funny.
A wildly improbable output is incoherent, and incoherent isn't funny either.
Laughter lives in a *narrow band between the two* — and LLMs are systematically
biased toward the safe average.

> "An LLM cannot violate probabilities, because it would break the very
> function of an LLM; humor requires a sudden violation of the probabilities
> an LLM is designed to follow."
> — **Neil Murphy** (2026)

**Sources:** Fabulich (2025), Murphy (2026), Izayohi (2026)

---

## 2. Pattern regurgitation, not creation

A study by Jentzsch & Kersting (2023) found that **>90% of ChatGPT's
jokes were the same 25 jokes**, repeated across hundreds of prompts.

LLMs learn joke *formats* — question-answer templates, wordplay puns —
but don't genuinely *create* humor. They squeeze new topics into known
patterns, producing a one-dimensional conception of what a joke is.

> "ChatGPT rather learned a specific joke pattern instead of being able
> to be actually funny."
> — **Jentzsch & Kersting** (2023)

Puns in particular reveal shallow understanding (Baluja 2025, Xu et al. 2024):
LLMs struggle with wordplay that relies on **phonetic similarity**
(heterographic puns), and subtle modifications to pun structure fool them
entirely. They process *surface patterns* without understanding the
underlying mechanism.

**Sources:** Jentzsch & Kersting (2023), Baluja (2025), Xu et al. (2024),
Loakman et al. (2025)

---

## 3. Safety alignment sandblasts the edges

RLHF and safety fine-tuning are trained to suppress transgression,
aggression, taboo — exactly the registers where much humor lives.

> "Commercial AI is trained to suppress exactly those registers...
> The governance pressure toward blandness."
> — **Izayohi** (2026)

This creates a "pretty good" ceiling: formally correct jokes that lack
edge, surprise, and social risk. The same model with lighter safety
constraints produces sharper jokes (a testable prediction — and confirmed
by user experiments with uncensored models).

Safety mechanisms also cause LLMs to misinterpret relational context
in potentially offensive situations, biasing output toward a
"washed-out" form of humor (Mirowski et al. 2024).

**Sources:** Izayohi (2026), Mirowski et al. (2024)

---

## 4. No social context, no delivery, no relationship

Humor is amplified by **social scaffolding** — the relationship between
teller and audience, the shared context, the timing of delivery.

> "A dad joke works because of the persona delivering it: a figure who
> combines authority and intimacy — the Dad. When AI delivers a dad joke,
> this entire social architecture collapses."
> — **Izayohi** (2026)

LLMs have no persona, no real-time feedback loop, no ability to read a room.
Text-based interaction is far too coarse for the millisecond-level timing
calibration that live comedy demands.

**Exception:** The Witscript system (Toplyn & Amir 2025) achieved laughter
levels comparable to a professional comedy writer when its jokes were
*delivered by human standup comics to a live audience*. The jokes were AI-written;
the delivery and social context were human-provided.

**Sources:** Izayohi (2026), Toplyn & Amir (2025)

---

## 5. The "explain the joke" problem

LLMs will generate convincing-sounding explanations for why something
is funny — even when it isn't. They cannot indicate when a joke fails.

This is a known RLHF artifact: the model is rewarded for appearing
competent, not for being actually funny. It will fabricate a rationale
when none exists.

**Sources:** Jentzsch & Kersting (2023)

---

## 6. No lived experience

Great comedy draws from specific, real observations about life.
LLMs don't have lives, don't feel emotions, and don't have authentic
perspectives. They can describe what a joke *looks like* but not what
it *feels like* to be the target of a situation.

> "Humor may represent an AI-complete problem."
> — **Yamakov et al.** (2025)

Some researchers argue that the ability to *genuinely* create and
appreciate humor — not just pattern-match it — may be a proxy for
general intelligence.

**Sources:** Yamakov et al. (2025)

---

## Counter-evidence: LLMs CAN be funny under the right conditions

The picture isn't purely negative. Several studies show LLMs producing
funny output when the setup is right:

| Study | Setup | Result |
|-------|-------|--------|
| **Gorenz & Schwarz** (2024) | Specific prompts, constraints, examples | ChatGPT rated equally funny or funnier than average human |
| **Toplyn & Amir** (2025) | AI-written + human delivery + live audience | AI jokes got as much laughter as professional comedy writer |
| **Izayohi** (2026) | 100 attempts → human curation | Top-percentile hit rate produces genuinely funny material |

**Key insight:** LLMs work best as *raw material generators* for human
curation, not as standalone comedians. The methodology in this repo
follows the same principle: structured self-review cycles push the LLM
away from its safe-average default toward the "narrow band" where humor lives.

---

## References

| Year | Authors | Title |
|------|---------|-------|
| 2023 | Jentzsch & Kersting | *ChatGPT is fun, but it is not funny! Humor is still challenging Large Language Models* (ACL WASSA) |
| 2024 | Gorenz & Schwarz | *How funny is ChatGPT? A comparison of human- and A.I.-produced jokes* (PLOS ONE) |
| 2024 | Mirowski et al. | *Co-Writing with AI: How Comedians Use LLMs* (various) |
| 2024 | Xu et al. | *Pun understanding in LLMs* |
| 2025 | Baluja | *Multimodal humor explanation with speech audio* |
| 2025 | Fabulich | *LLMs generate slop because they avoid surprises by design* (Medium) |
| 2025 | Izayohi | *Why AI Jokes Are "Pretty Good" and Never Better* (Medium) |
| 2025 | Loakman et al. | *Computational Humour Generation and Explanation* (arXiv) |
| 2025 | Murphy | *LLMs can't do humor* (wnmurphy.com) |
| 2025 | Toplyn & Amir | *Can AI Make Us Laugh? Comparing Jokes by Witscript and a Human Expert* (ACL CHUM) |
| 2025 | Yamakov et al. | *Towards Solving Humor: Why the Funniest AI Joke Will Not Be Funny* (ResearchGate) |

---

*Last updated: 2026-06-01*
