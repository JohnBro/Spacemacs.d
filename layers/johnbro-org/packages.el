;;; packages.el --- johnbro-org layer packages file for Spacemacs.
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

(defconst johnbro-org-packages
  '(
    (org :location built-in)
    )
  )

(defun johnbro-org/post-init-org ()
  (with-eval-after-load 'org
    (progn
      (spacemacs|disable-company org-mode)
      (require 'org)
      (setq org-image-actual-width (/ (display-pixel-width) 2))
      ))
  )

;;; packages.el ends here
