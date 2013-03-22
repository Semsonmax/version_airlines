# == Schema Information
#
# Table name: voyages
#
#  id              :integer          not null, primary key
#  code            :string(255)
#  airfield_depart :string(255)
#  airfield_arrive :string(255)
#  voyage_date     :date
#  zeppelin_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :voyage, class: Voyage do
    code                  'BNY120'
    airfield_depart       'Berlin'
    airfield_arrive       'New York'
    voyage_date           '1900-04-01'
  end
end
