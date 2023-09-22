class Foster < ApplicationRecord
  belongs_to :litter
  belongs_to :user, through: :litter
  has_one :microchip_record
  has_one :alteration_record
  has_one :address_found, through: :litter
end
