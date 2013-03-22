# == Schema Information
#
# Table name: travelers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Traveler < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_many :bookings
  has_many :seats, :through => :bookings
  has_many :flights, :through => :bookings

  has_secure_password

end
