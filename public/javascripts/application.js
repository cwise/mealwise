function set_tag_fields() {
  $('.tag_field').tagit({
    allowSpaces: true, 
    removeConfirmation: true
  });   
};

function set_buttons() {
  $('.button').button();
};

$(function() {
	set_tag_fields();
	set_buttons();
});
