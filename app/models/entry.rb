# == Schema Information
#
# Table name: entries
#
#  id           :integer          not null, primary key
#  incubator_id :integer
#  position     :integer
#  date         :datetime
#  time_initial :time
#  time_end     :time
#  type         :string
#  upshot       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Entry < ApplicationRecord
  belongs_to :incubator
end
