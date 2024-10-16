class Instructor < ApplicationRecord
  validates :wno, :first_name, :last_name, presence: true

  def display_name
    "#{first_name} #{last_name}"
  end
  
end
