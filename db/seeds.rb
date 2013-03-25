Traveler.delete_all
Voyage.delete_all
Seat.delete_all
Zeppelin.delete_all
Booking.delete_all

z1 = Zeppelin.create(name: 'The Lord Grantham', style: 'Victoria Class', number_of_rows: 5, number_of_columns: 4, description: 'Our flagship vessel, it has not exploded in over 34 years of service', engines: '4 diesel', image: 'zep1.jpg', year_built: 1911)
z2 = Zeppelin.create(name: 'The Admiral Nelson', style: 'Wellington Class', number_of_rows: 6, number_of_columns: 2, description: 'The Nelson is our pride and joy with over 2400 voyages without a cigarette incident', engines: '2 steam', image: 'zep2.jpg', year_built: 1919)
z3 = Zeppelin.create(name: 'The Royal Ulsterman', style: 'Clipper Class', number_of_rows: 4, number_of_columns: 2, description: 'Queen Victoria herself christened this vessel, and it has been a steadfast flying machine', engines: '6 diesel', image: 'zep3.jpg', year_built: 1920)
z4 = Zeppelin.create(name: 'HMS Buttercup', style: 'Victoria Class', number_of_rows: 5, number_of_columns: 2, description: 'Crowned as 1914s Zep-o-the-year, this beauty can make a transatlantic voyage in just a mere 3 weeks', engines: '2 diesel', image: 'zep4.jpg', year_built: 1914)

v1 = Voyage.create(zeppelin_id: z1.id, code: 'BN0401', airfield_depart: 'Berlin', airfield_arrive: 'Newark, New Jersey', voyage_date: '1900-04-01')
v2 = Voyage.create(zeppelin_id: z2.id, code: 'LP0501', airfield_depart: 'London', airfield_arrive: 'Paris', voyage_date: '1900-05-01')
v3 = Voyage.create(zeppelin_id: z3.id, code: 'TS0601', airfield_depart: 'Tokyo', airfield_arrive: 'Seattle', voyage_date: '1900-06-01')
v4 = Voyage.create(zeppelin_id: z1.id, code: 'TS0601', airfield_depart: 'Mexico City', airfield_arrive: 'Seattle', voyage_date: '1900-07-01')
v5 = Voyage.create(zeppelin_id: z2.id, code: 'TS0601', airfield_depart: 'Berlin', airfield_arrive: 'Chicago', voyage_date: '1900-08-01')
v6 = Voyage.create(zeppelin_id: z3.id, code: 'TS0601', airfield_depart: 'New York, NY', airfield_arrive: 'Amsterdam, Netherlands', voyage_date: '1900-09-01')
v7 = Voyage.create(zeppelin_id: z1.id, code: 'TS0601', airfield_depart: 'Santiago', airfield_arrive: 'New York', voyage_date: '1900-10-01')
v8 = Voyage.create(zeppelin_id: z2.id, code: 'TS0601', airfield_depart: 'Paris', airfield_arrive: 'New York', voyage_date: '1900-12-01')


t1 = Traveler.create(name: 'Winthrop', email: 'winthrop@gmail.com', password: 'a', password_confirmation: 'a')
t2 = Traveler.create(name: 'Reginald', email: 'reg@gmail.com', password: 'a', password_confirmation: 'a')
t3 = Traveler.create(name: 'Bartholomew', email: 'bart@gmail.com', password: 'a', password_confirmation: 'a')

a1 = Traveler.create(name: 'admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a')
a1.is_admin = true
a1.save

s1 = z1.seats.first
s2 = z1.seats.last

b1 = Booking.create(traveler_id: t1.id, voyage_id: v1.id, seat_id: s1.id)
b2 = Booking.create(traveler_id: t2.id, voyage_id: v1.id, seat_id: s2.id)


