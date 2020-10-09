class Exercicio < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
  validates :grupo_muscular, presence: true
  validates :descricao, presence: true
  before_save { 
    self.nome = nome.downcase
    self.grupo_muscular = grupo_muscular.downcase
    self.descricao = descricao.downcase
  }
end