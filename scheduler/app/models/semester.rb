class Semester < ApplicationRecord
  validates :year, :term, presence: true

  def name
    "#{term} - #{year}"
  end
end
