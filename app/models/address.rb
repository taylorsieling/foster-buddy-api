class Address < ApplicationRecord
  belongs_to :litter, foreign_key: 'litter_id'
  belongs_to :foster, foreign_key: 'foster_id'
end
