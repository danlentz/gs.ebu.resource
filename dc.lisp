;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; dc.lisp
;;;;;
;;;;;   dublin-core elemenets
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 16:43:56 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; This PORCUPINE knows his ZIPCODE..  And he has ``VISA''!!
;;;;;

(in-package :rx)

(rdfs:defaccessor resource-description (resource) :property '{dc}description
  :name description
  :type string)
(rdfs:defaccessor resource-title       (resource) :property '{dc}title
  :name title
  :type string)
(rdfs:defaccessor resource-contributor (resource) :property '{dc}contributor
  :name contributor
  :type (or string 'user))
(rdfs:defaccessor resource-creator     (resource) :property '{dc}creator
  :name creator
  :type (or string 'user))
(rdfs:defaccessor resource-coverage    (resource) :property '{dc}coverage
  :name coverage
  :type t)
(rdfs:defaccessor resource-date        (resource) :property '{dc}date
  :name date
  :type (or string {xsd}Date))
(rdfs:defaccessor resource-format      (resource) :property '{dc}format
  :name format
  :type t)
(rdfs:defaccessor resource-identifier  (resource) :property '{dc}identifier
  :name identifier
  :type (or string rdf:uri {xsd}AnyUri))
(rdfs:defaccessor resource-language    (resource) :property '{dc}language
  :name language
  :type t)
(rdfs:defaccessor resource-publisher   (resource) :property '{dc}publisher
  :name publisher
  :type t)
(rdfs:defaccessor resource-relation    (resource) :property '{dc}relation
  :name relation
  :type t)
(rdfs:defaccessor resource-rights      (resource) :property '{dc}rights
  :name rights
  :type t)
(rdfs:defaccessor resource-source      (resource) :property '{dc}source
  :name source
  :type (or string rdf:uri {xsd}AnyUri {rdfs}Resource))
(rdfs:defaccessor resource-subject     (resource) :property '{dc}subject
  :name subject
  :type (or string rdf:uri {xsd}AnyUri {rdfs}Resource))
;; (rdfs:defaccessor person-name          (person) :property '{foaf}firstName
;;   :name name
;;   :type string)
;; (rdfs:defaccessor person-age           (person) :property '{foaf}age
;;   :name age
;;   :type number)
;; (rdfs:defaccessor person-parents       (person) :property '{rel}childof
;;   :name parents
;;   :type (cons person))

  
                                          



;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
