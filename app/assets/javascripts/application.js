// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
    $(document).ready(function() {
        setTimeout(function() {
            $('#notice_wrapper').fadeOut("slow", function() {
                $(this).remove();
            });
        }, 2000);
        setTimeout(function() {
            $('#alert_wrapper').fadeOut("slow", function() {
                $(this).remove();
            });
        }, 2000);
    });
$(document).ready(function() {
      $('.round-image-50').click(function(event) {
              $('.dropdownmenu').slideToggle(500);
      });
  });
        var sourceSwap = function () {
        var $this = $(this);
        var newSource = $this.data('alt-src');
        $this.data('alt-src', $this.attr('src'));
        $this.attr('src', newSource);
    }

    $(function () {
        $('img.logo').hover(sourceSwap, sourceSwap);
    });