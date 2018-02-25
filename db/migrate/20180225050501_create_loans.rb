class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.belongs_to :hire, index:true
      t.string :name_tag
      t.datetime :date_out
      t.datetime :date_back
      t.timestamps
    end
  end
end
