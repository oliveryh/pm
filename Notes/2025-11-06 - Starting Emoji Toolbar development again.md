Working on [[obsidian-emoji-toolbar]]

As part of my effort to look more attractive to employers (and some guilt that I'd not maintained it very well), I've decided to get the Emoji Toolbar Obsidian plugin up to date. My first surprise was to see how little TS/JS I really knew back then, and how little CI I'd made use of. I had a mix of semi-colons, was using trunk based development, and didn't have any tests or CI to speak of. I'll likely want to add some of these things in the near future. Namely:

- Some basic regression tests
- CI on PRs that run these tests
- Automatic linting and formatting, possibly with Biome
- Full typescript types

Another thing that occurred to me is how I haven't particularly stress tested the plugin myself.

I noticed that there is one example of using Playwright to test an Obsidian plugin here: https://github.com/qawatake/obsidian-e2e-sample

Additionally, I quite like how they laid out their styles in this repo: https://github.com/farlenkov/obsidian-canvas-llm
