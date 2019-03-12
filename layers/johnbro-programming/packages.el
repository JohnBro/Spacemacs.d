;;; packages.el --- johnbro-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: JohnBro <johnbro@JohnBro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst johnbro-programming-packages
  '(
    (cc-mode :location built-in)
    sh-script
    ))

(defun johnbro-programming/post-init-cc-mode ()
  (with-eval-after-load 'cc-mode
    (progn
      (add-hook 'c-mode-common-hook 'johnbro-programming/indent-cc-mode)
      (add-hook 'c-mode-common-hook
                '(lambda()
                   (setq fill-column 120)
                   (auto-fill-mode)
                   ))
      ))
  )

(defun johnbro-programming/post-init-sh-script ()
  (add-hook 'sh-mode-hook 'johnbro-programming/indent-sh-script)
  )

;;; packages.el ends here
