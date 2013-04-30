class Task < ActiveRecord::Base
  after_create :send_hello_email

  private

  def send_hello_email
    Mailer.hello.deliver
  end
end
