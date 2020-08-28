require 'httparty'

module Oy
  module Service
    def self.included(base)
      base.class_eval do
        include HTTParty
        base_uri 'https://partner.oyindonesia.com/'
        headers 'Accept'        => 'application/json',
                'X-Oy-Username' => Oy.configuration.username, 
                'X-Api-Key'     => Oy.configuration.username 
      end
    end
  end
end
