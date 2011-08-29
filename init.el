;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))
(setq sitelisp-dir (expand-file-name "src" dotfiles-dir))

(custom-set-variables '(temporary-file-directory (concat dotfiles-dir "tmp")))

(add-to-list 'load-path (expand-file-name
                         "lisp" (expand-file-name
                                 "org" sitelisp-dir)))

(add-to-list 'load-path (expand-file-name "~/dc/org/init/src"))

;; Load up Org Mode and Babel
(require 'org-install)
(require 'ob-tangle)

;; load up the main file
(org-babel-load-file (expand-file-name "starter-is.org" dotfiles-dir))

;;; init.el ends here