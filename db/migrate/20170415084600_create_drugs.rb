class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :slug
      t.timestamps
    end
    add_index :drugs, :slug, unique: true
  end
end
