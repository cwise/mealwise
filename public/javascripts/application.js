function set_tag_fields() {
  inited=false;
  $('.tag_field').tagit({
    allowSpaces: true, 
    removeConfirmation: true
  });
  inited=true;      
};


$(function() {
	set_tag_fields();
});
