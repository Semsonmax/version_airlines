# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  seat_id    :integer
#  is_admin   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :flight_id, :seat_id
  has_and_belongs_to_many :flights
  has_one :seat
end
