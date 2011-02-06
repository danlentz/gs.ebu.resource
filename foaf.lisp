;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-
;;;;;
;;;;; foaf.lisp
;;;;;
;;;;;   friend of a friend
;;;;; 
;;;;; Author:      Dan Lentz, Lentz Intergalactic Softworks, Sun Feb  6 16:49:12 2011
;;;;; Maintainer:  <danlentz@gmail.com>
;;;;;
;;;;; I decided to be JOHN TRAVOLTA instead!!
;;;;;

(in-package :rx)

(defclass agent ()
  ((weblog
     :initarg :weblog
     :accessor agent-weblog
     :predicate {foaf}weblog)
    (account
      :initarg :account
      :accessor agent-account
      :predicate {foaf}account
      :type (or (cons online-account) null)
      :datatype {foaf}OnlineAccount)
    (mbox
      :initarg :mbox
      :accessor agent-mbox
      :type (or string null)
      :predicate {foaf}mbox
      :datatype {xsd}String)
    (openid
      :initarg :openid
      :accessor agent-openid
      :type (or string puri:uri null)
      :predicate {foaf}openid
      :datatype {xsd}AnyUri)
    (interest
      :initarg :interest
      :accessor agent-interest
      :predicate {foaf}interest)
    (skype-id
      :initarg :skype-id
      :accessor agent-skype-id
      :type (or string null) 
      :predicate {foaf}skypeID
      :datatype {xsd}String)
    (jabber-id
      :initarg :jabber-id
      :accessor agent-jabber-id
      :type (or string puri:uri null)
      :predicate {foaf}jabberID
      :datatype {xsd}AnyUri)
    (holds-account
      :initarg :holds-account
      :accessor agent-holds-account
      :predicate {foaf}holdsAccount)
    (topic
      :initarg :topic
      :accessor agent-topic
      :predicate {foaf}topic)
    (made
      :initarg :made
      :accessor agent-made
      :predicate {foaf}made))
  (:datatype {foaf}Agent))


(defclass group (agent)
  ((members
     :initarg :member
     :accessor group-member
     :predicate {foaf}member
     :type (or (cons agent) null)
     ))
  (:datatype {foaf}Group))


(defclass organization (agent)
  ()
  (:datatype {foaf}Organization))

(defclass document ()
  ((topic
     :initarg :topic
     :accessor  document-topic
     :predicate {foaf}topic)
    (maker
      :initarg :maker
      :accessor document-maker
      :predicate {foaf}maker)
    (primary-topic
      :initarg :primary-topic
      :accessor document-primary-topic
      :predicate {foaf}primaryTopic)
    (sha1
      :initarg :sha1
      :accessor document-sha1
      :type (or string null)
      :predicate {foaf}sha1
      :datatype {xsd}String))
  (:datatype {foaf}Document))

(defclass image (document)
  ((thumbnail
     :initarg :thumbnail
     :accessor image-thumbnail
     :predicate {foaf}thumbnail)
    (depicts
      :initarg :depicts
      :accessor image-depicts
      :predicate {foaf}depicts))
  (:datatype {foaf}Image))

(defclass online-account (agent {owl}Thing)
  ((service-homepage
     :initarg :service-homepage
     :accessor account-service-homepage
     :predicate {foaf}accountServiceHomepage
     :type (or string puri:uri null)
     :datatype {xsd}AnyUri)
    (name
      :initarg :name
      :accessor account-name
      :predicate {foaf}accountName
      :type (or string null)
      :datatype {xsd}String)))

(defclass personal-profile-document (document)
  ()
  (:datatype {foaf}PersonalProfileDocument))

(defclass label-property ()
  ()
  (:datatype {foaf}LabelProperty))

(defclass online-chat-account (online-account)
  ()
  (:datatype {foaf}OnlineChatAccount))

(defclass online-ecommerce-account (online-account)
  ()
  (:datatype {foaf}OnlineEcommerceAccount))

(defclass online-gaming-account (online-account)
  ()
  (:datatype {foaf}OnlineGamingAccount))

(defclass project ()
  ()
  (:datatype {foaf}Project))

(defclass person (agent)
  ((first-name
     :initarg :first-name
     :accessor person-first-name
     :type string
     :predicate {foaf}firstName
     :datatype {xsd}string)
    (last-name
      :initarg :last-name
      :accessor person-last-name
      :type string
      :predicate {foaf}lastName
      :datatype {xsd}string)
    (knows
      :initarg :knows
      :accessor person-knows
      :type (or (cons person) null)
      :predicate {foaf}knows
      :datatype {rdfs}Resource)
    (img
      :initarg :img
      :accessor person-img
      :type (or (cons image) null)
      :predicate {foaf}img
      :datatype {foaf}Image)
    (plan
      :initarg :plan
      :accessor person-plan
      :type (or string null)
      :predicate {foaf}plan
      :datatype {xsd}String)
    (currentProject
      :initarg :current-project
      :accessor person-current-project
      :type (or string puri:uri project null)
      :predicate {foaf}currentProject
      :datatype {foaf}Project)
    (age
      :initarg :age
      :accessor person-age
      :type integer
      :predicate {foaf}age
      :datatype {xsd}integer)
    (parents
      :initarg :parents
      :accessor person-parents
      :type (or (cons person) null)
      :predicate {rel}childof
      :datatype {rdfs}Resource))
  (:metaclass rdf:resource-class)
  (:datatype {foaf}Person)
  (:documentation "A class to model {foaf}Person."))

(defaccessor resource-homepage      (resource) :property '{foaf}homepage
  :name homepage
  :type (or 'string 'puri:uri null))

(defaccessor resource-is-primary-topic-of (resource) :property '{foaf}isPrimaryTopicOf
  :name is-primary-topic-of)

(defaccessor resource-maker (resource) :property '{foaf}maker
  :name maker)

;;;;;
;; Local Variables:
;; indent-tabs: nil
;; outline-regexp: ";;[;]+"
;; End:
;;;;;
