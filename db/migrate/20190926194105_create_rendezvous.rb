class CreateRendezvous < ActiveRecord::Migration[6.0]
  def change
    create_table :rendezvous do |t|
      t.integer :activity_id
      t.integer :location_id
      t.integer :matched_id
      t.integer :matchee_id

      t.timestamps
    end
  end
end
