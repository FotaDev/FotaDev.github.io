class CreateOrderedSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_sizes do |t|
      t.belongs_to :hire, index: true
      t.integer :request
      t.integer :booked
    end
  end
end
