class CreateHires < ActiveRecord::Migration[5.1]
  def change
    create_table :hires do |t|

      t.timestamps
    end
  end
end
