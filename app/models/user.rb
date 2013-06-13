class User < ActiveRecord::Base
  attr_accessible :name, :password

  validates :name, :presence => true,
  								 :uniqueness => true

  attr_reader :password

  def password=(password)
  	self.password_digest = BCrypt::Password.create(password)
  end

  def correct_password?(password_attempt)
  	BCrypt::Password.new(self.password_digest) == password_attempt
  end
end
