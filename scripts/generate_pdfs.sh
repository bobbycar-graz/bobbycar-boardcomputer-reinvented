#!/bin/bash

# get project root from git
project_root=$(git rev-parse --show-toplevel)

# check if "kicad-cli" is installed
if ! [ -x "$(command -v kicad-cli)" ]; then
  echo 'Error: kicad-cli is not installed.' >&2
  exit 1
fi

function generate_for_fileending() {
  # store list of all schematics from kicad folder (recursively)
  file_ending=$1
  out_format=${4:-pdf}

  schematics=$(find "$project_root/kicad" -name "*.${file_ending}")

  out_dir="$project_root/export"

  echo "Generating PDFs for all files in $project_root/kicad"

  # iterate over all schematics
  for schematic in $schematics; do
  # get schematic name without path and extension
  schematic_name=$(basename -- "$schematic")
  schematic_name="${schematic_name%.*}"

  out="$out_dir/$schematic_name.$file_ending.$out_format"

  # generate PDF
  kicad-cli $2 export $out_format --output "$out" $3 "$schematic"
  done
}

generate_for_fileending "kicad_sch" "sch"
generate_for_fileending "kicad_pcb" "pcb" "-l F.Cu,B.Cu,F.SilkS,B.SilkS,F.Mask,B.Mask,F.Paste,B.Paste,Edge.Cuts"
# generate_for_fileending "kicad_pcb" "pcb" "" step