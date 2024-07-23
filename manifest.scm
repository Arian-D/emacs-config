;; What follows is a "manifest" equivalent to the command line you gave.
;; You can store it in a file that you may then pass to any 'guix' command
;; that accepts a '--manifest' (or '-m') option.

(specifications->manifest
  (list "emacs-pgtk@29.4"
        ;; Guix git acts weird around straight.el
        ; "git"
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
        "mpv"
        "font-fantasque-sans"
        "font-latin-modern"
        "unicode-emoji"
        "fontconfig"))
