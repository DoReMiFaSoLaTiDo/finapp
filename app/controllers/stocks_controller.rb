class StocksController < ApplicationController

  def index
    @stocks = Stock.where(country: "USA" )
    @count = 0
  end
end
