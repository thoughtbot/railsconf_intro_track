require 'spec_helper'

describe Task, 'callbacks' do
  it 'sends an email after creating a task' do
    mailer_stub = double('mailer')
    mailer_stub.stub(:deliver)
    Mailer.stub(:hello).and_return(mailer_stub)

    Task.create!(name: 'test thing')

    expect(Mailer).to have_received(:hello)
    expect(mailer_stub).to have_received(:deliver)
  end
end
