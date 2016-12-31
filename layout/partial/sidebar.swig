{%- if is_post() and page.toc and toc(page.content).length > 1 -%}
  {%- set display_toc = true -%}
{%- endif -%}
<div id="site-sidebar" class="site-sidebar">
{%- if display_toc -%}
  {# Switch #}
  <div class="sidebar-switch show">
    <a class="dark-btn active" data-toggle="toc">
      <span class="text">Toc</span>
    </a>
    <a class="dark-btn" data-toggle="bio">
      <span class="text">Bio</span>
    </a>
  </div>
  {#- Toc -#}
  <div class="site-toc show">
    {{ toc(page.content) }}
  </div>
  {% endif -%}
  {#- Bio -#}
  <div class="site-bio {% if display_toc %}{% else %}show{% endif %}" style="display: {% if display_toc %}none{% else %}block{% endif %}">
    <div class="about-me">
      <div class="avatar">
        <img src="{{ theme.avatar }}" />
      </div>
      <div class="info">
        <a class="name dark-btn" href="{{ theme.biourl }}">
          {{ config.author }}
        </a>
      </div>
      <div class="info">
        <span class="item desc">
          {{ config.description }}
        </span>
      </div>
    </div>
    <div class="menu section">
      <ul>
      {%- for item in theme.menu -%}
        {%- if item.url && item.name -%}
        <li>
          <a href="{{ item.url }}" class="dark-btn block">
            {{ item.name }}
          </a>
        </li>
        {%- endif -%}
      {%- endfor -%}
      </ul>
    </div>
  </div>
</div>
<!-- hanabi: loadingbar & sidebar credit to Art Chen, see https://github.com/artchen -->