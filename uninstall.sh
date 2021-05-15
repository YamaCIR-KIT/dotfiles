#!/bin/sh -eu

here=$(cd "$(dirname "$0")"; pwd)

for f in "$here"/.??*
do
  test "$f" = "$here"/.git && continue
  test "$f" = "$here"/.gitignore && continue
  unlink "$HOME/$f"
done
