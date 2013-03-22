Traveler.delete_all
Voyage.delete_all
Seat.delete_all
Zeppelin.delete_all

z1 = Zeppelin.create(name: 'The Lord Grantham', style: 'Victoria Class', number_of_rows: 40, number_of_columns: 9)
z2 = Zeppelin.create(name: 'The Admiral Nelson', style: 'Wellington Class', number_of_rows: 30, number_of_columns: 6)
z3 = Zeppelin.create(name: 'The Royal Ulsterman', style: 'Clipper Class', number_of_rows: 15, number_of_columns: 4)
z4 = Zeppelin.create(name: 'HMS Buttercup', style: 'Vitoria Class', number_of_rows: 40, number_of_columns: 9)
z1.create_seats
z2.create_seats
z3.create_seats
z4.create_seats
v1 = Voyage.create(zeppelin_id: z1.id)
v2 = Voyage.create(zeppelin_id: z2.id)
t1 = Traveler.create(name: 'Winthrop', email: 'winthrop@gmail.com', password: 'a', password_confirmation: 'a')
a1 = Traveler.create(name: 'admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a')
a1.is_admin = true
a1.save

