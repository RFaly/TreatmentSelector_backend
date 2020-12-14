class Mutations::UpdateTreatmentCategory < Mutations::BaseMutation
	argument :treatment_category_id, Int, required: true
	argument :name_en, String, required: true
	argument :name_fr, String, required: false
	argument :name_mg, String, required: false
	

	field :treatment_category, Types::TreatmentCategoryType, null: false
	field :errors, [String], null: false

	def resolve(treatment_category_id:, name_en:, name_fr:, name_mg:)
		treatment_category = TreatmentCategory.find_by_id(treatment_category_id)
		if treatment_category.nil?
			{
				treatment_category: nil,
				errors: ["Couldn't find TreatmentCategory with 'id'=#{treatment_category_id}"]
			}
		elsif treatment_category.update(name_en: name_en, name_fr: name_fr, name_mg: name_mg)
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
