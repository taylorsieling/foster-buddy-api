class Foster < ApplicationRecord
  belongs_to :litter, foreign_key: 'litter_id'
  belongs_to :user, foreign_key: 'user_id'
  has_one :microchip_record
  has_one :alteration_record
  has_one :address, through: :litter
end
