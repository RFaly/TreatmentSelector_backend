module Types
  class TraitmentCategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name_en, String, null: true
    field :name_fr, String, null: true
    field :name_mg, String, null: true
    field :traitments, [Types::TraitmentType], null: true
  end
end
