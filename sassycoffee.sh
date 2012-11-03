#!/bin/bash
# run `compass watch` at pwd
# run `coffee -o scripts/ -cw coffee/` at pwd
type -P compass &>/dev/null  || { echo "Compass command not found."; exit 1; }
type -P coffee &>/dev/null  || { echo "Coffee command not found."; exit 1; }

if [ ! -d app/assets/stylesheets/ ] || [ ! -d app/assets/javascripts/ ]
then
  echo "Project not setup correctly! Put sass files in app/assets/stylesheets/ and coffee in app/assets/javascripts/"
else
  if [ ! -e config.rb ]
  then  echo -e "http_path = \"/\"\ncss_dir = \"public/stylesheets\"\nsass_dir = \"app/assets/stylesheets\"\nimages_dir = \"public/images\"\njavascripts_dir = \"public/javascripts\"\noutput_style = :compact\nline_comments = false" > config.rb
  fi
  if [ ! -d public/stylesheets/ ]
  then
    mkdir public/stylesheets/
  fi
  if [ ! -d public/javascripts/ ]
  then
    mkdir public/javascripts/
  fi
  echo "Watching changes in app/assets/stylesheeets/ and app/assets/javascripts/ and compiling to public/stylesheets/ and public/javascripts/ ..."
  `compass watch  --quiet` &
  # `sass --watch app/assets/stylesheets/:public/stylesheets/ -q` &
  `coffee -o public/javascripts/ -cw app/assets/javascripts/` &
  wait
fi
