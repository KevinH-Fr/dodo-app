class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.string :mail
      t.string :auth0_sub
      t.boolean :admin

      t.timestamps
    end
  end
end
