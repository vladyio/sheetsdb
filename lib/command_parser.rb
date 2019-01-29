require_relative '../config'

module SheetsDB
  class CommandsParser
    def initialize(commands)
      case commands[0]
      when /(g|generate)/
        if commands[1] == 'migration'
          filename = "db/migrate/#{Time.now.strftime('%Y%m%d%H%M%S')}_#{commands[2]}.rb"
          File.open(filename, 'w') do |migration|
            migration.puts("# #{commands[2].tr('_', ' ')}")
            migration.puts
            migration.puts('SheetsDB::Migration.new do |m|')
            migration.puts('  ')
            migration.puts('end')
          end
        end

      when /(m|migrate)/
        Dir[ROOT_DIR + '/db/migrate/*.rb'].each { |file| require_relative file }

      else
        puts 'Cannot find this command'
      end
    end
  end
end
