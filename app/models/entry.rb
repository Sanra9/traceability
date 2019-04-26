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
  
    def without(*keys)
        cpy = self.dup
        keys.each { |key| cpy.delete(key) }
        cpy
    end

  def self.import(file,current_user)
    CSV.foreach(file.path, headers: true) do |row|
      data = row.to_hash
      incubator = current_user.incubators.where(serial_code: data[:serial_code]).take
      if incubator
        data = data.without(:serial_code)
        incubator.entries.create!(data)
      end
    end
  end

end
