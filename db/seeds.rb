Traveler.delete_all
Voyage.delete_all
Seat.delete_all
Zeppelin.delete_all

z1 = Zeppelin.create(style: '777', number_of_rows: 3, number_of_columns: 3)
v1 = Voyage.create
v2 = Vovage.create
v1.zeppelin = z1
t1 = Traveler.create
t2 = Traveler.create
