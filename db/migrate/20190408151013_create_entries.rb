class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :incubator, foreign_key: true
      t.integer :position
      t.datetime :date
      t.time :time_initial
      t.time :time_end
      t.string :type
      t.boolean :upshot

      t.timestamps
    end
  end
end
