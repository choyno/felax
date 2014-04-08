class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :customer_id
      t.integer :therapist_id
      t.integer :location_id
      t.integer :service_id
      t.boolean :walkin
      t.boolean :cancel
      t.text :cancel_reason
      t.integer :room_id
      t.datetime :starts_at
      t.datetime :stops_at

      t.timestamps
    end
  end
end
