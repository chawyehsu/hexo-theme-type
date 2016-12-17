  <div id="content" class="content wrap">
    <article itemscope itemtype="http://schema.org/Article">
      <header class="page-header">
        <h1 class="page-title">{{ page.title }}</h1>
        <!--<section class="post-meta">
          <time datetime="{{ page.date | date('Y-m-d') }}">{{ page.date | date('d M Y') }}</time>
        </section>-->
      </header>
      <section class="page-content">
        {{ page.content }}
      </section>
      <footer class="page-footer">
      </footer>
    </article>
  </div>