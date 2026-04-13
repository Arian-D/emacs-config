#!/usr/bin/env bash

cd ~/src/ewm/compositor

pgrep pipewire || gentoo-pipewire-launcher &
# https://codeberg.org/ezemtsov/ewm/wiki/Getting-Started#launching
EWM_MODULE_PATH=$(pwd)/target/debug/libewm_core.so \
    emacs --fg-daemon -L ../lisp -l ewm -f ewm-start-module
