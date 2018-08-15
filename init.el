; taken from https://gist.github.com/martinklepsch/4e5f2c52a5d9797278d1
; https://blog.aaronbieber.com/2015/05/24/from-vim-to-emacs-in-fourteen-days.html

(load-theme 'wombat t)
; load emacs built in package manager `package`
(require 'package)

; add package archives
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
; avoid running package-initialize again after processing init.el
(setq package-enable-at-startup nil)
(package-initialize)

; initialize package `use-package` to manage your packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
; always ensure that packages get installed if they aren't
(setq use-package-always-ensure t)

; install org
(use-package org)

; install evil
(use-package evil
  :init
  (setq evil-want-integration nil)
  :config
  (evil-mode t)
  (modify-syntax-entry ?_ "w")) ; make "_" a word character

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(use-package evil-leader
  :config (global-evil-leader-mode)
          (evil-leader/set-leader "<SPC>"))
	  (evil-leader/set-key
	    "fs" 'save-buffer
	    "gs" 'magit
	    "ad" (lambda () (interactive) (dired default-directory))
	    "bb" 'buffer-menu
	    "<tab>" 'switch-to-previous-buffer
	    "wh" 'evil-window-left
	    "wj" 'evil-window-down
	    "wk" 'evil-window-up
	    "wl" 'evil-window-right
	    "wd" 'delete-window
	    "wv" 'split-window-horizontally
	    "ws" 'split-window-vertically
	    )
(use-package evil-surround :after evil :config (global-evil-surround-mode 1))
(use-package evil-numbers :after evil) ; bind it to a key
(use-package evil-exchange :after evil :config (evil-exchange-install))
(use-package evil-commentary :after evil :config (evil-commentary-mode))
(use-package evil-matchit :after evil :config (global-evil-matchit-mode 1))
(use-package evil-visualstar :after evil :config (global-evil-visualstar-mode))
(use-package evil-collection :after evil :config (evil-collection-init))
(use-package evil-magit :after evil)
(use-package evil-org
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))



; install helm
(use-package popup)
(use-package async)
(use-package helm)
(use-package projectile)

; install other packages
(use-package markdown-mode)

; make "_" a word character like in vim


;
; ; List the packages you want
; (setq package-list '(evil
;                      evil-leader))
;
;
; (require 'evil)
; (evil-mode t)
;
; (require 'evil-magit)
;
; (require 'evil-leader)
; (global-evil-leader-mode)
; (evil-leader/set-leader " ")
;
; ressources
; https://emacsdojo.github.io/
; https://cestlaz.github.io/stories/emacs/
; https://www.reddit.com/r/emacs/comments/6s5470/useful_packages/
; https://github.com/noctuid/evil-guide
;
; ; learn more
; ; https://github.com/noctuid/evil-guide
;
; (custom-set-variables
;  ;; custom-set-variables was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
;  '(package-selected-packages (quote (evil-org evil-magit evil-leader evil))))
; (custom-set-faces
;  ;; custom-set-faces was added by Custom.
;  ;; If you edit it by hand, you could mess it up, so be careful.
;  ;; Your init file should contain only one such instance.
;  ;; If there is more than one, they won't work right.
;  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package evil-org evil-magit evil-leader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
