class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)
    $('body').on('click', '.seat_column', Version.get_seat_id)
    Version.mark_occupied_seats

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
    $('.new_button').show();

  @mark_occupied_seats: ->
    if $('.seat_column').data('occupied') == true


  @get_seat_id: ->
    row = $(this).data('row')
    $(this).css('background-color', '#333')
    console.log('Row is '+row)
    column = $(this).data('column')
    console.log('Column is '+column)
    $('#seat_row').val(row)
    $('#seat_column').val(column)
    # settings =
    #   dataType: 'script'
    #   type: 'post'
    #   url: "/bookings"
    #   data: {authenticity_token:token, }
    # $.ajax(settings)

$(document).ready(Version.document_ready)
