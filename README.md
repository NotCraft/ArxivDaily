# ArxivDaily [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/AlongWY/ArxivDaily/Rss%20Feed?style=for-the-badge)](https://github.com/AlongWY/ArxivDaily/actions)

An RSS feed reader for "ArxivDaily".

## Features

- Display the authors' information in the `details`.
- Highlight specific `keywords` in the title and authors of the paper.
- Distinguish whether a paper is a new submission or an update one by the prefix `♻`.
- Distinguish whether a paper is written by your highlighted author by the prefix `☆` or `★`.
- Expand/Collapse all articles with `Tab` key.
- Pre-render latex snippet to MATHML.
- Light/Dark mode support.

## Usage

- Click the `title` to expand it and have a close look at its abstract.
- Click the `abstract` to jump to the arxiv page of the paper.
- Customize highlight keywords list in `config.rhai` and corresponding CSS style in `index.css`.
