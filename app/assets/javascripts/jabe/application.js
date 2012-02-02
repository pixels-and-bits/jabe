// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_tree ./libs

$(function() {
  if($('#first-focus').length > 0) {
    $('#first-focus').focus();
  }
});

var Strappy = function() {
  return {
    updateSortables: function(parent) {
      var elems = $(parent + ' ul li .position'), i = 1
      elems.each(function() {
        this.value = i++
      })
    },

    sizeTehToolbars: function() {
      $('.textile-toolbar').each(function() {
        box_id = this.id.replace('textile-toolbar-', '')
        $(this).css('width', $('#' + box_id).css('width'))
      })
    },

    load_gat: function(code) {
      if (code) {
        var host = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        jQuery.getScript(host + "google-analytics.com/ga.js", function(){
          var tracker = _gat._getTracker(code);
          tracker._initData();
          tracker._trackPageview();
        });
      }
    }
  };
}();
