class Treino < ApplicationRecord
  belongs_to :aluno, :class_name => 'Usuario'
  belongs_to :professor, :class_name => 'Usuario'
  has_many :treino_exercicios
  has_many :exercicios, through: :treino_exercicios
end
