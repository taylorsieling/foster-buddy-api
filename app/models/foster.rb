class Foster < ApplicationRecord
  belongs_to :litter
  belongs_to :user
  has_one :microchip_record
  has_one :alteration_record
  has_one :address, through: :litter
end
