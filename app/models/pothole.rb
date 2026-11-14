class Pothole < ApplicationRecord
  SEVERITIES = { 1 => "Minor", 2 => "Bad", 3 => "Dangerous" }.freeze

  validates :description, presence: true, length: { maximum: 1000 }
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
  validates :severity, inclusion: { in: SEVERITIES.keys }
  validates :address, length: { maximum: 255 }

  def severity_label
    SEVERITIES.fetch(severity, "Unrated")
  end
end
