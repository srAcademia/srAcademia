class Treino < ApplicationRecord
  belongs_to :aluno, :class_name => 'Usuario'
  belongs_to :professor, :class_name => 'Usuario'
end
