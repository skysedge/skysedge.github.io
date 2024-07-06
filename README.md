skysedge.github.io
==================

Building Locally
--------
We use [Jekyll](https://jekyllrb.com/), a static site generator written in Ruby. See [Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll) for a tutorial. In short, install [Bundler](https://bundler.io/), a tool for managing Ruby gems, and then run the following shell commands.

```sh
# Set the location on disk where all gems in the bundle will be located.
bundle config set path '.bundle/vendor'
# Install the gems in Gemfile.
bundle install
# Serve the website with incremental regeneration for pages that were updated since the previous build.
bundle exec jekyll serve --incremental
```

