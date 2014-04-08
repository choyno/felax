$(document).ready ->
  $('#calendar').fullCalendar
    editable: false,
    selectable: true,
    header:
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    defaultView: 'agendaWeek',
    height: 800,
    firstHour: 10,
    minTime: 9,
    maxTime: 22,
    slotMinutes: 15,
    events: '/events.json'
    eventColor: '#378006'
    eventTextColor: 'white'
    timeFormat: 'h:mm t{ - h:mm t} ',
    dragOpacity: "0.5"


