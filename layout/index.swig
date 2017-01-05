  <div id="content" class="content wrap">
    <div class="page-header">
      <h1 class="post-title">{{ page.title }}</h1>
    </div>
    <ul class="post-list">
    {#- All posts but hidden -#}
    {%- for post in site.posts.sort('date', 'desc') -%}
      {%- if post.hidden != true -%}
      <li class="post-list-item">
        <a href="{{ url_for(post.path) }}">
          <span class="post-title">{{ post.title or post.link }}</span>
          <span class="post-meta">
            <time datetime="{{ post.date.format() }}">{{ post.date.format('dddd D MMMM YYYY') }}</time>
          </span>
        </a>
      </li>
      {%- endif -%}
    {%- endfor -%}
    </ul>
    {#- pagination -#}
    {%- if page.total > 1 -%}
    <nav class="pagination" role="pagination">
      {%- if page.prev -%}
      <a class="prev" href="{{ url_for(page.prev_link) }}">
        <span class="text">Prev</span>
      </a>
      {%- endif -%}
      {%- if page.next -%}
      <a class="next" href="{{ url_for(page.next_link) }}">
        <span class="text">Next</span>
      </a>
      {%- endif -%}
    </nav>
    {%- endif -%}
  </div>