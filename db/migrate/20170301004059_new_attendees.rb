class NewAttendees< ActiveRecord::Migration[5.0]
  def change
      create_table :attendees do |t|
      t.string :full_name
      t.string :email
      t.string :password, null: false
      t.string :chapter
      t.string :address
      t.string :phoneNumber
      t.references :event, index: true, foreign_key: true
    end
  end
end
