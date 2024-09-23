class CreateQuestionnaireSommeils < ActiveRecord::Migration[7.2]
  def change
    create_table :questionnaire_sommeils do |t|
      t.string :email
      t.string :telephone
      t.string :adresse
      t.string :pere
      t.string :mere
      t.string :enfant
      t.integer :poids
      t.boolean :freres_soeurs
      t.boolean :rituel
      t.integer :duree_rituel
      t.string :lieu_nuit
      t.text :objectif
      t.references :produit, null: false, foreign_key: true
      t.integer :niveau_activite
      t.integer :intensite_reaction

      t.timestamps
    end
  end
end
