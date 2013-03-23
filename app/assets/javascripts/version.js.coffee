class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)
    $('body').on('click', '.seat_column', Version.get_seat_id)
    $('.new_button').click(Version.toggle)
  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
    $('.new_button').show();

  @get_seat_id: ->
    row = $(this).data('row')
    console.log('Row is '+row)
    column = $(this).data('column')
    console.log('Column is '+column)

  @toggle: ->

    $(this).animate({left: $(this).width},500)

$(document).ready(Version.document_ready)

