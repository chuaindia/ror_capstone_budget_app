class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transract_groups
  has_many :transracts, through: :transract_groups

  validates :icon, :name, presence: true
end
