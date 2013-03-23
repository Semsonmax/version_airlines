class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)
    $('body').on('click', '.seat_column', Version.get_seat_id)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @get_seat_id: ->
    row = $(this).data('row')
    $(this).css('background-color', '#333')
    console.log('Row is '+row)
    column = $(this).data('column')
    console.log('Column is '+column)

$(document).ready(Version.document_ready)
