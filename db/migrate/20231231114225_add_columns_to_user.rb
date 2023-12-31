class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :memes, :author_id, :integer

  end
end
