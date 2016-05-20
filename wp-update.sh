#!/bin/sh

if type wp >/dev/null 2>&1; then
  echo >&2 "wp-cli がインストールされていません";
  exit 1;
fi

if type git >/dev/null 2>&1; then
  echo >&2 "git がインストールされていません";
  exit 1;
fi

wp plugin update --all
wp theme update --all
wp core update
wp core language update
git add -A
git commit -m "update all"
git push origin master
