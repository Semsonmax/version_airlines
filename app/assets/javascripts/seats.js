$(function(){
  mark_occupied_seats();
  $('#voyages_table_filter').children().children().attr('placeholder','Search Voyages');
})

function mark_occupied_seats()
{
  var x = $('.seat_column');
  _.each(x, mark_occupied_seat);
}

function mark_occupied_seat(element, index, list)
{
  if ($(element).data('occupied') == true)
  {
    $(element).addClass('gray');
    if ($(element).data('user-occupied') == true)
    {
      $(element).removeClass('gray');
      $(element).addClass('blue');
    }
  }
  if ($(element).data('row') == $(element).next().data('row'))
  {

  }
  else
  {
    $(element).after('<div class="display-block"> </div>');
  }
}

function clear_seat_colors()
{
  var x = $('.seat_column');
  _.each(x, clear_seat_color);
}

function clear_seat_color(element, index, list)
{
  if ($(element).data('occupied') == false)
  {
    $(element).removeClass('blue');
  }
  if ($(element).data('user-occupied') == false)
  {
    $(element).removeClass('blue');
  }
}