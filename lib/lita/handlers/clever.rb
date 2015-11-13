require 'lita'
require 'clever-api'

module Lita
  module Handlers
    class Clever < Handler
      route %r{^(.+)$}, :clever, command: true, exclusive: true

      def self.default_config(handler_config)
      end

      def clever(response)
        bot = CleverBot.new
        response.reply bot.think response.matches[0][0]
      end
    end

    Lita.register_handler(Clever)
  end
end
