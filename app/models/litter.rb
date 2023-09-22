class Litter < ApplicationRecord
  belongs_to :user
  has_many :fosters
  has_one :address_found
end
