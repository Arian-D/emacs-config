(setq package-enable-at-startup nil
      gc-cons-threshold most-positive-fixnum
      load-prefer-newer noninteractive
      default-input-method nil)
(set-language-environment "UTF-8")

(when (display-graphic-p)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (set-scroll-bar-mode nil))
