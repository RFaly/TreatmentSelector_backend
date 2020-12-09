module Types
  class PatientType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :traitments, [Types::TraitmentType], null: true
  end
end
