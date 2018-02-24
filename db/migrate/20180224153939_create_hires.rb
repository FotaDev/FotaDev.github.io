class CreateHires < ActiveRecord::Migration[5.1]
  def change
    create_table :hires do |t|
      t.integer :user_id
      t.datetime :collect_date
      t.datetime :return_date
      t.integer :status
      t.integer :band
      t.text :reference
      t.integer :invoice_number
      t.references :user, foreign_key: true
    end
  end
end
