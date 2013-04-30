require 'spec_helper'

describe HelloEmailJob, '#enqueue' do
  it 'enqueues the job' do
    Timecop.freeze do
      Delayed::Job.stubs(:enqueue)
      user = build_stubbed(:user)
      hello_job = HelloEmailJob.new(user)

      HelloEmailJob.enqueue(user)

      expect(Delayed::Job).to have_received(:enqueue).
        with(hello_job, run_at: 1.hour.from_now)
    end
  end
end

describe HelloEmailJob, '#perform' do
  it 'sends the hello email' do
    Mailer.stubs(:hello)
    user = create(:user)

    HelloEmailJob.new(user).perform

    expect(Mailer).to have_received(:hello).with(user)
  end
end
