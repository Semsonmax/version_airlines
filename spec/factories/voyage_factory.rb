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
#  arrive_lat      :float            default(0.0)
#  arrive_long     :float            default(0.0)
#  depart_lat      :float            default(0.0)
#  depart_long     :float            default(0.0)
#

FactoryGirl.define do
  factory :voyage, class: Voyage do
    code                  'BNY120'
    airfield_depart       'Berlin'
    airfield_arrive       'New York'
    voyage_date           '1900-04-01'
    zeppelin              {Zeppelin.create(:name=>'Big Bertha',:style=>'777',:number_of_rows=>5,:number_of_columns=>2)}
  end
end
