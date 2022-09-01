# frozen_string_literal: true

module Types
  class PatientType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :full_name, String
    field :address, String
    field :number, String
    field :city, String
    field :zipcode, String
    field :anamneses, [Types::AnamneseType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
