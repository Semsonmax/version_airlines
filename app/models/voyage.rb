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
#  arrive_lat      :float
#  arrive_long     :float
#  depart_lat      :float
#  depart_long     :float
#

class Voyage < ActiveRecord::Base
  attr_accessible :code, :airfield_depart, :airfield_arrive, :voyage_date, :zeppelin_id, :arrive_lat, :arrive_long, :depart_lat, :depart_long
  belongs_to :zeppelin, :inverse_of => :voyages
  has_many :bookings
  has_many :seats, :through => :bookings
  has_many :travelers, :through => :bookings
  validates :zeppelin_id, :presence => true

  before_save :get_arrive_coords
  before_save :get_depart_coords

  # def get_coords
  #   self.arrive_lat   = get_arrive_coords[0]
  #   self.arrive_long  = get_arrive_coords[1]
  #   self.depart_lat   = get_depart_coords[0]
  #   self.depart_long  = get_depart_coords[1]
  #   self.save
  # end

  # # Used for map
  def get_arrive_coords
    result = Geocoder.search(self.airfield_arrive).first
    # [result.latitude, result.longitude] if result.present?
    if result.present?
      self.arrive_lat = result.latitude
      self.arrive_long = result.longitude
    end
  end

# # Used for map
  def get_depart_coords
    result = Geocoder.search(self.airfield_depart).first
    # [result.latitude, result.longitude] if result.present?
     if result.present?
      self.depart_lat = result.latitude
      self.depart_long = result.longitude
    end
  end


  #   # Used for map
  # def get_coords(location)
  #   result = Geocoder.search(location).first
  #   [result.latitude, result.longitude] if result.present?
  # end


end
