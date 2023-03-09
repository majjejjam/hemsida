#lang racket/base

(require pollen/decode pollen/misc/tutorial txexpr)
(require racket/string)

(provide (all-defined-out))

;; Tags
(define (link url . xs)
  `(a ((href ,url)) ,@xs))

;; String processing
(define (ellipses x)
  (string-replace x "..." "…"))

(define (en-dashes x)
  (string-replace x "--" "–"))

(define (de-indexify x)
  (string-replace x "/index.html" ""))

(define (punctuation-spacing x)
  (string-replace x ":" ":"))

(define string-proc (compose1 ellipses
                              en-dashes
                              de-indexify
                              punctuation-spacing))

(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc string-proc)))
