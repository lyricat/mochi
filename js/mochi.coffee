$(document).ready(->
  $('.mochi_toggle').click(->
    $(@).prop('checked', $(@).prop('checked'))
    $(@).attr('checked', $(@).prop('checked'))
  )
)
