require 'oy/service'
require 'oy/common/boolean'

# Made by Fikri Rahmat Nurhidayat <FikriRNurhidayat>
# At 28 August 2020
module Oy
  class PaymentCheckout
    include Service

    def initialize(args)
      args.each { |key, value| self.key = value }
    end

    # Create new payment checkout URL
    # This method will make an HTTP Request
    # To this endpoint on Oy!
    # POST BASE_URI/payment-checkout/create
    #
    # Definition of allowed arguments
    # This argument are being used on HTTP Request on Create Payment Checkout
    # 
    # Read this documentation for further information:
    # https://docs.oyindonesia.com/#api-create-url
    def self.create(args)
      raise Oy::ArgumentError.new("Argument must be hash") unless args.is_a? Hash
      self.post("/posts", body: args)
      # self.post(Oy::Config::Endpoint.PAYMENT_CHECKOUT_CREATE, body: args)
    end
  end
end
