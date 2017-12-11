class Performance < ApplicationRecord
  belongs_to :client
  belongs_to :rate
  validates :client, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :duration, presence: true, inclusion: {in: 1..24}
  validates :rate, presence: true

end
