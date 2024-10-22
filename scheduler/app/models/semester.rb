class Semester < ApplicationRecord
  has_many :sections
  
  validates :year, :term, presence: true

  def name
    "#{term} - #{year}"
  end
end
