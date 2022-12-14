# frozen_string_literal: true

module Types
  class AnamneseType < Types::BaseObject
    field :id, ID, null: false
    field :patient_id, Integer, null: false
    field :question, String
    field :anamnese_answers, [Types::AnamneseAnswerType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
