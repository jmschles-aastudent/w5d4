# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  session_token   :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :password, :plans_subscribed_to_ids

  validates :name, :presence => true,
  								 :uniqueness => true

  attr_reader :password

  has_many :subscriptions
  has_many :plans_subscribed_to, :through => :subscriptions, :source => :subscription_plan

  def password=(password)
  	self.password_digest = BCrypt::Password.create(password)
  end

  def correct_password?(password_attempt)
  	BCrypt::Password.new(self.password_digest) == password_attempt
  end
end
