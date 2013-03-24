$(function(){
  mark_occupied_seats();
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
    $(element).css('background-color','#333');
  }
  if ($(element).data('user-occupied') == true)
  {
    $(element).css('background-color','#003366');
  }
}

