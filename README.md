## SheetsDB: Google Sheets as a DB

It is like Active Record, but with Google Sheets backend in mind :wink:

This project uses [google_drive](https://github.com/gimite/google-drive-ruby) for accessing Google Drive and Sheets.

### Installation

Currently installation is available as a standalone project only:

```bash
git clone https://github.com/vladyio/sheetsdb
bundle install
```

### Configuration

go to Google API console, do some things there...  (to be done)

### Usage

Say one needs to create a migration to create a table `People`:

```bash
ruby sheets.db g migration create_table_people
```

A new migration will be created at `db/migrate` directory. Open it in your editor, then write the following:

```ruby
# create table people

SheetsDB::Migration.new do |m|
  m.create_table :people, :age, :first_name, :last_name
end
```

Then migrate:

```bash
ruby sheets.rb m

# In case of success you will see some output:
# => create table: people
#   => columns of people: [:age, :first_name, :last_name]
```

That's it!

### TODO:

- [x] Create tables with fields (with `create_table`)
- [x] Keep track of migrations in `db/schema.rb`
  - [ ] Add types for fields
  - [ ] Add support for foreign keys
- [x] Drop tables (with `drop_table`)
- [x] Drop database (with `drop_tabase!`)
- [ ] Support for models (ORM, kind of?)
