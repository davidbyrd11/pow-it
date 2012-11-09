#!/bin/bash

if [ "$(uname -s)" != "Darwin" ]; then
  echo "Powit, like Pow, requires Mac OS X to run." >&2
  exit 1
elif [ "$(expr "$(sw_vers -productVersion | cut -f 2 -d .)" \>= 6)" = 0 ]; then
  echo "Powit, like Pow, requires Mac OS X 10.6 or later." >&2
  exit 1
fi

mkdir -p $HOME/bin
curl -o $HOME/bin/powit http://byrdhou.se/powit/powit.sh
chmod +x $HOME/bin/powit
echo -e '\nexport PATH=$PATH:$HOME/bin' >> $HOME/.bash_profile