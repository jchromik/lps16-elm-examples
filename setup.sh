#!/bin/bash
echo "Installing native Elm packages."
elm-package install -y
if [$? != 0]; then
  exit
fi
echo "Successfully installed Elm packages."
echo "Replacing virtual-dom package."
pushd ./elm-stuff/packages/elm-lang/virtual-dom
rm -rf 2.0.2
git clone https://github.com/jchromik/virtual-dom.git 2.0.2
popd
if [$? != 0]; then
  exit
fi
echo "Successfully replaced virtual-dom package."
echo "Have fun! :-)"
