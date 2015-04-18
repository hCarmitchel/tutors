$(document).on('ready page:load', function(){
  $('#calendar').fullCalendar({events: '/appointments.json', allDaySlot: true, allDayText: true, header: {
    left:   'prev,next today',
    center: 'title',
    right:  'agendaDay,agendaWeek,month'
  }});
  $('#appointments').DataTable();
  $('#subjects').DataTable();
  $('#tutors').DataTable();
  $('#start_time').datetimepicker({minDate: moment(), sideBySide: true, stepping: 5, format: 'YYYY-MM-DD hh:mm'});
  $('#end_time').datetimepicker({minDate: moment(), sideBySide: true, stepping: 5, format: 'YYYY-MM-DD hh:mm'});
  $('#start_time').on('dp.change', function (e) {
    $('#end_time').data('DateTimePicker').minDate(e.date);
  });
  $('#end_time').on('dp.change', function (e) {
    $('#start_time').data('DateTimePicker').maxDate(e.date);
  });
});
