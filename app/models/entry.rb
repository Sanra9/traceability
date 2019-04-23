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

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Entry.create! row.to_hash
    end
  end
  
end
