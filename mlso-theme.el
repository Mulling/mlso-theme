;;; mlso-theme.el --- A dark, medium contrast theme

;;; Title: mlso theme
;;; Project: mlso-theme
;;; Version: 1.0
;;; URL: https://github.com/Mulling/mlso-theme
;;; Autor: github.com/Mulling
;;; Pakcage-Requires: ((emcas "24"))

;;; Commentary:

;;; This theme is a work in progress as i'm still learnig the elisps.
;;; it is heavly base on srcery: github.com/srcery-colors/srcery-emacs
;;; and suscolors: github.com/TheSuspiciousWombat/SusColors-emacs and
;;; i mean heavly, i didn't know how to make themes, so a basicaly
;;; copied how they did it.

;;; Code:
(unless (>= emacs-major-version 24)
  (error "Theme requires version 24 or greater"))

(deftheme mlso
  "A dark, medium contrast theme.")

(when window-system
  (let ((class '((class color) (min-colors 2)))
        (color0 "#1C1B19")               ;black
        (color1 "#555249")               ;light-black
        (color2 "#DEBE7C")               ;white
        (color3 "#918175")               ;light-white
        (color4 "#303030")               ;gray
        (color5 "#EF2F27")               ;red
        (color6 "#519F50")               ;green
        (color7 "#cb7400")               ;yellow
        (color8 "#458588")               ;blue
        (color9 "#D31F60")               ;magenta
        (colorx "#0AAEB3")               ;light-cyan
        (color! "#EB5800")               ;orange
        (color@ "#f85946"))              ;salmon
    (custom-theme-set-faces
     'mlso

     `(default     ((t :background ,color0 :foreground ,color2)))
     `(cursor      ((t :background ,color! :foreground ,color0)))
     `(fringe      ((t :background ,color0 :foreground ,color2)))
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
     `(font-lock-keyword-face       ((t :foreground ,color9)))
     `(font-lock-string-face        ((t :foreground ,color6)))
     `(font-lock-type-face          ((t :foreground ,color@)))
     `(font-lock-variable-name-face ((t :foreground ,colorx)))
     `(font-lock-reference-face     ((t :foreground ,colorx)))
     `(font-lock-preprocessor-face  ((t :foreground ,color7)))

     ;; seach and hilight
     `(highlight         ((t :inverse-video t)))
     `(isearch           ((t :inverse-video t)))
     `(lazy-highlight    ((t :inverse-video t)))
     `(match             ((t :inverse-video t)))
     `(region            ((t :inverse-video t)))
     `(minibuffer-prompt ((t :foreground ,color!)))
     `(vertical-border   ((t :foreground ,color4)))
     `(warning           ((t :foreground ,color5)))
     `(isearch-fail      ((t :foreground ,color5 :strike-through t)))
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
     `(dired-directory  ((t :foreground ,color8 :background ,color0)))
     `(dired-flagged    ((t :foreground ,color5)))
     `(dired-header     ((t :foreground ,color9)))
     `(dired-mark       ((t :foreground ,color6)))
     `(dired-marked     ((t :foreground ,color9)))
     `(dired-perm-write ((t :foreground ,color0 :underline t)))
     `(dired-symlink    ((t :foreground ,color7)))
     `(dired-warning    ((t :foreground ,color5)))

     ;;eldoc
     `(eldoc-highlight-function-argument ((t :foreground ,color!)))

     ;; eshell
     `(eshell-ls-archive    ((t :foreground ,color5 :underline t)))
     `(eshell-ls-backup     ((t :inherit font-lock-comment-face)))
     `(eshell-ls-clutter    ((t :inherit font-lock-comment-face)))
     `(eshell-ls-directory  ((t :foreground ,color8)))
     `(eshell-ls-executable ((t :foreground ,color9)))
     `(eshell-ls-missing    ((t :inherit font-lock-warning-face)))
     `(eshell-ls-product    ((t :inherit font-lock-doc-face)))
     `(eshell-ls-special    ((t :foreground ,color9)))
     `(eshell-ls-symlink    ((t :foreground ,color7)))
     `(eshell-ls-unreadable ((t :foreground ,color5)))
     `(eshell-prompt        ((t :foreground ,color5)))

     ;; flycheck
     `(flycheck-error                   ((t :foreground ,color5 :underline t)))
     `(flycheck-info                    ((t :foreground ,colorx :underline t)))
     `(flycheck-warning                 ((t :foreground ,color7 :underline t)))
     `(flycheck-error-list-checker-name ((t :foreground ,color5)))
     `(flycheck-fringe-error            ((t :foreground ,color5 )))
     `(flycheck-fringe-info             ((t :foreground ,colorx)))
     `(flycheck-fringe-warning          ((t :foreground ,color7)))

     ;; magit
     `(magit-blame-culprit               ((t :foreground ,color7)))
     `(magit-blame-header                ((t :foreground ,color6)))
     `(magit-blame-sha1                  ((t :foreground ,color7)))
     `(magit-blame-subject               ((t :foreground ,color7)))
     `(magit-blame-time                  ((t :foreground ,color6)))
     `(magit-blame-name                  ((t :foreground ,color7)))
     `(magit-blame-heading               ((t :foreground ,color6)))
     `(magit-blame-hash                  ((t :foreground ,color7)))
     `(magit-blame-summary               ((t :foreground ,color7)))
     `(magit-blame-date                  ((t :foreground ,color6)))
     `(magit-log-date                    ((t :foreground ,color2)))
     `(magit-log-graph                   ((t :foreground ,color2)))
     `(magit-reflog-amend                ((t :foreground ,color9)))
     `(magit-reflog-other                ((t :foreground ,colorx)))
     `(magit-reflog-rebase               ((t :foreground ,color9)))
     `(magit-reflog-remote               ((t :foreground ,colorx)))
     `(magit-reflog-reset                ((t :foreground ,color5)))
     `(magit-branch                      ((t :foreground ,color9)))
     `(magit-branch-current              ((t :foreground ,color8 :background ,color0 :box t)))
     `(magit-branch-local                ((t :foreground ,color8 :background ,color0)))
     `(magit-branch-remote               ((t :foreground ,colorx :background ,color0)))
     `(magit-diff-file-header            ((t :foreground ,color7)))
     `(magit-diff-file-heading           ((t :foreground ,color8)))
     `(magit-diff-file-heading-highlight ((t :foreground ,color8)))
     `(magit-diff-file-heading-selection ((t :foreground ,color8 :background ,color2)))
     `(magit-diff-hunk-heading           ((t :foreground ,color7)))
     `(magit-diff-hunk-heading-highlight ((t :foreground ,color7)))
     `(magit-diff-hunk-heading-selection ((t :foreground ,color2 :background ,color0)))
     `(magit-diff-added                  ((t :foreground ,color2)))
     `(magit-diff-removed                ((t :foreground ,color1)))
     `(magit-diff-context                ((t :foreground ,color1)))
     `(magit-diff-added-highlight        ((t :foreground ,color2)))
     `(magit-diff-removed-highlight      ((t :foreground ,color1 :strike-through t)))
     `(magit-diff-context-highlight      ((t :foreground ,color1)))
     `(magit-diff-base                   ((t :foreground ,color1)))
     `(magit-diff-base-highlight         ((t :foreground ,color1)))
     `(magit-diff-lines-boundary         ((t :background ,color0 :foreground ,color2)))
     `(magit-diff-lines-heading          ((t :background ,color0 :foreground ,color2)))
     `(magit-hash                        ((t :foreground ,color7)))
     `(magit-item-highlight              ((t :background ,color1)))
     `(magit-log-author                  ((t :foreground ,color7)))
     `(magit-log-head-label-head         ((t :foreground ,color2 :background ,color7 )))
     `(magit-log-head-label-local        ((t :foreground ,color2 :background ,color5 )))
     `(magit-log-head-label-remote       ((t :foreground ,color2 :background ,color6 )))
     `(magit-log-head-label-tags         ((t :foreground ,color2 :background ,color9 )))
     `(magit-log-head-label-wip          ((t :foreground ,color2 :background ,colorx )))
     `(magit-log-sha1                    ((t :foreground ,color6)))
     `(magit-process-ng                  ((t :foreground ,colorx)))
     `(magit-process-ok                  ((t :foreground ,color7)))
     `(magit-section-heading             ((t :foreground ,color9)))
     `(magit-section-highlight           ((t :bold t)))
     `(magit-section-heading-selection   ((t :foreground ,color9)))
     `(magit-section-title               ((t :background ,color0 :foreground ,color9)))
     `(magit-cherry-equivalent           ((t :foreground ,color9)))
     `(magit-cherry-unmatched            ((t :foreground ,colorx)))
     `(magit-reflog-checkout             ((t :foreground ,color8)))
     `(magit-reflog-cherry-pick          ((t :foreground ,color6)))
     `(magit-bisect-bad                  ((t :foreground ,color5)))
     `(magit-bisect-good                 ((t :foreground ,color6)))
     `(magit-bisect-skip                 ((t :foreground ,color0)))
     `(magit-diff-conflict-heading       ((t :foreground ,color0)))
     `(magit-dimmed                      ((t :foreground ,color0)))

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
     `(line-number              ((t :foreground ,color1 :background ,color0)))
     `(line-number-current-line ((t :foreground ,color! :background ,color4)))

     ;; ido
     `(ido-first-match ((t :foreground ,color6)))
     `(ido-only-match  ((t :foreground ,color!)))
     `(ido-subdir      ((t :foreground ,color8)))
     `(ido-indicator   ((t :foreground ,color0 :background ,color6)))

     ;; show-paren
     `(show-paren-match    ((t :foreground ,color0 :background ,color!)))
     `(show-paren-mismatch ((t :foreground ,color0 :background ,color5))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mlso)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; mlso-theme.el ends here
