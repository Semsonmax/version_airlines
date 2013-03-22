class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)
    $('#slider0').slider();

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()


$(document).ready(Version.document_ready)


