require 'oy/config'

module Oy
  autoload :PaymentCheckout, 'oy/payment_checkout'

  class Error < StandardError; end
  class ArgumentError < Error; end
end
