module Stocks
  class APIV1 < Grape::API
    format :json
    #error_format :json
    #add_swagger_documentation api_version: 'v1'
    add_swagger_documentation(
          api_version: "v1",
          hide_documentation_path: true,
          mount_path: "/api/v1/swagger_doc",
          hide_format: true
        )

    resource :stocks do

      desc "Returns a stock for a given ticker_id"
      params do
        requires :ticker, type: String
      end
      get :ticker do
        stock = Stock.where(:ticker => params[:ticker]  )
        #present stock, :with => Users::UserResponseEntity
      end

      desc "List all stock for a given exchange"
      params do
        requires :country, type: String
      end
      get :country do
        Stock.where( :country => params[:country] )
        #present stock, :with => Users::UserResponseEntity
      end

      desc "List all stocks"
      get '' do
        stock = Stock.all
        #present stock, :with => Users::UserResponseEntity
      end

    end

  end
end
