class Course < ApplicationRecord
  has_many :sections

  validates :name, :title, :description, :credits, presence: true
  validates :credits, numericality: { only_integer: true }

  has_rich_text :description
  
  def display_name
    name + " - " + title
  end
end
