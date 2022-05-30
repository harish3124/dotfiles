;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Harish"
      user-mail-address "harishhari3112004@gmail.com")

(setq doom-font (font-spec :family "Jetbrainsmono NF" :size 14 :weight 'bold)
      doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq doom-theme 'doom-moonlight)

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(setq elfeed-goodies/entry-pane-size 0.5)

(evil-define-key 'normal elfeed-show-mode-map
  (kbd "J") 'elfeed-goodies/split-show-next
  (kbd "K") 'elfeed-goodies/split-show-prev)

(evil-define-key 'normal elfeed-search-mode-map
  (kbd "J") 'elfeed-goodies/split-show-next
  (kbd "K") 'elfeed-goodies/split-show-prev)

(setq elfeed-feeds (quote
                    (("https://archlinux.org/feeds/news/" Arch linux)
                     ("https://lwn.net/headlines/newrss" LWN linux)
                     ("https://www.reddit.com/r/unixporn/.rss" UnixPorn reddit))))

;; set eww as the default browser :
;; (setq browse-url-browser-function 'eww-browse-url)
(map! :leader
      :desc "Search web for text between BEG/END"
      "s w" #'eww-search-words
      (:prefix ("e" . "evaluate/EWW")
       :desc "Eww web browser" "w" #'eww
       :desc "Eww reload page" "R" #'eww-reload))

(setq org-roam-directory (file-truename "~/Programming/repos/RoamNotes"))

(setq org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js")
