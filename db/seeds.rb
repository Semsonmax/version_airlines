User.delete_all
Flight.delete_all
Seat.delete_all

f1 = Flight.create(number_of_rows: 3, number_of_columns: 3)