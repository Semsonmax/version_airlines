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
FactoryGirl.define do
  factory :seat, class: Seat do
    row                   2
    column                2
  end
end
