;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; vocab.lisp
;;;;;
;;;;;   establish vocabularies used in product api
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 15:18:04 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; Not enough people play SKEE-BALL..  They're always thinking about
;;;;; ALIEN BEINGS!!
;;;;;

(in-package :rx)

(defun create-vocabulary (name uri)
  (rdf:ensure-vocabulary (rdf:wilbur-mediator) uri)
  (rename-package uri uri (list name))
  (de.setf.resource.implementation::save-vocabulary
    (find-vocabulary (wilbur-mediator) uri) t))

(create-vocabulary "foaf"        "http://xmlns.com/foaf/0.1/")
(create-vocabulary "skos"        "http://www.w3.org/2004/02/skos/core#")
(create-vocabulary "rss"         "http://purl.org/rss/1.0/")
(create-vocabulary "earl"        "http://www.w3.org/ns/earl#")
(create-vocabulary "dc"          "http://purl.org/dc/elements/1.1/")
(create-vocabulary "pointers"    "http://www.w3.org/2009/pointers#")
(create-vocabulary "sioc"        "http://rdfs.org/sioc/ns#")
(create-vocabulary "sioctypes"   "http://rdfs.org/sioc/types#")

(defvar things::foaf-vocabulary
  (require-vocabulary "http://xmlns.com/foaf/0.1/"))

(defvar things::skos-vocabulary
  (require-vocabulary "http://www.w3.org/2004/02/skos/core#"))

(defvar things::rss-vocabulary
  (require-vocabulary "http://purl.org/rss/1.0/"))

(defvar things::earl-vocabulary
  (require-vocabulary "http://www.w3.org/ns/earl#"))

(defvar things::dc-vocabulary
  (require-vocabulary "http://purl.org/dc/elements/1.1/"))

(defvar things::pointers-vocabulary
  (require-vocabulary "http://www.w3.org/2009/pointers#"))

(defvar things::sioc-vocabulary
  (require-vocabulary "http://rdfs.org/sioc/ns#"))

(defvar things::sioctypes-vocabulary
  (require-vocabulary "http://rdfs.org/sioc/types#"))

;;(create-vocabulary "http"   "http://www.w3.org/2006/http#")
;;(create-vocabulary "content"  "http://www.w3.org/2008/content#")    

;; (rdf:ensure-vocabulary (rdf:wilbur-mediator) "http://www.w3.org/2004/02/skos/core#")
;; (rename-package "http://www.w3.org/2004/02/skos/core#"
;;                 "http://www.w3.org/2004/02/skos/core#" '("skos"))
;; (de.setf.resource.implementation::save-vocabulary (rdf:find-vocabulary (rdf:wilbur-mediator) "http://www.w3.org/2004/02/skos/core#") t)

;; (rdf:ensure-vocabulary (rdf:wilbur-mediator) "http://purl.org/rss/1.0/")
;; (rename-package "http://purl.org/rss/1.0/" "http://purl.org/rss/1.0/" '("rss"))
;; (de.setf.resource.implementation::save-vocabulary (rdf:find-vocabulary (rdf:wilbur-mediator) "http://purl.org/rss/1.0/") t)

;; (rdf:ensure-vocabulary (rdf:wilbur-mediator) "http://www.w3.org/ns/earl#")
;; (rename-package "http://www.w3.org/ns/earl#" "http://www.w3.org/ns/earl#" '("earl"))
;; (de.setf.resource.implementation::save-vocabulary (rdf:find-vocabulary (rdf:wilbur-mediator) "http://www.w3.org/ns/earl#") t)

;; (ensure-vocabulary (wilbur-mediator) "http://www.w3.org/2006/http#")
;; (rename-package "http://www.w3.org/2006/http#" "http://www.w3.org/2006/http#" '("http"))
;; (save-vocabulary (find-vocabulary (wilbur-mediator) "http://www.w3.org/2006/http#") t)

;; (ensure-vocabulary (wilbur-mediator) "http://www.w3.org/2009/pointers#")
;; (rename-package "http://www.w3.org/2009/pointers#" "http://www.w3.org/2009/pointers#" '("pointers"))
;; (save-vocabulary
;;  (find-vocabulary (wilbur-mediator) "http://www.w3.org/2009/pointers#") t)

;; (rdf:ensure-vocabulary (rdf:wilbur-mediator) "http://rdfs.org/sioc/ns#")
;; (rename-package  "http://rdfs.org/sioc/ns#"  "http://rdfs.org/sioc/ns#" '("sioc"))
;; (de.setf.resource.implementation::save-vocabulary
;;  (rdf:find-vocabulary (rdf:wilbur-mediator) "http://rdfs.org/sioc/ns#") t)

;; (rdf:ensure-vocabulary (rdf:wilbur-mediator) "http://rdfs.org/sioc/types#")
;; (rename-package  "http://rdfs.org/sioc/types#"  "http://rdfs.org/sioc/types#" '("sioc-types"))
;; (de.setf.resource.implementation::save-vocabulary
;;  (rdf:find-vocabulary (rdf:wilbur-mediator) "http://rdfs.org/sioc/types#") t)



;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
