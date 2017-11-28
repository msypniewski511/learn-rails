class Moj
  def self.wynik
    session = GoogleDrive::Session.from_service_account_key("config/Learn-Rails-Example-de5c615eefa6.json")
    ss = session.spreadsheet_by_title('Learn-Rails-Example')
    ws = ss.worksheets[0]

  end

end
