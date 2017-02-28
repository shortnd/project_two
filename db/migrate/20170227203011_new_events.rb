class NewEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    t.string :season
    t.string :location
    t.string :date
    t.string :about
    t.string :nightOneEvents
    t.string :dayTwoEvents
    t.string :nightTwoEvents
  end
  end
end
