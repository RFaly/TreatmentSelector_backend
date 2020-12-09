module Types
  class TraitmentType < Types::BaseObject
    field :id, ID, null: false
    field :name_en, String, null: true
    field :name_fr, String, null: true
    field :name_mg, String, null: true
    field :traitment_category, Types::TraitmentCategoryType, null: false
  end
end
