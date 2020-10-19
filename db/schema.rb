# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_19_163614) do

  create_table "anamneses", force: :cascade do |t|
    t.string "atividade_trabalho"
    t.text "desc_atividade_trabalho"
    t.string "data_exame_clinico"
    t.text "descricao_exame_clinico"
    t.string "cardiopatia"
    t.string "cirurgia"
    t.text "descricao_cirurgia"
    t.text "problema_saude"
    t.string "dor_corporal"
    t.text "desc_dor_corporal"
    t.string "lesao"
    t.text "desc_lesao"
    t.string "alergia"
    t.text "desc_alergia"
    t.string "fumante"
    t.string "alcolotra"
    t.string "atividade_fisica"
    t.text "desc_atividade_fisica"
    t.text "objetivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "usuario_id", null: false
    t.index ["usuario_id"], name: "index_anamneses_on_usuario_id"
  end

  create_table "exercicios", force: :cascade do |t|
    t.string "nome"
    t.string "grupo_muscular"
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treino_exercicios", force: :cascade do |t|
    t.integer "serie"
    t.integer "repeticoes"
    t.integer "treino_id", null: false
    t.integer "exercicio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exercicio_id"], name: "index_treino_exercicios_on_exercicio_id"
    t.index ["treino_id"], name: "index_treino_exercicios_on_treino_id"
  end

  create_table "treinos", force: :cascade do |t|
    t.string "tipo_treino"
    t.string "descricao"
    t.date "data_inicio"
    t.date "data_final"
    t.integer "quantidade_dias"
    t.integer "aluno_id", null: false
    t.integer "professor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "ultima_data"
    t.index ["aluno_id"], name: "index_treinos_on_aluno_id"
    t.index ["professor_id"], name: "index_treinos_on_professor_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.date "data_nascimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.integer "tipo"
  end

  add_foreign_key "anamneses", "usuarios"
  add_foreign_key "treino_exercicios", "exercicios"
  add_foreign_key "treino_exercicios", "treinos"
end
