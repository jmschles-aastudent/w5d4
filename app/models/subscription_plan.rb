class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :plan_type, :price, :newspaper_id

  validates :plan_type, :presence => true
  validates :price, :presence => true,
										:numericality => { :greater_than => 0 }

  validates_inclusion_of :plan_type, :in => %(w d)

 	validates :newspaper, :presence => true

 	belongs_to :newspaper
end
