class Instructor < ApplicationRecord
  has_many :sections
  
  validates :wno, :first_name, :last_name, presence: true

  def display_name
    "#{first_name} #{last_name}"
  end
  
end
