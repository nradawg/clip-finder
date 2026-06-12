# clip-finder

Feed it a transcript, get the five most clippable moments — with timestamps, hook lines, and the reason each one survives out of context.

## The problem

A 3-hour stream or podcast contains maybe four moments worth posting. Finding them by scrubbing is hours of work; picking them by "that part was funny" misses that funny-in-context usually dies as a 40-second clip. The skill clippers actually develop is judging **out-of-context survivability** — and that judgment can be specified.

## The twist

Every candidate moment gets scored against the test that matters: *does second zero work on someone who has no idea what's happening?* The finder scores four things — cold-open strength (first 3 seconds), self-containment (no setup required), emotional peak inside the window, and a clean exit line — then returns exact in/out timestamps cut on speech boundaries, a hook line for the caption, and what to trim. Built from running a real clipping pipeline on multi-hour VODs, where bad clip selection wastes the whole downstream chain.

## Install

```bash
git clone https://github.com/nradawg/clip-finder.git
cd clip-finder && bash install.sh
```

## Use

```
/clip-finder
```

Point it at a timestamped transcript (segment JSON or SRT — the kind [transcribe-anything](https://github.com/nradawg/transcribe-anything) produces). It returns the top 5 moments ranked, each with timestamps, hook, and trim notes — plus what it deliberately skipped and why, so you can overrule it.

MIT licensed.
