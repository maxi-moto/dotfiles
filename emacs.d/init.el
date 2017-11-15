;-*-Emacs-Lisp-*-
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Emacs configs
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; TODO:
;; look into flycheck (syntax checker)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq tab-width 2)
(setq vc-follow-symlinks t)
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq-default indent-tabs-mode nil)
(setq-default fill-column 80)

(setq backup-directory-alist `(("." ."~/.emacs.d/backups")))
(setq backup-by-copying t)

(eval-after-load "dired" '(progn
    (define-key dired-mode-map (kbd "a") nil)
    (define-key dired-mode-map (kbd "^") nil)
    (define-key dired-mode-map (kbd "-") 'dired-up-directory)))

;; Packages
(package-initialize)
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-isntall 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package helm
  :ensure t
  :diminish helm-mode
  :commands helm-mode
  :config
  (helm-mode 1)
  (setq helm-buffers-fuzzy-matching t)
  (setq helm-autoresize-mode t)
  (setq helm-buffer-max-length t))
  ;; (define-key helm-map (kbd "S-SPC") 'helm-toggle-visible-mark)
  ;; (define-key helm-find-files-map (kbd "C-k") 'helm-find-files-up-one-level))

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(use-package nlinum-relative
  :ensure t
  :config
  (nlinum-relative-setup-evil)
  (setq nlinum-relative-redisplay-delay 0)
  (add-hook 'prog-mode-hook #'nlinum-relative-mode))

(use-package whitespace
  :ensure t
  :config
  (setq-default whitespace-line-column 80)
  (setq-default whitespace-style '(face empty tabs lines-tail trailing))
  (global-whitespace-mode t))
