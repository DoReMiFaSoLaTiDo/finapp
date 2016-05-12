class StocksController < ApplicationController

  def index
    @stocks = Stock.find( {:country => "USA"} )
    @count = 0
  end
end
