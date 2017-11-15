class Client < ApplicationRecord
  has_many :performace, dependent: :destroy
  validates :nominative, presence: true, uniqueness: true
  validates :email, presence: true
  validates :via, presence: true
  validates :cap, presence: true
  validates :citta, presence: true
  validates :numero, presence: true
  validates :partita_iva, presence: true, length: {in: 11..11}, unless: :codice_fiscale?
  validates :codice_fiscale, presence: true, length: {in: 11..16}, unless: :partita_iva?

  def to_s
    nominative
  end
end
