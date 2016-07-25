;; For Emacs (>= 24.4.1)

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

;; For Swift
(el-get-bundle swift-mode)

;; For markdown
(el-get-bundle markdown-mode)

;; For TypeScript
(el-get-bundle typescript-mode)

;; For Objective-C
(el-get-bundle objc-mode)

;; For Rust
(el-get-bundle rust-mode)

;; For ld script
(el-get-bundle ld-mode)
