# == Schema Information
#
# Table name: hires
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  collect_date   :datetime
#  return_date    :datetime
#  status         :integer
#  band           :integer
#  reference      :text(65535)
#  invoice_number :integer
#

require 'test_helper'

class HireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
