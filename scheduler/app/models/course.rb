class Course < ApplicationRecord
  validates :name, :title, :description, :credits, presence: true
  validates :credits, numericality: { only_integer: true }
end
