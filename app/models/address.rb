class Address < ApplicationRecord
  belongs_to :litter
  belongs_to :foster
end
