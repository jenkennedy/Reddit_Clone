# == Schema Information
#
# Table name: subs
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text             not null
#

require 'test_helper'

class SubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
