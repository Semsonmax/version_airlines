# == Schema Information
#
# Table name: zeppelins
#
#  id                :integer          not null, primary key
#  style             :string(255)
#  number_of_rows    :integer
#  number_of_columns :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Zeppelin < ActiveRecord::Base
  attr_accessible :style, :number_of_rows, :number_of_columns
  has_many :seats, :inverse_of => :zeppelin
  has_many :voyages, :inverse_of => :zeppelin

  def total_seats
    self.number_of_rows * self.number_of_columns
  end

  def create_seats
    total_seats = self.zeppelin.total_seats
    j = 1
    k = 1
    self.number_of_rows.times do
      self.number_of_columns.times do
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
