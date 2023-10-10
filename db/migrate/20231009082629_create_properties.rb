class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.references :type_offer, null: false, foreign_key: true
      t.references :type_property, null: false, foreign_key: true
      t.integer :area
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
