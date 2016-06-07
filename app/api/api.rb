#require 'grape'
#app/api/base.rb

#module API
  class API < Grape::API
    prefix 'api'
    format :json
    #error_format :json

    version 'v1', using: :path #, :vendor => "App"

    rescue_from Mongoid::Errors::DocumentNotFound do |error|
      rack_response({"error" => {"message" => "We didn't find what we were looking for"}}.to_json, 404)
    end

    mount Stocks::APIV1
    #mount V1::Stocks
  end
#end
