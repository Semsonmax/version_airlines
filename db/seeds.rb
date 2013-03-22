Traveler.delete_all
Voyage.delete_all
Seat.delete_all
Zeppelin.delete_all
Booking.delete_all

z1 = Zeppelin.create(name: 'The Lord Grantham', style: 'Victoria Class', number_of_rows: 40, number_of_columns: 9)
z2 = Zeppelin.create(name: 'The Admiral Nelson', style: 'Wellington Class', number_of_rows: 30, number_of_columns: 6)
z3 = Zeppelin.create(name: 'The Royal Ulsterman', style: 'Clipper Class', number_of_rows: 15, number_of_columns: 4)
z4 = Zeppelin.create(name: 'HMS Buttercup', style: 'Vitoria Class', number_of_rows: 40, number_of_columns: 9)

v1 = Voyage.create(code: 'BN0401', airfield_depart: 'Berlin', airfield_arrive: 'New York', voyage_date: '1900-04-01')
v2 = Voyage.create(code: 'LP0501', airfield_depart: 'London', airfield_arrive: 'Paris', voyage_date: '1900-05-01')
v3 = Voyage.create(code: 'TS0601', airfield_depart: 'Tokyo', airfield_arrive: 'Seattle', voyage_date: '1900-06-01')

v1.zeppelin = z1
v1.save
v2.zeppelin = z2
v2.save
v3.zeppelin = z2
v3.save

t1 = Traveler.create(name: 'Winthrop', email: 'winthrop@gmail.com', password: 'a', password_confirmation: 'a')
t2 = Traveler.create(name: 'Reginald', email: 'reginald@gmail.com', password: 'a', password_confirmation: 'a')
t3 = Traveler.create(name: 'Bartholomew', email: 'bartholomew@gmail.com', password: 'a', password_confirmation: 'a')

a1 = Traveler.create(name: 'admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a')
a1.is_admin = true
a1.save

z1.create_seats
z2.create_seats

s1 = z1.seats.first

s2 = z2.seats.first

s3 = z2.seats.last

b1 = Booking.create(traveler_id: t1.id, voyage_id: v1.id, seat_id: s1.id)
b2 = Booking.create(traveler_id: t2.id, voyage_id: v2.id, seat_id: s2.id)
b3 = Booking.create(traveler_id: t1.id, voyage_id: v3.id, seat_id: s1.id)
b4 = Booking.create(traveler_id: t3.id, voyage_id: v3.id, seat_id: s2.id)
b5 = Booking.create(traveler_id: t2.id, voyage_id: v2.id, seat_id: s1.id)
b6 = Booking.create(traveler_id: t3.id, voyage_id: v3.id, seat_id: s2.id)

