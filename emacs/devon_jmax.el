;; -*- mode: Lisp -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-ref

;; adjust this path if it is not where aspell got installed
(setq-default ispell-program-name "C:/Program Files (x86)/Aspell/bin/aspell.exe")


(setq reftex-default-bibliography '((concat my_path-bib "references.bib")))

(global-set-key [f10] 'org-ref-open-bibtex-notes)
(global-set-key [f11] 'org-ref-open-bibtex-pdf)
(global-set-key [f12] 'org-ref-open-in-browser)

;; see org-ref.el for use of these variables
(setq org-ref-bibliography-notes (concat my_path-bib "notes.org"))
      org-ref-default-bibliography '((concat my_path-bib "references.bib"))
      org-ref-pdf-directory (concat my_path-bib "bibtex-pdfs/")

;;Tell the program who you are and setup for email
(setq user-full-name "Devon Walker"
      andrewid "devonw"
      user-mail-address "devonw@andrew.cmu.edu"
      ;; specify how email is sent
      send-mail-function 'smtpmail-send-it
      ;; used in message mode
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.andrew.cmu.edu"
      smtpmail-smtp-service 587)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jmax

;; Scale Latex
(plist-put org-format-latex-options :scale 1.5)

;; Scale inline images
(setq org-image-actual-width '(400))

;; Set theme
(setq jmax-user-theme 'leuven)
;(setq jmax-user-theme 'zenburn)

;; Turn on spell checking
(add-hook 'org-mode-hook 'turn-on-flyspell)

;; set i(a)spell options on different machines
(setq ispell-personal-dictionary (concat starter-kit-dir "user/.ispell"))

; Hotspots
(setq jmax-user-hotspot-commands
      '(("Calendar" . (lambda ()
			(browse-url "https://www.google.com/calendar/render")))
	("Contacts" . helm-org-contacts)
	("Agenda" . (lambda () (org-agenda "" "w")))
	))
