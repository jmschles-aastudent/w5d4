# == Schema Information
#
# Table name: newspapers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  editor     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title, :subscription_plans_attributes

  validates :editor, :presence => true

  validates :title, :presence => true,
  									:uniqueness => true

  has_many :subscription_plans, :dependent => :destroy, :inverse_of => :newspaper

  accepts_nested_attributes_for :subscription_plans, :reject_if => :all_blank
end
