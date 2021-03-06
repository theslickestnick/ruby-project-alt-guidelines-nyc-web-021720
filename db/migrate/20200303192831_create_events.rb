class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :artist_name
      t.string :venue_name
      t.date :event_date
      t.float :ticketmaster_price_min
      t.float :seatgeek_price_min
      t.float :price_difference_min
      t.float :ticketmaster_price_max
      t.float :seatgeek_price_max
      t.float :price_difference_max
      t.integer :artist_id
      t.integer :venue_id
      t.string :test_sg_artist
      t.string :test_sg_venue
      t.date :test_sg_date
      end
  end
end
