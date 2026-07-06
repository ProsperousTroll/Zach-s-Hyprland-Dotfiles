#!/usr/bin/env bash


function gui_panic(){
	notify-send "[ ImageZ ERROR ]: $1" ; exit 1
}

IMAGEZ_TMP="$(mktemp -u).png"
trap 'rm -f "$IMAGEZ_TMP"' EXIT

wl-paste --type image/png > "$IMAGEZ_TMP" || gui_panic "no image in clipboard"
imagez "$IMAGEZ_TMP" || gui_panic "failed to open"
