class Rate < ApplicationRecord
  has_many :performace
  validates :hourly_rate, presence: true

  def to_s
    hourly_rate.to_s
  end
end
