# == Schema Information
#
# Table name: incubators
#
#  id          :integer          not null, primary key
#  serial_code :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Incubator < ApplicationRecord
  belongs_to :user
  has_many :entries
end
