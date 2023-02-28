#lang racket/base

(require pollen/decode pollen/misc/tutorial txexpr)
(require racket/string)

(provide (all-defined-out))
(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc (compose1 smart-dashes ellipses de-indexify punctuation-spacing))))

(define (link url . xs)
  `(a ((href ,url)) ,@xs))

(define (ellipses x)
  (string-replace x "..." "…"))

(define (de-indexify x)
  (string-replace x "/index.html" ""))

(define (punctuation-spacing x)
  (string-replace x ":" ":"))
