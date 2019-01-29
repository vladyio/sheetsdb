require_relative 'session_manager'
require_relative '../config'

module SheetsDB
  class Migration
    def initialize(*)
      @session_manager = SessionManager.new
      @spreadsheet = @session_manager.session.spreadsheet_by_title(DATABASE)
      yield self
    end

    def create_table(table_name, *columns)
      puts "=> create table: #{table_name}"
      @spreadsheet.add_worksheet(table_name)
      table = worksheet(table_name)

      puts "  => columns of #{table_name}: #{columns}"
      table.insert_rows(1, [columns])

      table.save
    end

    def drop_table(table_name)
      puts "=> delete table: #{table_name}"
      worksheet(table_name).delete
    end

    def drop_database!
      puts '=> DROP DATABASE!'
      @spreadsheet.delete
    end

    private

    def worksheet(table_name)
      @spreadsheet.worksheet_by_title(table_name.to_s)
    end
  end
end
