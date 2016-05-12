class Stock
  include Mongoid::Document
  field :ticker, type: String
  field :company, type: String
  field :exchange, type: String
  field :country, type: String
  field :category_name, type: String
  field :category_code, type: String

  validates :ticker, presence: true
  validates_uniqueness_of :ticker
  validates :company, presence: true
  validates_uniqueness_of :symbol
end
