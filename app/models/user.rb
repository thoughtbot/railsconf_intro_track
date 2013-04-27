class User < ActiveRecord::Base
  attr_accessible :email, :name

  after_create :send_hello_email

  private

  def send_hello_email
    HelloEmailJob.enqueue(self)
  end
end
