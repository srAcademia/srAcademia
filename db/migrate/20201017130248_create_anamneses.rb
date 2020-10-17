class CreateAnamneses < ActiveRecord::Migration[6.0]
  def change
    create_table :anamneses do |t|
      t.string :atividade_trabalho
      t.text :desc_atividade_trabalho
      t.string :data_exame_clinico
      t.text :descricao_exame_clinico
      t.string :cardiopatia
      t.string :cirurgia
      t.text :descricao_cirurgia
      t.text :problema_saude
      t.string :dor_corporal
      t.text :desc_dor_corporal
      t.string :lesao
      t.text :desc_lesao
      t.string :alergia
      t.text :desc_alergia
      t.string :fumante
      t.string :alcolotra
      t.string :atividade_fisica
      t.text :desc_atividade_fisica
      t.text :objetivo
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
