# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# put your options and callbacks here
$(document).ready ->
  date = new Date()
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  calendar = $("#calendar").fullCalendar(
    header:
      left: "prev,today,next"
      right: "agendaDay"

    defaultView: "agendaDay"
    selectable: true
    selectHelper: true
    select: (start, end, allDay) ->
      title = prompt("Event Title:")
      if title
        calendar.fullCalendar "renderEvent",
          title: title
          start: start
          end: end
          allDay: allDay
        , true # make the event "stick"
      calendar.fullCalendar "unselect"

    editable: true
    events: [
      title: "Morning Status Meeting"
      start: new Date(y, m, d, 9, 30)
      allDay: false
    ,
      title: "Lunch meeting with John Appleseed"
      start: new Date(y, m, d, 12, 0)
      end: new Date(y, m, d, 13, 30)
      allDay: false
    ,
      title: "Android Product Review"
      start: new Date(y, m, d, 14, 0)
      end: new Date(y, m, d, 15, 0)
      allDay: false
    ,
      title: "Andrew and Matthew's baseball finals"
      start: new Date(y, m, d, 17, 0)
      end: new Date(y, m, d, 19, 0)
      allDay: false
    ,
      title: "Birthday Party"
      start: new Date(y, m, d + 1, 19, 0)
      end: new Date(y, m, d + 1, 22, 30)
      allDay: false
    ]
  )

$(document).ready ->
  $("#calendar").fullCalendar "render"