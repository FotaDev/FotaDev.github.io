# == Schema Information
#
# Table name: loans
#
#  id         :integer          not null, primary key
#  hire_id    :integer
#  name_tag   :string(255)
#  date_out   :datetime
#  date_back  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Loan < ApplicationRecord
  belongs_to :hire
end
