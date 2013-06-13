# == Schema Information
#
# Table name: subscription_plans
#
#  id           :integer          not null, primary key
#  plan_type    :string(255)
#  price        :decimal(, )
#  newspaper_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :plan_type, :price, :newspaper_id

  validates :plan_type, :presence => true
  validates :price, :presence => true,
										:numericality => { :greater_than => 0 }

  validates_inclusion_of :plan_type, :in => %(w d)

 	validates :newspaper, :presence => true

 	belongs_to :newspaper
 	has_many :subscriptions
 	has_many :subscribers, :through => :subscriptions, :source => :user
end
