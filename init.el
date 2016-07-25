;; For Emacs 24.4.1

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
(el-get-bundle swift-mode)
(el-get-bundle auto-complete)
(el-get-bundle helm)
(el-get-bundle markdown-mode)
(el-get-bundle typescript-mode)
