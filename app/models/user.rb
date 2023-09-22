class User < ApplicationRecord
  has_many :litters
  has_many :fosters, through: :litters
end
