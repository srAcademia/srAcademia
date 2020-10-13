class CreateTreinos < ActiveRecord::Migration[6.0]
  def change
    create_table :treinos do |t|
      t.string :tipo_treino
      t.string :descricao
      t.date :data_inicio
      t.date :data_final
      t.integer :quantidade_dias
      t.references :aluno, null: false
      t.references :professor, null: false

      t.timestamps
    end
  end
end
