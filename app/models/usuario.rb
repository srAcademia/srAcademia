class Usuario < ApplicationRecord
  has_secure_password
  validates :nome, presence: true, length: {minimum: 3, maximum: 50}, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  before_save { self.email = email.downcase }
  # Validar a data de nascimento
  # Validar telefone

  enum tipo: [:aluno, :professor, :admin]
end
