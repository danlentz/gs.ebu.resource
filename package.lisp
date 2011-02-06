;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; package.lisp
;;;;;
;;;;;   application api package definition
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 15:22:24 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; When this load is DONE I think I'll wash it AGAIN..
;;;;;

(in-package :cl-user)

(defpackage :gs.ebu.resource
  (:shadowing-import-from :de.setf.resource
    :set
    :equal
    :type-of
    :namestring
    :find-class
    :delete
    :defclass)
  (:nicknames :rx)
  (:use :cl :de.setf.resource :demacs))

(defpackage :gs.ebu.things (:use)
  (:nicknames :things))

;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
