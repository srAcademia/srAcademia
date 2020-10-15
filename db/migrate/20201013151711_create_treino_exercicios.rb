class CreateTreinoExercicios < ActiveRecord::Migration[6.0]
  def change
    create_table :treino_exercicios do |t|
      t.integer :serie
      t.integer :repeticoes
      t.references :treino, null: false, foreign_key: true
      t.references :exercicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
