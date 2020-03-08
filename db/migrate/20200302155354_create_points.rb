class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.string :type
      t.integer :identifier
      t.integer :order
      t.string :address
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
