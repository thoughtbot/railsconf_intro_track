class Mailer < ActionMailer::Base
  default from: 'ralph@thoughtbot.com'

  def hello
    mail(to: 'adarsh@thoughtbot.com', subject: 'Hello from RailsConf')
  end
end
