class Address < ApplicationRecord
  belongs_to :citizen

  validates :zip, presence: true
  validates :address_line1, presence: true
  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true

end
