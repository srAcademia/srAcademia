class Exercicio < ApplicationRecord
  validates :nome, presence: true, uniqueness: true, length: {minimum:3}
  validates :grupo_muscular, presence: true, length: {minimum:3}
  validates :descricao, presence: true, length: {minimum:3}
  before_save { 
    self.nome = nome.downcase
    self.grupo_muscular = grupo_muscular.downcase
    self.descricao = descricao.downcase
  }
  has_many :treino_exercicios
  has_many :treinos, through: :treino_exercicios
end
