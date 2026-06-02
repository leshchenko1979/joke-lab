# Limitations of the Joke Lab Methodology

This document describes what the methodology **cannot** do. These are not
bugs — they are fundamental constraints of having an LLM evaluate its own
humor output. Understanding them helps you use the methodology effectively
instead of mistaking a structured opinion for objective quality.

---

## 1. Self-assessment ceiling

The LLM writes the joke, reviews it against criteria it also processes, and
declares it passes. This is a closed loop. The methodology's own research
(Jentzsch & Kersting 2023) finds that LLMs generate convincing-sounding
explanations for why something is funny — even when it isn't. The review
process is susceptible to the exact failure mode the research describes.

The methodology mitigates this in two ways:

1. **Treat reviews as iteration guides** (see "Scoring caveat" in
   [`methodology.md`](methodology.md)) rather than objective verdicts.
2. **Split Author and Reviewer roles across different models** (see Model
   separation in [`SKILL.md`](../SKILL.md)). An independent Reviewer model
   — more critical, less aligned — catches blind spots the Author can't see.
   The Qwen 3.7 / DeepSeek V4 pairing proved this approach when the
   Reviewer identified 12 issues the original methodology had missed.

**What this means in practice:** A "PASS" verdict means the LLM thinks its
output satisfies its own criteria. It does not mean a human would find it
funny. Use the verdict as a signal of internal consistency, not external
quality.

---

## 2. No lived experience

Step 1 asks for "a specific, real observation." Criterion 13 demands
"specific details that come from observing life." The LLM has no life.
Every "concrete observation" it produces is a fabrication assembled from
training data. The methodology can force specificity (a good thing) but
cannot produce authentic observation-based comedy.

**What this means in practice:** Jokes that rely on personal anecdotes,
subtle social observation, or genuine empathy will feel hollow. The LLM
can simulate these, but the simulation is only surface-deep.

---

## 3. No social context or delivery

Humor is performative. Timing, tone, audience rapport, shared context,
pacing — these cannot be evaluated in text. A joke that passes all 13
criteria may land awkwardly when spoken, or completely miss in a different
social context.

**What this means in practice:** The methodology produces text that looks
like a good joke on paper. It cannot optimize for performance or audience
reaction.

---

## 4. Safety alignment can't be fully overridden

Criterion 11 (Edge preserved) and Step 7 ask the LLM to push past its
RLHF training. Most models will politely refuse or produce a safe simulacrum
of edge — something that looks edgy to an LLM but is still within safe
bounds. The methodology has no mechanism to detect this fake-edge.

**What this means in practice:** Different models produce vastly different
results. Uncensored or minimally-aligned models fare better. Strongly
RLHF'd models (e.g., Claude, Gemini) will struggle with Criterion 11 even
when they score themselves well. If your model has a strong "helpful and
harmless" posture, treat any self-score of ✅ or ✅✅ on Criterion 11 with
suspicion.

---

## 5. No human validation by default

The "PASS" verdict is based entirely on LLM self-assessment. There is no
human in the loop unless you add one. For contexts where a joke actually
needs to make people laugh (standup, marketing, social media), this is
a critical gap.

**What you can do:** Add a human step: show the final draft to one person.
If they smile or laugh, consider it validated. If they say "that's clever"
but don't smile, the criteria produced structure without humor.

---

## 6. No measurable humor metrics

"Sharpness ✅✅" and "Surprise ✅" are opinions issued by the same entity
that wrote the joke. There is no laugh count, no blind survey, no controlled
A/B test. The methodology measures formal compliance with its own criteria,
not real-world funniness.

**What you can do:** Run a blind A/B test: present Draft 1 and the final
draft side by side to a human without revealing which is which. If the
human can't tell the difference (or prefers Draft 1), the iteration didn't
improve the joke.

---

## 7. Cost overhead

Each cycle consumes tokens for: drafting, reviewing against 13 criteria,
and revising. A 6-cycle joke (typical for complex premises) generates
thousands of tokens of review text for a short output. The review text
is often 5–10× longer than the joke itself.

| Cycle phase | Typical tokens (per cycle) |
|-------------|----------------------------|
| Draft | 200–500 |
| 13-criteria review | 800–1500 |
| Revision | 200–500 |
| **Total per cycle** | **1200–2500** |

For a 6-cycle joke with 2 mid-cycle revisions: roughly 10,000–15,000 tokens
to produce a 50-word punchline.

**What this means:** The methodology is expensive for what it produces.
For low-stakes jokes (casual conversation, quick replies), skip the full
cycle and use only Steps 1–6 (creation without review).

---

## 8. Diminishing returns

The first 2–3 cycles produce the largest improvements (catching structural
problems, cliché setups, weak punchlines). Later cycles polish but rarely
transform. Cycle data from this repo shows drafts 5 and 6 are often
nearly identical in structure, differing only in word choice.

**What this means:** Stop early. The methodology's "stop after 2 cycles
without improvement" rule is designed to catch this. If you're on cycle 5
and still iterating on word choice, you've passed the point of useful
returns.

---

## 9. No training effect across jokes

Each cycle session starts fresh. The LLM does not become a better
joke-writer across different joke projects. Every new premise begins
at the same baseline. The methodology improves per-instance output
through iteration, not through model learning.

**What this means:** The methodology is not a training program. It's a
per-instance optimizer. The 100th joke will be no better than the 1st
at the draft stage — only the number of cycles required may decrease as
the prompt style becomes familiar.

---

## 10. Model-dependent results

The methodology was developed and tested primarily with DeepSeek V4 Flash.
Different models — different sizes, different alignment strengths, different
training data — interact with the criteria differently.

| Model type | Expected behavior |
|-----------|-------------------|
| Base / uncensored (e.g., DeepSeek V4 Flash) | Best results. Less refusal, easier edge check. |
| Strongly RLHF'd (e.g., Claude, Gemini) | Struggles with Criterion 11. May self-score high on edge that is actually a safe simulacrum. |
| Small models (< 7B params) | May not have the nuance to reliably self-evaluate across 13 criteria. Expect lower-quality reviews. |
| Instruction-tuned chat models | Best at following the prompt format, but may over-apply "helpful" behavior in ways that sandblast humor. |

The criteria imply a shared understanding of what "funny," "edgy," and
"sharp" mean. In practice, these concepts vary by model alignment,
training data, and system prompt format.

---

## Summary table

| Limitation | Severity | Mitigation |
|-----------|----------|------------|
| Self-assessment ceiling | High | Split Author/Reviewer across different models. Fallback: treat scores as direction signals. |
| No lived experience | **Fundamental** | Cannot fix — inherent to LLM. |
| No social context | **Fundamental** | Cannot fix — text-only system. |
| Safety alignment interference | High | Use uncensored models; treat edge self-scores with suspicion. |
| No human validation by default | Medium | Add a single human reader before publishing. |
| No humor metrics | Medium | Blind A/B test against Draft 1. |
| Cost overhead | Low | Skip full review for low-stakes jokes. |
| Diminishing returns | Low | Stop at 3–4 cycles for most premises. |
| No cross-joke learning | Low | Accept — inherent to LLM architecture. |
| Model dependence | Medium | Test methodology with your specific model before relying on it. |
