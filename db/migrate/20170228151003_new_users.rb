class NewUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    t.string :fullName
    t.string :email
    t.string :password, null: false
    t.string :chapter
    t.string :address
    t.string :phoneNumber
    t.references :event, index: true, foreign_key: true
  end
  end
end
