Dir['lib/*.rb'].each { |file| require_relative file }

require 'bundler'
Bundler.require

SheetsDB::Cli.new(ARGV)
