module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do 
        argument :name, String, required: true
      end
    def test_field(name:)
      "Hello World #{name}!"
    end

    field :patients, [PatientType], null: false, 
      description: 'List all patients'    
      def patients
        Patient.all
      end

    field :anamneses, [AnamneseType], null: false, 
      description: 'All anamneses'
      def anamneses
        Anamnese.all
      end

    field :anamnese_answers, [AnamneseAnswerType], null: false, 
      description: 'All anamnese answers'
      def anamnese_answers
        AnamneseAnswer.all 
      end
  end
end
