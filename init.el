(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; from purcell/emacs.d
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(package-initialize)

(require-package 'evil)

(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)

(require 'evil)
(evil-mode t)
;; XEmacs backwards compatibility file
;;;(setq user-init-file
;;      (expand-file-name "init.el"
;;			(expand-file-name ".xemacs" "~")))
;;(setq custom-file
;;      (expand-file-name "custom.el"
;;			(expand-file-name ".xemacs" "~")))

(add-to-list 'load-path "~/.emacs.d/")
    (load "xcscope.el")
    (load "yang-mode.el")
    (load "git-blame.el")

(require 'xcscope)
(require 'git-blame)
(cscope-setup)

(setq user-mail-address "hari@versa-networks.com")

(define-globalized-minor-mode cscope-global
    cscope-minor-mode     (lambda ()    (cscope-minor-mode t))    )

(setq-default cscope-global)
(cscope-global)
(setq-default c-default-style "stroustrup"  
              tab-width 4
              indent-tabs-mode t
              c-basic-offset 4
              fill-column 78
              cscope-minor-mode t
              )

;;(defun cscope()
;;(setq-default cscope-minor-mode t))

;;(add-hook 'c-mode-common-hook
;;    (lambda () (cscope-minor-mode t)))

;;(add-hook 'buffer-list-update-hook 'cscope)

(setq tetris-score-file
   "~/.emacs.d/tetris-scores")

(define-key global-map [(ctrl f3)] 'cscope-set-initial-directory)
(define-key global-map [(ctrl f4)] 'cscope-unset-initial-directory)

(define-key global-map [(ctrl f5)] 'cscope-find-this-symbol)

(define-key global-map [(ctrl f6)] 'cscope-find-global-definition)

(define-key global-map [(ctrl f7)] 'cscope-find-global-definition-no-prompting)

(define-key global-map [(ctrl f8)] 'cscope-pop-mark)

(define-key global-map [(ctrl f9)] 'cscope-next-symbol)

(define-key global-map [(ctrl f10)] 'cscope-next-file)

(define-key global-map [(ctrl f11)] 'cscope-prev-symbol)

(define-key global-map [(ctrl f12)] 'cscope-prev-file)

(define-key global-map [(meta f9)] 'cscope-display-buffer)

(define-key global-map [(meta f10)] 'cscope-display-buffer-toggle)

;;(load-file user-init-file)
;;(load-file custom-file)

;;(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-stream-type  'ssl)
 '(smtpmail-smtp-service 465))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
