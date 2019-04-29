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
#  biotype      :string
#  upshot       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
