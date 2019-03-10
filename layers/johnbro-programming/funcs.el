;;; funcs.el --- johnbro-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: JohnBro <johnbro@JohnBro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun johnbro-programming/indent-cc-mode ()
  (interactive)
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 4)
  (setq tab-width 4)
)

(defun johnbro-programming/indent-makefile-mode ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq tab-width 4)
  )

(defun johnbro-programming/indent-sh-script ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq sh-basic-offset 2)
  (setq tab-width 2)
  )
