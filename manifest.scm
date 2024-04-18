;; What follows is a "manifest" equivalent to the command line you gave.
;; You can store it in a file that you may then pass to any 'guix' command
;; that accepts a '--manifest' (or '-m') option.

(specifications->manifest
  (list "emacs-pgtk@29.3"
        ; "git"
        "ripgrep"
        "bash"
        "findutils"
        "coreutils"
        "font-fantasque-sans"
        "font-latin-modern"
        "unicode-emoji"
        "fontconfig"))
