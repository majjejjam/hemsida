◊(define title (or (select 'title metas) (select 'h1 doc) "Miró Allard"))
◊(define desc  (or (select 'desc metas)))

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>◊|title|</title>
    <link rel="stylesheet" type="text/css" media="all" href="/styles.css" />
  </head>
  <body class="lang-racket">
    <header class="main">
      <div class="site-identity">
	<h1><a href="/index.html" class="home">Miró Allard</a></h1>
      </div>
      <nav>
        <ul>
          <li><a href="/gallery.html">Galleri</a></li>
          <li><a href="/about.html">Om</a></li>
        </ul>
      </nav>
    </header>
    <main>
      ◊(->html doc)
    </main>
  </body>
</html>
