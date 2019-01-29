require_relative '../config'

module SheetsDB
  class SessionManager
    def session
      GoogleDrive::Session.from_service_account_key(ROOT_DIR + '/client_secret.json')
    end
  end
end
