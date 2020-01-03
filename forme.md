Hugo commands because I am dolt about remembering this sort of thing.

## New site
hugo new site quickstart

The above will create a new Hugo site in a folder named quickstart.

## Add a theme

cd quickstart;\
git init;\
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke;\

Edit your config.toml configuration file and add the Ananke theme.
//echo 'theme = "ananke"' >> config.toml

|## Add content

hugo new posts/my-first-post.md

## Live Load

hugo server

 hugo server --theme=hyde --buildDrafts

 