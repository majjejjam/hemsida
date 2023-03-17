#lang racket/base

(require pollen/decode pollen/misc/tutorial txexpr)
(require racket/string racket/list)
(require pollen/tag pollen/template pollen/core sugar/coerce)

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

(define (punctuation-spacing str)
  (define substrs (regexp-match* #px"\\s?[:;()?]" str #:gap-select? #t))
  (if (= (length substrs) 1)
      (car substrs)
      (cons 'quo (append-map (λ(str)
                               (let ([strlen (string-length str)])
                                 (if (> strlen 0)
                                     (case (substring str (sub1 strlen) strlen)
                                       [(":") (list '(squo-push) `(squo-pull ,str))]
                                       [(";") (list '(squo-push) `(squo-pull ,str))]
                                       [("?") (list '(squo-push) `(squo-pull ,str))]
                                       [(")") (list '(squo-push) `(squo-pull ,str))]
                                       [("(") (list '(dquo-push) `(dquo-pull ,str))]
                                       [else (list str)])
                                     (list str)))) substrs))))

(define string-proc (compose1 punctuation-spacing
                              en-dashes
                              ellipses
                              de-indexify))

(define (node->link node)
  (define node-string (->string node))
  (define link-name (or (select-from-metas 'title node) node-string))
  (link (string-append "/" node-string) link-name))

(define (node->date node)
  (define node-string (->string node))
  (define date (or (select-from-metas 'date node) node-string))
  (link (string-append "/" node-string) link-name))

(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc string-proc)))
