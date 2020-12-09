module Types
  class TreatmentType < Types::BaseObject
    field :id, ID, null: false
    field :name_en, String, null: true
    field :name_fr, String, null: true
    field :name_mg, String, null: true
    field :treatment_category, Types::TreatmentCategoryType, null: false
  end
end
