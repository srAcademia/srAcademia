class Treino < ApplicationRecord
  belongs_to :aluno, :class_name => 'Usuario'
  belongs_to :professor, :class_name => 'Usuario'
  has_many :treino_exercicios
  has_many :exercicios, through: :treino_exercicios
  validates :tipo_treino, presence: true
  validates :descricao, presence: true
  validates :data_inicio, presence: true
  validates :data_final, presence: true
  validates :quantidade_dias, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :aluno_id, presence: true
end
