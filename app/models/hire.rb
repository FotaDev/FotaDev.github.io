# == Schema Information
#
# Table name: hires
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  group_id       :integer
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

  has_many :loans
  has_many :ordered_sizes
  enum status: [:not_collected, :collected, :returned, :not_returned, :lost, :other]
  scope :collected_before, ->(time) { where("collect_date < ?", time) }
  scope :collected_after, ->(time) { where("collect_date > ?", time) }

  scope :returned_before, ->(time) { where("return_date < ?", time) }
  scope :returned_after, ->(time) { where("return_date > ?", time) }

  scope :collected_between, ->(collected_from, collected_to) { where("collect_date BETWEEN ? AND ?", collected_from, collected_to) }
  scope :returned_between, ->(returned_from, returned_to) { where("return_date BETWEEN ? AND ?", returned_from, returned_to) }

  def past_hires
    self.returned_before(Date.today)
  end
end
