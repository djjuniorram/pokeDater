class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.string :nickname
      t.string :likes
      t.string :dislikes
      t.string :element_type
      t.string :img_url
      t.boolean :single, default: true
      t.integer :user_id
      t.integer :matched_id
      t.integer :matchee_id

      t.timestamps
    end
  end
end
