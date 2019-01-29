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

### TODO:

- [x] Create tables with fields (with `create_table`)
  - [ ] Add types for fields
  - [ ] Add support for foreign keys
- [x] Drop tables (with `drop_table`)
- [x] Drop database (with `drop_tabase!`)
- [ ] Support for models (ORM, kind of?)
