# == Schema Information
#
# Table name: airplanes
#
#  id                :integer          not null, primary key
#  style             :string(255)
#  number_of_rows    :integer
#  number_of_columns :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Airplane < ActiveRecord::Base
  attr_accessible :style, :number_of_rows, :number_of_columns
  has_many :flights, :inverse_of => :airplane

  def total_seats
    self.number_of_rows * self.number_of_columns
  end
end
