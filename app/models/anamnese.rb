class Anamnese < ApplicationRecord
    has_one :usuario, dependent: :destroy
end
