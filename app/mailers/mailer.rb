class Mailer < ActionMailer::Base
  default from: 'ralph@thoughtbot.com'

  def hello(user)
    @user = user
    mail(to: user.email, subject: 'Hello from RailsConf')
  end
end
