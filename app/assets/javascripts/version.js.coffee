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
    # if $(this).is('.blue')
    #   $(this).removeClass('blue')
    # else
    #   $(this).addClass('blue')
    clear_seat_colors()
    $(this).addClass('blue')
    seat_id = $(this).data('id')
    $('#seat_id').val(seat_id)
    # settings =
    #   dataType: 'script'
    #   type: 'post'
    #   url: "/bookings"
    #   data: {authenticity_token:token, }
    # $.ajax(settings)


  @empty_after_fade: ->
    $('#form').empty()


$(document).ready(Version.document_ready)

