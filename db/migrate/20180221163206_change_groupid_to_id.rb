class ChangeGroupidToId < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :groupID, :id
  end
end
