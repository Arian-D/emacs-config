;;; -*- lexical-binding: t -*-

(when (display-graphic-p)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (set-scroll-bar-mode nil))

(let ((config-org-location (expand-file-name "config.org" user-emacs-directory)))
  (org-babel-load-file config-org-location))
