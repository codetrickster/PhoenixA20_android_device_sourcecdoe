#!/bin/bash
cd $PACKAGE
if [ "$1" = "-d" ]; then
  ./pack -c sun7i -p android -b sugar-standard -d card0
else
  ./pack -c sun7i -p android -b sugar-standard  -d uart0
fi
cd -
