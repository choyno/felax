class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :time_length
      t.integer :commission
      t.string :room_type

      t.timestamps
    end
  end
end
