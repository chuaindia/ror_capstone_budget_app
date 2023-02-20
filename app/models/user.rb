class User < ApplicationRecord
  has_many :transracts
  has_many :groups
end
