# == Schema Information
#
# Table name: flights
#
#  id             :integer          not null, primary key
#  code           :string(255)
#  airport_depart :string(255)
#  airport_arrive :string(255)
#  flight_date    :date
#  airplane_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Flight < ActiveRecord::Base
  attr_accessible :code, :airport_depart, :airport_arrive, :flight_date, :airplane_id
  has_and_belongs_to_many :users
  has_many :seats, :inverse_of => :flight
  belongs_to :airplane, :inverse_of => :flights

  def create_seats
    total_seats = self.airplane.total_seats
    j = 1
    k = 1
    self.airplane.number_of_rows.times do
      self.airplane.number_of_columns.times do
        seat = Seat.create(row: j, column: k)
        self.seats << seat
        k += 1
      end
      k = 1
      j += 1
    end
    j = 1
  end
end
