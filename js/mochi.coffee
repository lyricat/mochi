$(document).ready(->
  $('.mochi_toggle').click(->
    $(@).attr('checked', @.checked)
    return
  )
  $('.mochi_button_group_item').click(->
    name = $(@).attr('name')
    $(".mochi_button_group_item[name=#{name}]").not(@).removeClass('selected')
    $(@).addClass('selected')
  )
)
