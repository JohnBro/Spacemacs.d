;;; packages.el --- johnbro-base layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: JohnBro <johnbro@JohnBro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `johnbro-base-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `johnbro-base/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `johnbro-base/pre-init-PACKAGE' and/or
;;   `johnbro-base/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst johnbro-base-packages
  '(
    evil
    evil-mc
    evil-escape
    whitespace
    (dired :location built-in)
    ))

(defun johnbro-base/post-init-evil()
  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-line)
  (define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
  (evil-add-hjkl-bindings recentf-dialog-mode-map 'emacs)
  (evil-add-hjkl-bindings custom-mode-map 'emacs)
  )

(defun johnbro-base/post-init-evil-mc()
  ;; Keep use <C-t> to jump the marker.
  (evil-define-key 'normal evil-mc-key-map (kbd "C-t") nil)
  (evil-define-key 'visual evil-mc-key-map (kbd "C-t") nil)
  (evil-define-key 'normal evil-mc-key-map (kbd "C-M-n") 'evil-mc-skip-and-goto-next-match)
  (evil-define-key 'visual evil-mc-key-map (kbd "C-M-n") 'evil-mc-skip-and-goto-next-match)
  )

(defun johnbro-base/post-init-evil-escape ()
  ;; use jk to repleace escape
  (setq-default evil-escape-key-sequence "jk")
  (setq-default evil-escape-delay 0.4)
  )

(defun johnbro-base/post-init-whitespace()
  (setq-default whitespace-trailing '(t (:underline "#FF2626")))
  )

(defun johnbro-base/post-init-dired()
  (use-package dired-mode
    :defer t
    :init
    (progn
      (require 'dired-x)
      (setq dired-omit-files
            (concat dired-omit-files "\\|^.DS_Store$\\|^.projectile$\\|\\.js\\.meta$\\|\\.meta$"))
      ;; always delete and copy recursively
      (setq dired-recursive-deletes 'always)
      (setq dired-recursive-copies 'always)
      ;; FIXME: don't work.
      (put 'dired-find-alternate-file 'disabled nil)
     ))
  )

;;; packages.el ends here
