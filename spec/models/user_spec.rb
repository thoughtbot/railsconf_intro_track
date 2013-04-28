require 'spec_helper'

describe User, 'callbacks' do
  it 'sends a welcome email after creation' do
    mailer_stub = stub(:hello)
    Mailer.stubs(:delay).returns(mailer_stub)

    user = create(:user)

    expect(Mailer).to have_received(:delay)
    expect(mailer_stub).to have_received(:hello).with(user)
  end

  it 'delays a job' do
    user = create(:user)

    expect(Delayed::Job.count).to eq 1
    expect(Delayed::Job.last.handler).to match user.name
    expect(Delayed::Job.last.handler).to match user.email
  end
end
