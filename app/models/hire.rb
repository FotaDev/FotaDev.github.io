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

class Hire < ApplicationRecord
  belongs_to :user
  belongs_to :group
end
