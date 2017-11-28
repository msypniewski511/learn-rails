class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :content

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, maximum: 500

  def initialize(args = {})
    @name = args[:name]
    @email = args[:email]
    @content = args[:content]
    #args.each do |name, value|
    #  send("#{name}=", value)
    #end
  end

  def update_spreadsheet
    session = GoogleDrive::Session.from_service_account_key("config/Learn-Rails-Example-de5c615eefa6.json")

    #ss = session.spreadsheet_by_key("Learn-Rails-Example")
    ss = session.spreadsheet_by_title('Learn-Rails-Example')
    if ss.nil?
      ss = session.create_spreadsheet('Learn-Rails-Example')
    end
    ws = ss.worksheets[0]
    last_row = 1 + ws.num_rows
    ws[last_row, 1] = Time.new
    ws[last_row, 2] = self.name
    ws[last_row, 3] = self.email
    ws[last_row, 4] = self.content
    ws.save
  end

  def wynik
    #session = GoogleDrive::Session.from_service_account_key("config/Learn-Rails-Example-de5c615eefa6.json")
    #session.files
  end

  def persisted?
    false
  end

end
