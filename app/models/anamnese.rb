class Anamnese < ApplicationRecord
  belongs_to :patient
  has_many :anamnese_answers
end
