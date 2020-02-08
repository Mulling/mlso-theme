;;; mlso-theme.el --- A dark, medium contrast theme

;;; Title: mlso theme
;;; Project: mlso-theme
;;; Version: 1.0
;;; URL: https://github.com/Mulling/mlso-theme
;;; Autor: github.com/Mulling
;;; Pakcage-Requires: ((emacs "24"))

;;; Commentary:

;;; This theme is a work in progress.
;;; It is heavly base on srcery from github.com/srcery-colors/srcery-emacs and
;;; suscolors from github.com/TheSuspiciousWombat/SusColors-emacs.

;;; Code:

(unless (>= emacs-major-version 24)
  (error "Theme requires version 24 or greater"))

(deftheme mlso
  "A dark, medium contrast theme.")

;;; no terminal support
(when window-system
  (let ((class '((class color) (min-colors 2)))
        (color0 "#12100E")               ;black
        (color1 "#685C50")               ;light-black
        (color2 "#E0D567")               ;white
        (color3 "#918175")               ;dark-white
        (color4 "#292723")               ;gray
        (color5 "#FE4C43")               ;red
        (color6 "#43A047")               ;green
        (color7 "#FE9946")               ;yellow
        (color8 "#83A598")               ;blue
        (color9 "#FE9946")               ;magenta
        (colorx "#83A5B3")               ;cyan
        (color! "#FE8019")               ;orange
        (color@ "#D7875F")               ;salmon
        (color$ "#28241f"))              ;alt black

    (custom-theme-set-faces
     'mlso

     `(default     ((t :background ,color0 :foreground ,color2)))
     `(cursor      ((t :background ,color! :foreground ,color0)))
     `(fringe      ((t :background ,color0 :foreground ,color$)))
     `(error       ((t :foreground ,color5)))
     `(success     ((t :foreground ,color6)))
     `(warning     ((t :foreground ,color7)))
     `(header-line ((t :background ,color4)))

     ;; font lock
     `(font-lock-builtin-face       ((t :foreground ,color8)))
     `(font-lock-comment-face       ((t :foreground ,color1)))
     `(font-lock-constant-face      ((t :foreground ,color8)))
     `(font-lock-reference-face     ((t :foreground ,color6)))
     `(font-lock-doc-face           ((t :foreground ,color6)))
     `(font-lock-function-name-face ((t :foreground ,color7)))
     `(font-lock-keyword-face       ((t :foreground ,color5)))
     `(font-lock-string-face        ((t :foreground ,color6)))
     `(font-lock-type-face          ((t :foreground ,color@)))
     `(font-lock-variable-name-face ((t :foreground ,colorx)))
     `(font-lock-reference-face     ((t :foreground ,color2)))
     `(font-lock-preprocessor-face  ((t :foreground ,color7)))

     ;; seach and hilight
     `(highlight           ((t :inverse-video t :extend t)))
     `(hl-line             ((t :inherit highlight)))
     `(secondary-selection ((t :inherit highlight)))
     `(isearch           ((t :inverse-video t)))
     `(lazy-highlight    ((t :inverse-video t)))
     `(match             ((t :inverse-video t)))
     `(region            ((t :inverse-video t)))
     `(minibuffer-prompt ((t :foreground ,color!)))
     `(vertical-border   ((t :foreground ,color4)))
     `(isearch-fail      ((t :inherit error                  :strike-through t)))
     `(link              ((t :inherit font-lock-comment-face :underline t)))

     ;; company
     `(company-echo-common              ((t :inherit match)))
     `(company-preview                  ((t :inherit match)))
     `(company-preview-common           ((t :inherit match)))
     `(company-preview-search           ((t :inherit match)))
     `(company-scrollbar-bg             ((t :background ,color4)))
     `(company-scrollbar-fg             ((t :background ,color2)))
     `(company-template-field           ((t :inherit region)))
     `(company-tooltip                  ((t :background ,color4 :foreground ,color2)))
     `(company-tooltip-annotation       ((t :underline t)))
     `(company-tooltip-common           ((t :background ,color4 :underline t)))
     `(company-tooltip-common-selection ((t :underline t)))
     `(company-tooltip-mouse            ((t :inherit highlight)))
     `(company-tooltip-search           ((t :inherit match)))
     `(company-tooltip-selection        ((t :foreground ,color!)))

     ;; dired
     `(dired-directory  ((t :foreground ,color8)))
     `(dired-flagged    ((t :inherit error)))
     `(dired-header     ((t :foreground ,color!)))
     `(dired-mark       ((t :inherit success)))
     `(dired-marked     ((t :foreground ,color9)))
     `(dired-perm-write ((t :foreground ,color!)))
     `(dired-symlink    ((t :foreground ,color7)))
     `(dired-warning    ((t :inherit warning)))
     `(dired-ignored    ((t :inherit font-lock-comment-face)))

     ;;eldoc
     `(eldoc-highlight-function-argument ((t :foreground ,color!)))

     ;; eshell
     `(eshell-ls-archive    ((t :inherit font-lock-comment-face)))
     `(eshell-ls-backup     ((t :inherit font-lock-comment-face)))
     `(eshell-ls-clutter    ((t :inherit font-lock-comment-face)))
     `(eshell-ls-archive    ((t :inherit font-lock-comment-face)))
     `(eshell-ls-product    ((t :inherit font-lock-comment-face)))
     `(eshell-ls-directory  ((t :foreground ,color8)))
     `(eshell-ls-executable ((t :foreground ,color9)))
     `(eshell-ls-special    ((t :foreground ,color9)))
     `(eshell-ls-symlink    ((t :foreground ,color7)))
     `(eshell-prompt        ((t :foreground ,color!)))
     `(eshell-ls-missing    ((t :inherit error)))

     ;; flycheck
     `(flycheck-error                   ((t :inherit error   :underline t)))
     `(flycheck-info                    ((t :inherit success :underline t)))
     `(flycheck-warning                 ((t :inherit warning :underline t)))
     `(flycheck-error-list-checker-name ((t :foreground ,color9)))
     `(flycheck-fringe-error            ((t :inherit error)))
     `(flycheck-fringe-info             ((t :inherit success)))
     `(flycheck-fringe-warning          ((t :inherit warning)))

     ;; magit
     `(magit-blame-time                  ((t :foreground ,color6)))
     `(magit-blame-name                  ((t :foreground ,color!)))
     `(magit-blame-heading               ((t :foreground ,color7)))
     `(magit-blame-hash                  ((t :foreground ,color7)))
     `(magit-blame-summary               ((t :foreground ,color7)))
     `(magit-blame-date                  ((t :foreground ,color6)))
     `(magit-reflog-amend                ((t :foreground ,color2)))
     `(magit-reflog-other                ((t :foreground ,color2)))
     `(magit-reflog-rebase               ((t :foreground ,color2)))
     `(magit-reflog-remote               ((t :foreground ,color2)))
     `(magit-reflog-reset                ((t :foreground ,color2)))
     `(magit-reflog-commit               ((t :foreground ,color2)))
     `(magit-reflog-cherry-pick          ((t :foreground ,color2)))
     `(magit-reflog-merge                ((t :foreground ,color!)))
     `(magit-branch                      ((t :foreground ,color2)))
     `(magit-branch-current              ((t :foreground ,color9)))
     `(magit-branch-local                ((t :foreground ,color8)))
     `(magit-branch-remote               ((t :foreground ,colorx)))
     `(magit-diff-file-header            ((t :foreground ,color7)))
     `(magit-diff-file-heading           ((t :foreground ,color8)))
     `(magit-diff-file-heading-highlight ((t :foreground ,color8)))
     `(magit-diff-file-heading-selection ((t :foreground ,color8 :background ,color2)))
     `(magit-diff-hunk-heading           ((t :foreground ,color7)))
     `(magit-diff-hunk-heading-highlight ((t :foreground ,color7)))
     `(magit-diff-hunk-heading-selection ((t :foreground ,color2)))
     `(magit-diff-added                  ((t :foreground ,color2)))
     `(magit-diff-removed                ((t :foreground ,color1)))
     `(magit-diff-context                ((t :foreground ,color1)))
     `(magit-diff-added-highlight        ((t :foreground ,color2)))
     `(magit-diff-removed-highlight      ((t :foreground ,color1 :strike-through t)))
     `(magit-diff-context-highlight      ((t :foreground ,color1)))
     `(magit-diff-base                   ((t :foreground ,color1)))
     `(magit-diff-base-highlight         ((t :foreground ,color1)))
     `(magit-diff-lines-boundary         ((t :foreground ,color2)))
     `(magit-diff-lines-heading          ((t :foreground ,color2)))
     `(magit-hash                        ((t :foreground ,color7)))
     `(magit-item-highlight              ((t :background ,color1)))
     `(magit-log-author                  ((t :foreground ,color!)))
     `(magit-log-date                    ((t :foreground ,color2)))
     `(magit-log-graph                   ((t :foreground ,color4)))
     `(magit-process-ng                  ((t :foreground ,color!)))
     `(magit-process-ok                  ((t :foreground ,color7)))
     `(magit-section-heading             ((t :foreground ,color!)))
     `(magit-section-highlight           ((t :bold t)))
     `(magit-section-heading-selection   ((t :foreground ,color!)))
     `(magit-section-title               ((t :foreground ,color!)))
     `(magit-cherry-equivalent           ((t :foreground ,color!)))
     `(magit-cherry-unmatched            ((t :foreground ,color4)))
     `(magit-reflog-checkout             ((t :foreground ,color8)))
     `(magit-reflog-cherry-pick          ((t :foreground ,color6)))
     `(magit-bisect-bad                  ((t :inherit error)))
     `(magit-bisect-good                 ((t :inherit success)))
     `(magit-bisect-skip                 ((t :foreground ,color2)))
     `(magit-diff-conflict-heading       ((t :foreground ,color2)))
     `(magit-dimmed                      ((t :foreground ,color2)))

     ;; modeline
     `(mode-line           ((t :foreground ,color2 :background ,color4)))
     `(mode-line-inactive  ((t :foreground ,color2 :background ,color4)))
     `(mode-line-buffer-id ((t :foreground ,color! :background ,color4)))

     ;; term
     `(term               ((t :foreground ,color2 :background ,color0)))
     `(term-color-black   ((t :foreground ,color2)))
     `(term-color-blue    ((t :foreground ,color8)))
     `(term-color-cyan    ((t :foreground ,colorx)))
     `(term-color-green   ((t :foreground ,color6)))
     `(term-color-magenta ((t :foreground ,color9)))
     `(term-color-red     ((t :foreground ,color5)))
     `(term-color-white   ((t :foreground ,color0)))
     `(term-color-yellow  ((t :foreground ,color7)))

     ;; line numbers
     `(line-number              ((t :inherit font-lock-comment-face)))
     `(line-number-current-line ((t :foreground ,color! :background ,color4)))

     ;; ido
     `(ido-first-match ((t :foreground ,color!)))
     `(ido-only-match  ((t :foreground ,color!)))
     `(ido-subdir      ((t :foreground ,color8)))
     `(ido-indicator   ((t :foreground ,color0 :background ,color6)))

     ;; show-paren
     `(show-paren-match    ((t :inherit cursor)))
     `(show-paren-mismatch ((t :inherit error)))

     ;; slime
     `(slime-repl-inputed-output-face ((t :foreground ,color2)))

     ;; whitespace mode
     `(whitespace-space            ((t :foreground ,color$)))
     `(whitespace-empty            ((t :foreground ,color$)))
     `(whitespace-indentation      ((t :foreground ,color$)))
     `(whitespace-line             ((t :foreground ,color$)))
     `(whitespace-newline          ((t :foreground ,color$)))
     `(whitespace-space-after-tab  ((t :foreground ,color$)))
     `(whitespace-space-before-tab ((t :foreground ,color$)))
     `(whitespace-tab              ((t :foreground ,color$)))
     `(whitespace-trailing         ((t :foreground ,color$))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mlso)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; mlso-theme.el ends here
