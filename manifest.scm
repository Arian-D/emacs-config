#! /usr/bin/env -S sh -c 'guix shell -m "$0" -- emacs'
!#

(specifications->manifest
  (list "emacs-next-pgtk"
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
        "gnuplot"
        "hunspell"
        "hunspell-dict-en-us"
        "sicp"
        "sbcl"
        "swi-prolog"
        "font-fantasque-sans"
        "font-iosevka"
        "font-latin-modern"
        "unicode-emoji"
        "fontconfig"))
