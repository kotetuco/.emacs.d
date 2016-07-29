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

;; Config install-package(for el-get)

;; Common
(el-get-bundle auto-complete)
(el-get-bundle helm)
(el-get-bundle quickrun)

;; For Swift
(el-get-bundle swift-mode)

;; For markdown
(el-get-bundle markdown-mode)

;; For TypeScript
(el-get-bundle typescript-mode)

;; For Rust
(el-get-bundle rust-mode)

;; For ld script
;;(el-get-bundle ld-mode :type git :url "https://github.com/spenczar/ld-mode.git")
(el-get-bundle ld-mode :type http :url "http://opensource.apple.com//source/emacs/emacs-84/emacs/lisp/progmodes/ld-script.el?txt")

;; For erlang
(el-get-bundle erlang-mode)
