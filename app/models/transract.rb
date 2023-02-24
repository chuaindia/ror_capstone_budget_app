class Transract < ApplicationRecord
  has_many :transract_groups
  has_many :groups, through: :transract_groups
  belongs_to :author, class_name: 'User'

  validates :name, :author_id, presence: true
  validates :amount, numericality: true
end
