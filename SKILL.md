---
name: clip-finder
description: Find the most clippable moments in a timestamped transcript — scored for out-of-context survivability, with exact cut points, hook lines, and trim notes. Use on stream VODs, podcasts, interviews, or any long recording.
---

# Clip Finder

The user has a long transcript and needs short clips. Judge like a clipper, not a summarizer: the best *moments* are not the most *important* parts.

## Step 1 — Ingest

Take a timestamped transcript (segment JSON, SRT, or VTT). If they have raw text without timestamps, stop and route them to transcription first — clip selection without timestamps produces suggestions nobody can cut. Ask only: **platform/length target** (e.g., 30–60s vertical) and **the page's vibe** (funny, drama, educational, hype) — vibe changes what wins.

## Step 2 — Sweep for candidates

Scan the whole transcript for moment types that clip well, regardless of topic:

- **Spikes** — laughter, shouting, sudden silence after noise, genuine surprise
- **Conflict & stakes** — disagreements, callouts, bets, challenges issued
- **Confessions & takes** — strong opinions, hot takes, vulnerable admissions
- **Payoffs** — a setup that resolves inside 60 seconds (rare and gold)
- **Quotables** — lines that work as a caption verbatim

Collect 10–15 candidates with rough boundaries. Cast wide here; the scoring kills the weak ones.

## Step 3 — Score for out-of-context survivability

Each candidate, 0–2 points per axis:

1. **Cold open** — do the first 3 seconds grab someone mid-scroll with zero context?
2. **Self-containment** — does it need backstory? (every sentence of required setup costs a point)
3. **Peak inside the window** — does the emotional/comedic peak land within the target length, not before the in-point or after the out-point?
4. **Exit line** — does it end on a beat (punchline, mic-drop, gasp) rather than trailing off?
5. **Vibe match** — does it fit what this page's audience follows it for?

Drop anything ≤5/10. Rank the rest.

## Step 4 — Deliver the top 5

For each:
- **In/out timestamps** — cut on speech boundaries, never mid-word; in-point as late as possible (trim every second of runway before the moment starts — runway is where viewers leave)
- **Hook line** — caption/overlay text, ≤8 words, present tense
- **Why it survives** — one line, referencing the scores
- **Trim note** — the one cut inside the clip that tightens it (dead air, a tangent sentence)

Then: **what got skipped and why** — the 2–3 highest-profile moments that scored poorly (usually "needs too much context") so the user can overrule with knowledge they have and the transcript doesn't (visual moments, running jokes the audience knows).

## Rules

- Five strong beats fifteen weak. If only three clear the bar, deliver three and say so.
- Long-running inside jokes score LOW on self-containment but HIGH on vibe-match for that page's regulars — flag the tension, let the user pick.
- Never invent timestamps. Every cut point traces to a real segment boundary in the input.
