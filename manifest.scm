#! /usr/bin/env -S sh -c 'guix shell -m "$0" -- emacs'
!#

(specifications->manifest
  (list "emacs-pgtk@29.4"
        ;; Guix git acts weird around straight.el
        ; "git"
        "guix"
        "guile-next"
        "rust" "rust-cargo"
        "rust-analyzer"
        "ripgrep"
        "fd"
        "bash"
        "findutils"
        "coreutils"
        "texlive"
        "hunspell"
        "hunspell-dict-en-us"
        "sicp"
        "mpv" "yt-dlp"
        "font-fantasque-sans"
        "font-latin-modern"
        "unicode-emoji"
        "fontconfig"))
