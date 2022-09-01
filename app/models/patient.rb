class Patient < ApplicationRecord
  has_many :anamneses
  has_many :anamnese_answers

  def full_name
    "#{first_name} #{last_name}"
  end  
end
