Traveler.delete_all
Voyage.delete_all
Seat.delete_all
Zeppelin.delete_all

z1 = Zeppelin.create(name: 'The Lord Grantham', style: 'Victoria Class', number_of_rows: 40, number_of_columns: 9)
z2 = Zeppelin.create(name: 'The Admiral Nelson', style: 'Wellington Class', number_of_rows: 30, number_of_columns: 6)
z3 = Zeppelin.create(name: 'The Royal Ulsterman', style: 'Clipper Class', number_of_rows: 15, number_of_columns: 4)
z4 = Zeppelin.create(name: 'HMS Buttercup', style: 'Vitoria Class', number_of_rows: 40, number_of_columns: 9)
v1 = Voyage.create
v2 = Voyage.create
v1.zeppelin = z1
t1 = Traveler.create
t2 = Traveler.create
t3 = Traveler.create(name: 'Winthrop', email: 'winthrop@gmail.com', password: 'a', password_confirmation: 'a')
