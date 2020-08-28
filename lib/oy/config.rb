require 'oy/config/init'
require 'oy/config/endpoint'

module Oy 
  class << self
    attr_reader :api_key, :username

    def configuration
      @configuration ||= Config::Init.new
    end

    def configure
      yield(configuration)
    end
  end
end
