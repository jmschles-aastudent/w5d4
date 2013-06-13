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

require 'test_helper'

class NewspaperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
