# == Schema Information
#
# Table name: groups
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  address :text(65535)
#

class Group < ApplicationRecord
  has_many :users
  has_many :hires
end
