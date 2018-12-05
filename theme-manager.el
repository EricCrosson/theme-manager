;;; theme-manager.el --- Manage color-themes -*- lexical-binding: t; -*-
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.com>
;; Version: 1.0.0
;; Keywords: convenience
;; URL: https://github.com/EricCrosson/theme-manager
;; Package-Requires: ((emacs "24"))
;;
;; This file is not a part of GNU Emacs.
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;

;; This package provides a level of abstraction for manipulating
;; color-themes.

;; Whereas
;;
;; some users want to use themes mutually-exclusively rather than
;; overlayed, and Emacs provides no functionality to swap themes,
;;
;; `theme-manager' exists to allow users to easily swap color-themes,
;; and to disable all active color-themes to return to the default
;; theme.

;;; Code:


;;;###autoload
(defun theme-manager-list-active-themes ()
  "List of active themes.  This information comes from `custom-enabled-themes'."
  (interactive)
  (if (called-interactively-p 'any)
      (message "%s" custom-enabled-themes)
    custom-enabled-themes))

;;;###autoload
(defun theme-manager-disable-all-themes ()
  "Disable all custom themes."
  (interactive)
  (mapc 'disable-theme custom-enabled-themes))

;;;###autoload
(defun theme-manager-change-theme (theme)
  "Disable all custom themes, then enable THEME."
  (interactive
  (list  (intern (completing-read "Load custom theme: "
                             (mapcar 'symbol-name
                                     (custom-available-themes))))))
  (theme-manager-disable-all-themes)
  (load-theme theme))


(provide 'theme-manager)

;;; theme-manager.el ends here
