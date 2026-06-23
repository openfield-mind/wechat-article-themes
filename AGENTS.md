# Agent Instructions

This repository contains CSS themes for WeChat Official Account Markdown articles.

If a user asks an agent to "install this repository", "use these themes", or "connect this to my editor", follow this file.

## Goal

Help the user use one of the CSS files in `themes/` inside their Markdown-to-WeChat workflow.

The recommended default theme is:

```text
themes/paper-garden.css
```

## Repository Layout

```text
themes/                 CSS files to install or copy
previews/               screenshots for choosing a theme
examples/sample.md      sample article
demo/index.html         static local demo
QUICKSTART.md           beginner instructions
```

## Theme Choices

- `paper-garden.css`: soft paper, rounded blocks, serif-first typography. Best default.
- `paper-whisper.css`: warm manuscript paper, softer Paper Museum feeling, gentle serif/kai typography.
- `paper-museum.css`: curated paper, red seal, museum-note feeling.
- `edge-note.css`: sharp editorial, high contrast, cyan marks.
- `signal-lab.css`: dark technical interface, neon signal accents.

## Installation Strategy

First inspect the user's current project.

Then choose the matching path:

### If the project is doocs/md

1. Copy the desired CSS into a suitable local theme/custom CSS location.
2. If the user wants it as a built-in theme, register it in the project's theme map and theme options.
3. Keep the change scoped. Do not rewrite unrelated editor code.
4. Tell the user where the theme appears in the UI.

### If the project has a custom Markdown renderer

1. Copy the desired CSS into the project's assets/styles directory.
2. Ensure rendered Markdown is wrapped like:

```html
<article id="output">
  <section>
    <!-- rendered markdown -->
  </section>
</article>
```

3. Load the CSS file after base article styles.
4. Define these variables if they do not exist:

```css
:root {
  --md-primary-color: #0F4C81;
  --md-font-family: -apple-system-font, BlinkMacSystemFont, "Helvetica Neue", "PingFang SC", "Microsoft YaHei", Arial, sans-serif;
  --md-font-size: 16px;
}
```

### If the user only wants local files

Run:

```sh
./install.sh
```

or manually copy `themes/` to a location the user can find.

## Agent Response Template

When done, tell the user:

1. Which theme was installed.
2. Where the CSS file was copied.
3. How to select or paste it in their editor.
4. Any verification performed.

Keep the explanation beginner-friendly.
