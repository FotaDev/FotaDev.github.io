class AddGroupIdColumnToHires < ActiveRecord::Migration[5.1]
  def change
    add_column :hires, :group_id, :integer
  end
end
