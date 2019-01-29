require_relative 'command_parser'

module SheetsDB
  class Cli
    def initialize(commands)
      raise ArgumentError, 'Provide SheetsDB with commands.' unless commands.size >= 1

      CommandsParser.new(commands)
    end
  end
end
