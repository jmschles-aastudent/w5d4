# == Schema Information
#
# Table name: subscriptions
#
#  id                   :integer          not null, primary key
#  user_id              :integer
#  subscription_plan_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :user_id, :subscription_plan_id

  validates :user, :presence => true
  validates :subscription_plan, :presence => true

  belongs_to :subscription_plan
  belongs_to :user
end
