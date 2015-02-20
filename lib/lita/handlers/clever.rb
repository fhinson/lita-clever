require 'lita'
require 'cleverbot-api'

module Lita
  module Handlers
    class Clever < Handler
      route(%r{^clever ([\w .-_]+)$}i, :clever, command: true, help: {
        'clever' => 'Initializes clever.'
      })

      def self.default_config(handler_config)
      end

      def clever(response)
        bot = CleverBot.new
        response.reply (bot.think "hello")
      end
    end

    Lita.register_handler(Clever)
  end
end
