class Treino < ApplicationRecord
  validates :tipo_treino, presence: true
  validates :descricao, presence: true
  validates :data_inicio, presence: true
  validates :data_final, presence: true
  validates :quantidade_dias, presence: true, numericality: { only_integer: true, greater_than: -1 }
  validates :aluno_id, presence: true
  belongs_to :aluno, :class_name => 'Usuario'
  belongs_to :professor, :class_name => 'Usuario'
  has_many :treino_exercicios, dependent: :destroy
  has_many :exercicios, through: :treino_exercicios, dependent: :destroy
end
