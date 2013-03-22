# == Schema Information
#
# Table name: seats
#
#  id          :integer          not null, primary key
#  zeppelin_id :integer
#  row         :integer
#  column      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Seat < ActiveRecord::Base
  attr_accessible :row, :column, :zeppelin_id
  belongs_to  :zeppelin
  has_many :bookings
  has_many :voyages, :through => :bookings
  has_many :travelers, :through => :bookings

  validates :zeppelin_id, :presence => true
end
