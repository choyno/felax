class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :typer
      t.integer :name
      t.integer :location_id

      t.timestamps
    end
  end
end
