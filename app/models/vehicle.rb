class Vehicle < ApplicationRecord
  def new?
    (new) ? "New" : "Pre-Owned"
  end

  has_one_attached :image
end
