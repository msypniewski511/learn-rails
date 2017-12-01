class Visitor
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  #has_no_table
  attr_accessor :email, :string
  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def initialize(args = {})
    @email = args[:email]
  end

  def subscribe
    mailchimp = Gibbon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
    list_id = Rails.application.secrets.mailchimp_list_id
    begin
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: self.email,
        status: 'subscribed'
    })
    rescue Gibbon::MailChimpError => exception
      Rails.logger.error("failed becuz #{exception.detail}")
    end
    Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
  end

  def persisted?
    false
  end
end
