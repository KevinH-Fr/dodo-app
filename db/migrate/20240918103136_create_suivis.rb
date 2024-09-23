class CreateSuivis < ActiveRecord::Migration[7.2]
  def change
    create_table :suivis do |t|
      t.references :enfant, null: false, foreign_key: true
      t.integer :temps_endormissement
      t.time :heure_endormissement
      t.date :jour_suivi

      t.timestamps
    end
  end
end
