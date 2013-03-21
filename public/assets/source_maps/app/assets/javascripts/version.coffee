class Version
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Version.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

$(document).ready(Version.document_ready)


