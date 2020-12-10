module Types
  class PatientType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :treatment, Types::TreatmentType, null: true
  end
end
