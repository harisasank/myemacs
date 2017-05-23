;;; ctags-update-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (turn-on-ctags-auto-update-mode ctags-auto-update-mode
;;;;;;  ctags-update) "ctags-update" "ctags-update.el" (22819 63979
;;;;;;  869372 0))
;;; Generated autoloads from ctags-update.el

(autoload 'ctags-update "ctags-update" "\
ctags-update in parent directory using `exuberant-ctags'.
1. you can call this function directly,
2. enable `ctags-auto-update-mode',
3. with prefix `C-u' then you can generate a new TAGS file in selected directory,
4. with prefix `C-uC-u' save the command to kill-ring instead of execute it.

\(fn &optional ARGS)" t nil)

(autoload 'ctags-auto-update-mode "ctags-update" "\
auto update TAGS using `exuberant-ctags' in parent directory.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-ctags-auto-update-mode "ctags-update" "\
turn on `ctags-auto-update-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("ctags-update-pkg.el") (22819 63979 969469
;;;;;;  779000))

;;;***

(provide 'ctags-update-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ctags-update-autoloads.el ends here