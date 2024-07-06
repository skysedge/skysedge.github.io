skysedge.github.io
==================

Building
--------
We use [Jekyll](https://jekyllrb.com/), a static site generator written in Ruby. See [Quickstart for GitHub Pages](https://docs.github.com/en/pages/quickstart) for a series of introductory tutorials.

In short, install [Bundler](https://bundler.io/), a tool for managing Ruby gems, and then run the following shell commands.

```sh
# Set the location on disk where all gems in the bundle will be located.
bundle config set path '.bundle/vendor'
# Install the gems in Gemfile.
bundle install
# Serve the website with incremental regeneration for pages that were updated since the previous build.
bundle exec jekyll serve --incremental
```

