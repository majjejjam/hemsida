◊(define title (or (select 'title metas) (select 'h1 doc) "Miró Allard"))
◊(define desc  (or (select 'desc metas)))

<!DOCTYPE html>
<html lang="sv">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>◊|title|</title>
    <link rel="stylesheet" type="text/css" media="all" href="/styles.css" />
  </head>
  <body>
    <!-- Header -->
    <header class="site-header">
      <a class="skip-link" href='#main'>Hoppa till innehåll</a>
      <nav class="site-navigation">
        <ul class="nav">
          <li><a href="/index.html">Hem</a></li>
          <li><a href="/about.html">Om</a></li>
        </ul>
      </nav>
    </header>
    <!-- Content -->
    <main id="main">
      ◊(->html doc)
    </main>
    <!-- Footer -->
    <footer class="site-footer">
      <ul>
        <li><a href="https://github.com/majjejjam/web" class="github">Källkod</a></li>
      </ul>
    </footer>
  </body>
</html>
