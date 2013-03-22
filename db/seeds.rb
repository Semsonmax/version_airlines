User.delete_all
Flight.delete_all
Seat.delete_all
Airplane.delete_all

a1 = Airplane.create(style: '777', number_of_rows: 3, number_of_columns: 3)
f1 = Flight.create
f2 = Flight.create
f1.airplane = a1
u1 = User.create
u2 = User.create
