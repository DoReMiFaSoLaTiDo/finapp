class Stock
  include Mongoid::Document
  field :symbol, type: String
  field :company_name, type: String
  field :country, type: String
end
