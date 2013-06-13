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

require 'test_helper'

class SubscriptionPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
