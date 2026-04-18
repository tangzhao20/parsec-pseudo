#!/usr/bin/env bash

# This script assumes that pseudopotential/Src has already been added to the PATH

echo "Running atom"
atom_ifx.exe > atom.log
echo "Running psd_gen"
printf "n\nn\n" | psd_gen_ifx.exe > psd_gen.log

for idx in 0 1 2; do
  echo "Running kb_conv for l = $idx"
  printf "y\ny\n$idx\nn\nn\nn\nn\n" | kb_conv_ifx.exe > kb_conv_$idx.log

  if grep -q "GHOST STATE" kb_conv_$idx.log; then
    echo "❌ Ghost state for l = $idx"
  else
    echo "✅ OK for l = $idx"
  fi
done

echo "Running kb_conv"
printf "n\nn\nn\nn\n" | kb_conv_ifx.exe > kb_conv.log

awk '
/lower.*cutoff/  { lower = $(NF-1) }
/higher.*cutoff/ { higher = $(NF-1) }
END {
    if (lower != "" && higher != "") {
        print "💡 Suggested cutoff: " lower*2 " Ry for bands, " higher*2 " Ry for stress"
    }
}' kb_conv.log

