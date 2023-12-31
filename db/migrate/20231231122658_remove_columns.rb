class RemoveColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :memes, :added_by, :integer
  end
end
