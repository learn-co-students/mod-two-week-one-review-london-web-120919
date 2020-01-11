class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
      rename_column :seas, :has_many_mermaids, :has_mermaids
  end
end
