# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  traveler_id :integer
#  seat_id     :integer
#  voyage_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ActiveRecord::Base
  attr_accessible :traveler_id, :seat_id, :voyage_id
  has_many :seats
  has_many :voyages
  has_many :travelers

  validates :seat_id :voyage_id, :traveler_id, :presence => true
end
