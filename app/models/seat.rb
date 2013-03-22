# == Schema Information
#
# Table name: seats
#
#  id          :integer          not null, primary key
#  booking_id  :integer
#  zeppelin_id :integer
#  row         :integer
#  column      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Seat < ActiveRecord::Base
  attr_accessible :row, :column, :zeppelin_id
  has_many :bookings
end
