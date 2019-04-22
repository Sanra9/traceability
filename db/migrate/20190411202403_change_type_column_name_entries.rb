class ChangeTypeColumnNameEntries < ActiveRecord::Migration[5.2]
  def change
  rename_column :entries, :type, :biotype
  end
end
