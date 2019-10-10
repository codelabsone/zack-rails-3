class Vehicle < ApplicationRecord

  validates :make, :model, :transmission, :engine, :drivetrain, :vin, :fuel_type, :body_style, :ext_color, :int_color, presence: true

  validates :price, :mileage, :mpg, :year, numericality: {greater_than_or_equal_to: 0}

  def new?
    (new) ? "New" : "Pre-Owned"
  end

  def self.search_for(query)
      Vehicle.where("year || ' ' || make || ' ' || model || ' ' || transmission || ' ' || engine || ' ' || drivetrain || ' ' || body_style || ' ' || ext_color  LIKE ?", "%#{query.squish}%")
  end

  has_many_attached :images
end
