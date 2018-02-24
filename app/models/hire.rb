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
  has_one :user, through: :group
  has_one :group
end
