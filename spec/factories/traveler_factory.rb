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

FactoryGirl.define do
  factory :traveler, class: Traveler do
    name                  'ferdinand'
    email                 'ferdinand@gmail.com'
    password              'a'
    password_confirmation 'a'
  end

  factory :admin_traveler, class: Traveler do
    name                  'admin'
    email                 'admin@gmail.com'
    password              'a'
    password_confirmation 'a'
    is_admin              'true'
  end
end
