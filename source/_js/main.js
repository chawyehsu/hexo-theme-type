(function($) {
  "use strict";

  var toggleMenu = function(e) {
    e.stopPropagation();
    $('body').toggleClass('menu-open');
    $('#site-nav-switch').toggleClass('active');
  };

  var closeMenu = function(e) {
    e.stopPropagation();
    $('body').removeClass('menu-open');
    $('#site-nav-switch').removeClass('active');
  };

  var toggleActive = function(self, e) {
    e.preventDefault();
    if (self.hasClass("active") === true) {
      self.removeClass("active");
    } else {
      self.addClass("active");
    }
  };

  var switchSidebarTab = function(e) {
    var self = $(this),
      target = self.attr('data-toggle'),
      counter_target = target === 'toc' ? 'bio' : 'toc';
    if (self.hasClass('active')) {
      return;
    }

    toggleActive(self, e);
    toggleActive(self.siblings('.dark-btn'), e);
    $('.site-' + counter_target).toggleClass('show');

    setTimeout(function() {
      $('.site-' + counter_target).hide();
      $('.site-' + target).show();
      setTimeout(function() {
        $('.site-' + target).toggleClass('show');
      }, 50);
    }, 240);
  };
  
  $(function() {
    $('#site-nav-switch').on('click', toggleMenu);
    $('#site-wrapper .overlay, #sidebar-close').on('click', closeMenu);
    $('#site-sidebar .sidebar-switch .dark-btn').on('click', switchSidebarTab);

    setTimeout(function() {
      $('#loading-bar-wrapper').fadeOut(500);
    }, 300);
  });
})(jQuery);
