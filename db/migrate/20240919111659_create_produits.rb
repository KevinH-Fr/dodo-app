class CreateProduits < ActiveRecord::Migration[7.2]
  def change
    create_table :produits do |t|
      t.string :nom
      t.text :description
      t.integer :prix

      t.timestamps
    end
  end
end
