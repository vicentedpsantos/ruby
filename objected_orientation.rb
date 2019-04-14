class ApiConnector
  attr_accessor :title, :description, :url

  def initialize(title: title, description: description, url: url = "google.com")
    @title = title
    @description = description
    @url = url
    secret_method
  end

  def api_logger
    puts "API Connector starting"
  end

  def test_method
    puts 'testing class call'
  end

  def testing_initializers
    puts @title
    puts @description
    puts @url
  end

  private

  def secret_method
    puts "A secret message from inside a parent class"
  end
end

class SmsConnector < ApiConnector
  def send_sms
    `curl -X POST -d "notification[title]=#{@title}" -d "notification[url]
      =http://www.edutechional-resty.herokuapp.com/posts/1" #{@url}`
  end
end

class PhoneConnector < ApiConnector
  def send_phone_call
    puts "Sending phone call"
  end

  def api_logger
    super
    puts "Phone call API connection starting"
  end
end

class MailConnector < ApiConnector
  def send_email
    puts "Sending E-mail"
  end
end

api = ApiConnector.new(title: "My Title", description: "My cool description", url: "http://www.tibia.com")
sms_api = SmsConnector.new(title: "SMS Title", description: "SMS description", url: "http://edutechional-smsy.herokuapp.com/notifications")
phone_api = PhoneConnector.new(title: "Phone Title", description: "Phone description")
email_api = MailConnector.new(title: "Email Title", description: "Email description")

api.testing_initializers
sms_api.testing_initializers
phone_api.testing_initializers
email_api.testing_initializers
phone_api.send_phone_call
email_api.send_email
sms_api.send_sms
phone_api.api_logger
