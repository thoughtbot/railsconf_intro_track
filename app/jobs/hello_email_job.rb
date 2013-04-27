class HelloEmailJob < Struct.new(:user)
  def self.enqueue(user)
    Delayed::Job.enqueue(
      new(user),
      run_at: 1.hour.from_now
    )
  end

  def perform
    Mailer.hello(user)
  end
end
