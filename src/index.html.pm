#lang pollen
◊(require pollen/pagetree pollen/template sugar/coerce)

◊h1[#:class "site-identity"]{Miró◊br{}Allard}

◊(let () (current-pagetree (load-pagetree "index.ptree")) "")

◊h2{Inlägg}
◊(apply ul #:class "posts"
(for/list ([post (children 'inlagg/index.html)])
(cons 'li (list (node->link post) (div #:class "post-date" (or (select-from-metas 'date post) "20"))))))
