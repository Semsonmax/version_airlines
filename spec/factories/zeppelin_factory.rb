# == Schema Information
#
# Table name: zeppelins
#
#  id                :integer          not null, primary key
#  style             :string(255)
#  number_of_rows    :integer
#  number_of_columns :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  name              :string(255)
#  description       :text
#  image             :string(255)      default("zep1.jpg")
#  engines           :text
#  year_built        :integer
#

FactoryGirl.define do
  factory :zeppelin, class: Zeppelin do
    name                  'The Lord Grantham'
    style                 'Clipper Class'
    number_of_rows        3
    number_of_columns     24
  end
end
