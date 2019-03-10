;;; config.el --- johnbro-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: JohnBro <johnbro@JohnBro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3


;; Indent for makefile
(add-hook 'makefile-mode-hook 'johnbro-programming/indent-makefile-mode)
(add-hook 'makefile-bsdmake-mode-hook 'johnbro-programming/indent-makefile-mode)
(add-hook 'makefile-automake-mode-hook 'johnbro-programming/indent-makefile-mode)
