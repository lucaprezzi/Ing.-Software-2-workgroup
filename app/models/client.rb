class Client < ApplicationRecord
  has_many :performances, dependent: :destroy
  validates :nominative, presence: true, uniqueness: true
  validates :email, presence: true
  validates :via, presence: true
  validates :cap, presence: true, numericality: {greater_than: 0}
  validates_numericality_of :cap, only_integer: true
  validates :civico, presence: true, numericality: {greater_than: 0}
  validates_numericality_of :civico, only_integer: true
  validates :citta, presence: true
  validates :stato, presence: true
  validates :numero, presence: true
  validates :partita_iva, presence: true, length: {in: 11..11}, unless: :codice_fiscale?
  validates :codice_fiscale, presence: true, length: {in: 11..16}, unless: :partita_iva?


  def to_s
    nominative
  end

  def indirizzo_completo
    via + " " + civico.to_s + ", " + citta + ", " + cap.to_s + ", " + provincia + ", " + stato
  end

  def invoiced #importo fatturato
    sum = 0.0
    Invoice.where(client_id: id).each{|x| sum += x.amount}
    sum
  end

  def da_fatturare #importo ancora da fatturare
    sum = 0.0
    Performance.where(client_id: id).select{|x| !x.invoiced}.each{|x| sum += x.duration.to_f * x.rate.to_f}
    sum
  end
end
