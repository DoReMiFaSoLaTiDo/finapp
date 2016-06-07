class StockSerializer < ActiveModel::Serializer

  attributes :id, :ticker, :company, :exchange,
       :country, :category_name, :category_code,
       :created_at, :updated_at
end
