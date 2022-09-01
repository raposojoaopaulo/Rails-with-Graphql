# frozen_string_literal: true

module Types
  class AnamneseAnswerType < Types::BaseObject
    field :id, ID, null: false
    field :patient_id, Integer, null: false
    field :anamnese_id, Integer, null: false
    field :answer, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
