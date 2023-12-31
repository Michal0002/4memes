class AddColumnsToMemes < ActiveRecord::Migration[7.0]
  def change
    add_column :memes, :added_by, :integer
    add_column :memes, :status, :integer, default: 0
  end
end
