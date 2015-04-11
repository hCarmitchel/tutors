$(document).on('ready page:load', function(){
  $('#calendar').fullCalendar({events: '/appointments.json'});
  $('#appointments').DataTable({paging: false});
  $('#subjects').DataTable({paging: false});
});
