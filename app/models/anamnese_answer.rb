class AnamneseAnswer < ApplicationRecord
  belongs_to :patient
  belongs_to :anamnese
end
