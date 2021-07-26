class Citizen < ApplicationRecord
  has_one :address
  accepts_nested_attributes_for :address

  validates :full_name, presence: true
  validates :cpf, presence: true, uniqueness: true, format: { with: /[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}/,
    message: "Invalido" }
  validates :cns, presence: true, uniqueness: true, format: { with: /[0-9]{3}\s?[0-9]{4}\s?[0-9]{4}\s?[0-9]{4}/,
    message: "Invalido" }
  validates :email, presence: true, uniqueness: true, format: { with: /\A.*@.*\.com\z/, message: "Formato invalido" }
  validates :birthdate, presence: true
  validates :phone, presence: true, format: { with: /[0-9]{2} (?:9[0-9]{1}|[1-5]{1})[0-9]{3}[0-9]{4}/}
  validates :status, presence: true
end
