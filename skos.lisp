;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; skos.lisp
;;;;;
;;;;;   Simple Knowledge Organization System
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 17:13:19 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; Is this "BIKINI BEACH"?
;;;;;

(in-package :rx)


(defclass concept ({skos}Concept)
  ())

(defclass collection ({skos}Collection)
  ())

(defclass ordered-collection ({skos}OrderedCollection)
  ())

(defaccessor resource-example       (concept)  :property {skos}example
  :name example
  :type (or string null))
(defaccessor resource-narrower      (concept)  :property {skos}narrower
  :name narrower
  :type list)
(defaccessor resource-broader       (concept)  :property {skos}broader
  :name broader
  :type list)
(defaccessor resource-related       (concept)  :property {skos}related
  :name related
  :type list)
(defaccessor resource-label         (resource) :property {rdfs}label
  :name label
  :type (or string null))
(defaccessor resource-pref-label    (resource) :property {skos}prefLabel
  :name pref-label
  :type (or string null))
(defaccessor resource-alt-label     (resource) :property {skos}altLabel
  :name alt-label
  :type (or string null))
  

;;(defaccessor collection-member-list (collection) :property {skos}memberList)
;;(defaccessor concept-member (concept) :property {skos}member)



;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
