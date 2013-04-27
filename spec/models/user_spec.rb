require 'spec_helper'

describe User, 'callbacks' do
  it 'enqueues a welcome email after creation' do
    HelloEmailJob.stubs(:enqueue)

    user = create(:user)

    expect(HelloEmailJob).to have_received(:enqueue).with(user)
  end
end
