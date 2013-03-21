# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  user_id    :integer
#  row        :integer
#  column     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seat < ActiveRecord::Base
  attr_accessible :flight_id, :user_id, :row, :column
  belongs_to :flight, :inverse_of => :seats
  has_one :user
end
