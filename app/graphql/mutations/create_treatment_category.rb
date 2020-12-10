class Mutations::CreateTreatmentCategory < Mutations::BaseMutation
	argument :name_en, String, required: true
	argument :name_fr, String, required: false
	argument :name_mg, String, required: false
	

	field :treatment_category, Types::TreatmentCategoryType, null: false
	field :errors, [String], null: false

	def resolve(name_en:, name_fr:, name_mg:)
		treatment_category = TreatmentCategory.new(name_en: name_en, name_fr: name_fr, name_mg: name_mg)
		if treatment_category.save
			{
				treatment_category: treatment_category,
				errors: []
			}
		else
			{
				treatment_category: nil,
				errors: treatment_category.errors.full_messages
			}
		end
	end
end
