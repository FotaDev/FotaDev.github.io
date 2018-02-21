class ChangeUseridToId < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :userID, :id
  end
end
