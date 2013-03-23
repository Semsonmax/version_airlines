class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)
    $('body').on('click', '.seat_column', Version.get_seat_id)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').fadeOut('slow')
    setTimeout(empty_after_fade(),3000);
    $('.new_button').show()

  @get_seat_id: ->
    row = $(this).data('row')
    console.log('Row is '+row)
    column = $(this).data('column')
    console.log('Column is '+column)


  @empty_after_fade: ->
    $('#form').empty()



$(document).ready(Version.document_ready)
