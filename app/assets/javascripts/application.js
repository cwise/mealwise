//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery-ui
//= require_self
//= require_tree .

$(function() {
  $('.tag_field').tagit({
    allowSpaces: true, 
    removeConfirmation: true
  });
});
