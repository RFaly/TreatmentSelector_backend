module Types
  class TreatmentCategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name_en, String, null: true
    field :name_fr, String, null: true
    field :name_mg, String, null: true
    field :treatments, [Types::TreatmentType], null: true
  end
end
