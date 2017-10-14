<!DOCTYPE html>
<html lang="{{ page.language || config.language }}"{% if theme.night_mode %} class="night-mode"{% endif %}>
{{ partial('partial/head') }}
<body>
<div id="site-wrapper" class="site-wrapper">
  {{ partial('partial/header') }}
  <main id="main" role="main">
    {{ body }}
  </main>
  {{ partial('partial/footer') }}
</div>
{{ partial('partial/scripts') }}
</body>
</html>
