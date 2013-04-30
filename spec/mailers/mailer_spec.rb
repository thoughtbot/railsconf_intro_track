require 'spec_helper'

describe Mailer do
  it 'uses the correct send-to address' do
    user = User.new(name: 'Adarsh Pandit', email: 'adarsh@thoughtbot.com')

    mail = Mailer.hello(user)

    expect(mail.from).to eq ['ralph@thoughtbot.com']
  end
end

describe Mailer, '.hello' do
  it 'sends an email with the correct attributes' do
    user = User.new(name: 'Adarsh Pandit', email: 'adarsh@thoughtbot.com')

    mail = Mailer.hello(user)

    expect(mail.to).to eq [user.email]
    expect(mail.body).to match user.name
    expect(mail.subject).to match 'Hello from RailsConf'
  end
end
