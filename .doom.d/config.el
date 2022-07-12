;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Hi! This is me :3
(setq user-full-name "Orlando Vargas"
      user-mail-address "nojipiz@gmail.com")

;; There is no place like home :D
;; LunarVim's like bindings
(setq evil-escape-key-sequence "ii")
(map! :map global-map
      :n "C-l" #'evil-window-right)
(map! :map global-map
      :n "C-h" #'evil-window-left)
;; Try to improve speed of lsp completion
(setq lsp-idle-delay 0.500)

;; Style Stuff
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "Fira Code" :size 19 :weight 'semi-light) doom-variable-pitch-font (font-spec :family "Fira Code" :size 20))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;   (after! PACKAGE
;;     (setq x y))
;; The exceptions to this rule:
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;; Here are some additional functions/macros that will help you configure Doom.
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).

;; Custom packages
(use-package lsp-tailwindcss
  :init
  (setq lsp-tailwindcss-add-on-mode t))
