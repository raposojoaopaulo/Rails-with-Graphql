class CreateAnamneseAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :anamnese_answers do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :anamnese, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
