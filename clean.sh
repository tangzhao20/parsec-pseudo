#!/usr/bin/env bash

if [ ! -f "atom.dat" ]; then
    echo "⛔ Error: atom.dat is not fount in the current directory"
    exit 1
fi

ELEMENT=$(awk 'NR==1 {print $2}' atom.dat)
echo " element = ${ELEMENT}"

UPF_FILE=$(ls ${ELEMENT}_*.UPF 2>/dev/null | head -n 1)

if [ -n "$UPF_FILE" ]; then
    mv "$UPF_FILE" "${ELEMENT}.upf"
fi

shopt -s extglob
rm -f !(README.md|atom.dat|${ELEMENT}_POTRE.DAT|${ELEMENT}.upf)
shopt -u extglob

