class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :img_url
      t.string :bio
      t.string :name

      t.timestamps
    end
  end
end
