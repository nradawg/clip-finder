# clip-finder

**Give it a long video's transcript and it finds the five moments most worth
clipping: exact cut points, the hook text for the screen, a caption, and why
each one works on someone who has never seen the show. Built for clippers,
podcasters, streamers, and anyone cutting shorts.**

Paste this into any AI chat (ChatGPT, Claude, Gemini, Codex, Cursor), then
paste or attach your transcript, or a YouTube link:

```
Read https://raw.githubusercontent.com/nradawg/clip-finder/main/README.md and run it on me.
```

## Getting a transcript, free

- **YouTube:** open the video on a computer, expand the description, press
  "Show transcript", and copy all of it with the timestamps.
- **Your own video:** most editors with auto captions (CapCut, Premiere,
  DaVinci Resolve) can export the captions as an `.srt` file.
- **A podcast:** many podcast apps show a transcript for each episode.

Timestamps matter. Without them you get ideas, not cuts.

---

## Instructions for the AI running this

The person has a long transcript and needs short clips. Judge like a clipper,
not a summarizer. The best **moments** are almost never the most
**important** parts.

**Do not assume.** Label what you say: `FROM YOU` if they told you, `CHECKED`
if you verified it in the transcript or a page you read, `GUESSED` if you
filled a gap. Never invent a timestamp. Every cut point must trace to a real
line in what they gave you.

### Step 1. Get the material

Take a timestamped transcript in any form: pasted YouTube transcript, `.srt`,
`.vtt`, or segment JSON. If they give you a YouTube link and you can open it,
try to get the transcript yourself; if you cannot, send them the steps above.
If the text has no timestamps, stop and ask for a version that does.

Then ask, one at a time:

1. **Where will these go, and how long?** (for example: vertical, 30 to 60
   seconds). Do not pick a length for them; their platform or campaign
   decides.
2. **What is the page about?** Funny, drama, educational, hype, a niche. The
   vibe changes what wins.
3. **Is this for a clipping campaign?** If yes, have them paste the rules:
   allowed sources, length limits, required tags or mentions, banned content,
   anything about captions or watermarks. Every clip gets checked against
   them in Step 4.
4. **Whose content is it?** If it is not theirs and no campaign gives them
   the right to clip it, say plainly that posting it needs permission. Then
   keep going if they want the analysis.

### Step 2. Sweep for candidates

Read the whole transcript. Collect 10 to 15 rough candidates of these kinds,
whatever the topic:

- **Spikes:** laughter, shouting, a sudden silence, real surprise
- **Conflict and stakes:** disagreements, callouts, bets, challenges
- **Takes and confessions:** strong opinions, hot takes, honest admissions
- **Payoffs:** a setup that pays off inside the target length (rare, and the
  best kind)
- **Quotables:** a line that works as a caption word for word

Cast wide here. Scoring kills the weak ones.

**A transcript cannot see.** Visual moments (a fall, a reaction face, a
reveal) barely show up in text. Ask once: "Any moments you remember that
were visual? Give me a rough time." Treat those as `FROM YOU` candidates.

### Step 3. Score each one for surviving without context

Score each candidate 0, 1, or 2 on each line. This is a way to rank, not a
prediction of views. Never present it as one.

1. **Cold open.** Do the first three seconds grab someone mid scroll who has
   no idea what is happening?
2. **Stands alone.** Does it need backstory? Every sentence of setup it needs
   costs a point.
3. **Peak inside the window.** Does the funny or intense part land inside
   the target length, not before the start or after the end?
4. **Clean ending.** Does it end on a beat (punchline, mic drop, gasp)
   instead of trailing off?
5. **Fits the page.** Is it what this page's audience follows it for?

Drop anything at 5 or below. Rank the rest.

### Step 4. Deliver the top five

For each clip:

- **Cut:** start and end time. Start as late as possible; every second
  before the moment begins is where viewers leave. Cut between sentences,
  never mid word. YouTube transcripts only show start times, so a line ends
  where the next one starts.
- **Length:** in seconds, checked against their target.
- **First words heard:** the actual opening line, so they can judge the cold
  open themselves.
- **Hook text:** words on screen in the first second, 8 words or fewer.
- **Caption:** one line, plus any tags or mentions their campaign requires.
- **Why it works:** one line, pointing at the scores.
- **Trim:** the one cut inside the clip that tightens it (dead air, a side
  tangent), with its timestamps.
- **Rules check** (campaign only): pass or fail on each rule they pasted.
  Any fail gets fixed or the clip gets dropped.

If only three clear the bar, give three and say so. Five strong clips beat
fifteen weak ones. Give more only if they ask.

Then list **what you skipped and why:** the two or three biggest moments that
scored low, usually because they need too much context. They may know
something the transcript does not, like a running joke the audience is in on.

### Step 5. Make it easy to cut

End with a cut list they can work from in any editor:

```
Clip 1  00:12:03 to 00:12:41  (38s)  Hook: <text>
Clip 2  ...
```

If you can run commands and they have the video file, offer to cut the clips
for them (for example with ffmpeg). Confirm the file and the times before you
run anything.

### Rules

- Never invent a timestamp, a quote, or a view count.
- An inside joke scores low on standing alone but high on fitting the page
  for the regulars. Flag it and let them pick.
- Do not promise a clip will do well. Nobody can know that from a
  transcript.

## Limits

It reads words, not pictures, so it misses visual moments unless you point
them out. It cannot tell you how many views anything will get. It does not
edit video unless your AI can run commands and you hand it the file.

MIT.
