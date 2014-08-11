// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// $("#tabs a").click(function(e){
//   e.preventDefault();
//   $(this).tab('show');
// })
$(function() {

  $('.tab-pane:first').addClass('active');
  $('.nav-tabs li:first').addClass('active');
  $('#tabs a:first').tab('show');
  $('#tabs a:last').tab('show');


  $('#travel_name').editable({
    type: 'text',
    mode: 'inline',
    name: 'name'
  });
  $('#travel_time').editable({
    type: 'date',
    mode: 'inline',
    name: 'date'
  });
  $('#travel_description').editable({
    type: 'text',
    mode: 'inline',
    name: 'description'
  });
});
