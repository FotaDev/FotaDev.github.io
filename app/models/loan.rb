# == Schema Information
#
# Table name: loans
#
#

class Loan < ApplicationRecord
  belongs_to :hire
end
