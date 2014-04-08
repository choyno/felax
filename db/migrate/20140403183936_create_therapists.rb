class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :phone_number
      t.string :email_address
      t.string :therapist_type
      t.string :ssn
      t.string :nick_name
      t.string :gender

      t.timestamps
    end
  end
end
