require 'spec_helper'

describe Mailer do
  it 'uses the correct send-to address' do
    mail = Mailer.hello

    expect(mail.from).to eq ['ralph@thoughtbot.com']
  end
end

describe Mailer, '.hello' do
  it 'sends an email with the correct attributes' do
    mail = Mailer.hello

    expect(mail.to).to eq ['adarsh@thoughtbot.com']
    expect(mail.body).to match 'hello'
    expect(mail.subject).to match 'Hello from RailsConf'
  end
end
