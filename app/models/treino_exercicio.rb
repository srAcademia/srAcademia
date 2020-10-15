class TreinoExercicio < ApplicationRecord
  belongs_to :treino
  belongs_to :exercicio
  validates :serie, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :repeticoes, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :treino_id, presence: true
  validates :exercicio_id, presence: true
end
