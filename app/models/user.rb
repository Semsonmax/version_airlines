# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  flight_id  :integer
#  seat_id    :integer
#  is_admin   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :flight_id, :seat_id
  belongs_to :flight, :inverse_of => :users
  has_one :seat
end
