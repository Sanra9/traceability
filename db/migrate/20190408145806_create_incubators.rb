class CreateIncubators < ActiveRecord::Migration[5.2]
  def change
    create_table :incubators do |t|
      t.string :serial_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
