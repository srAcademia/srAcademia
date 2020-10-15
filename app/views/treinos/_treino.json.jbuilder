json.extract! treino, :id, :tipo_treino, :descricao, :data_inicio, :data_final, :quantidade_dias, :aluno_id, :professor_id, :created_at, :updated_at
json.url treino_url(treino, format: :json)
