class Usuario < ApplicationRecord
  has_secure_password
  validates :nome, presence: true, length: {minimum: 3, maximum: 50}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
  validates :telefone, presence: true, length: {minimum: 9, maximum: 50}
  validates :data_nascimento,presence: true, length: {minimum: 10, maximum: 10}
  enum tipo: [:aluno, :professor, :admin]

  has_many :aluno_treino, :class_name => 'Treino', :foreign_key => 'aluno_id', dependent: :destroy
  has_many :professor_treino, :class_name => 'Treino', :foreign_key => 'professor_id', dependent: :destroy
  belongs_to :anamnese
end
