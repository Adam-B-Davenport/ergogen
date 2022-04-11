#!/usr/bin/sh
while inotifywait -e close_write mk3.yaml;  do
    pkill pcbnew
    node src/cli.js mk3.yaml
    pcbnew output/pcbs/main.kicad_pcb &
done
