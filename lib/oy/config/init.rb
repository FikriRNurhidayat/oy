module Oy
  module Config
    class Init
      attr_accessor :api_key, :username

      def initialize
        @api_key = nil
        @username = nil
      end
    end
  end
end
