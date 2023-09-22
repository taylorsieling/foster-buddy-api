class Litter < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :fosters
  has_one :address
end
