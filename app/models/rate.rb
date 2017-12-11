class Rate < ApplicationRecord
  has_many :performances, dependent: :destroy
  validates :hourly_rate, presence: true, uniqueness: true, numericality: {greater_than: 0}

  def to_s
    hourly_rate.to_s
  end

  def to_f
    hourly_rate.to_f
  end

end
