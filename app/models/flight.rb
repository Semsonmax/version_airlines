# == Schema Information
#
# Table name: flights
#
#  id                :integer          not null, primary key
#  code              :string(255)
#  airport_depart    :string(255)
#  airport_arrive    :string(255)
#  date_depart       :date
#  date_arrive       :date
#  number_of_rows    :integer
#  number_of_columns :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Flight < ActiveRecord::Base
  attr_accessible :code, :airport_depart, :airport_arrive, :date_depart, :date_arrive, :number_of_rows, :number_of_columns
  has_many :users, :inverse_of => :flight
  has_many :seats, :inverse_of => :flight
end
