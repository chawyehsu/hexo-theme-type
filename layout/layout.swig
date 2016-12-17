<!DOCTYPE html>
<html lang="{{ page.language || config.language }}">
{{ partial('partial/head') }}
<body>
<div id="loading-bar-wrapper">
  <div id="loading-bar"></div>
  <script>setLoadingBarProgress(20)</script>
</div>
<div id="site-wrapper" class="site-wrapper">
  {{ partial('partial/header') }}
  <script>setLoadingBarProgress(40)</script>
  <main id="main" role="main">
  {{ body }}
  </main>
  <script>setLoadingBarProgress(60)</script>
  {{ partial('partial/footer') }}
  <div class="overlay"></div>
  <script>setLoadingBarProgress(80)</script>
</div>
{{ partial('partial/sidebar') }}
{{ partial('partial/scripts') }}
<script>setLoadingBarProgress(100);</script>
</body>
</html>