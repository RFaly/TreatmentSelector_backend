module Types
  class TreatmentCategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name_en, String, null: true
    field :name_fr, String, null: true
    field :name_mg, String, null: true
    field :count_treatments, Integer, null: true
    field :treatments, [Types::TreatmentType], null: true

    def count_treatments
    	object.treatments.size
    end

  end
end
