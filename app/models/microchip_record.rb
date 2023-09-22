class MicrochipRecord < ApplicationRecord
  belongs_to :foster, foreign_key: 'foster_id'
end
