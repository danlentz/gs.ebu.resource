;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; resource.asd
;;;;;
;;;;;   gs.ebu.resource
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 16:58:48 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; I'm ZIPPY the PINHEAD and I'm totally committed to the festive mode.
;;;;;

(in-package :cl-user)

(defpackage :gs.ebu.resource.system
  (:use :cl :asdf))

(in-package :gs.ebu.resource.system)

(defsystem :gs.ebu.resource
  :author "Dan Lentz"
  :maintainer "danlentz@gmail.com"
  :depends-on (:demacs)
  :serial t
  :components ((:static-file "resource.asd")
                (:file "package")
                (:file "vocab")
                (:file "dc")
                (:file "foaf")
                (:file "skos"))



;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
