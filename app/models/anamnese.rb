class Anamnese < ApplicationRecord
    belongs_to :usuario
    validates :atividade_trabalho, presence: true,  length: {minimum:3}
    validates :cardiopatia, presence: true,  length: {minimum:3}
    validates :cirurgia, presence: true,  length: {minimum:3}
    validates :dor_corporal, presence: true,  length: {minimum:3}
    validates :lesao, presence: true,  length: {minimum:3}
    validates :alergia, presence: true,  length: {minimum:3}
    validates :fumante, presence: true,  length: {minimum:3}
    validates :alcolotra, presence: true,  length: {minimum:3}
    validates :atividade_fisica, presence: true,  length: {minimum:3}
    validates :objetivo,  presence: true,  length: {minimum:3}
end
