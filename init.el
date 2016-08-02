;; For Emacs (>= 24.4.1)
;; kotetuco 2016

;; 
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; Install el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;
;; Config install-package(for el-get)
;;

;; Common
(el-get-bundle auto-complete)
(el-get-bundle helm)
(el-get-bundle quickrun)
(el-get-bundle bind-key)

;; Swift
(el-get-bundle swift-mode)

;; Mmarkdown
(el-get-bundle markdown-mode)

;; TypeScript
(el-get-bundle typescript-mode)

;; Rust
(el-get-bundle rust-mode)

;; ld script
;;(el-get-bundle ld-mode :type git :url "https://github.com/spenczar/ld-mode.git")
(el-get-bundle ld-mode :type http :url "http://opensource.apple.com//source/emacs/emacs-84/emacs/lisp/progmodes/ld-script.el?txt")

;; erlang
(el-get-bundle erlang-mode)

;; magit
(el-get-bundle magit)

;;
;; For magit config
;;

(setq-default magit-auto-revert-mode nil)
(setq vc-handled-backends '())
(eval-after-load "vc" '(remove-hook 'find-file-hooks 'vc-find-file-hook))
(bind-key "C-x m" 'magit-status)
(bind-key "C-c l" 'magit-blame)
