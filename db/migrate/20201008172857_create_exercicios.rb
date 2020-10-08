class CreateExercicios < ActiveRecord::Migration[6.0]
  def change
    create_table :exercicios do |t|
      t.string :nome
      t.string :grupo_muscular
      t.string :descricao

      t.timestamps
    end
  end
end
