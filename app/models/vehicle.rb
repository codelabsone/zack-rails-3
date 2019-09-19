class Vehicle < ApplicationRecord
  def new?
    (new) ? "New" : "Pre-Owned"
  end

  has_many_attached :images
end
