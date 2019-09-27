class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :matched_id
      t.integer :matchee_id

      t.timestamps
    end
  end
end
