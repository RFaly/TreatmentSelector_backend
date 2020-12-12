class Mutations::CreateTreatment < Mutations::BaseMutation
	argument :name_en, String, required: true
	argument :name_fr, String, required: false
	argument :name_mg, String, required: false
	argument :treatment_category_id, Int, required: true

	field :treatment, Types::TreatmentType, null: false
	field :errors, [String], null: false

	def resolve(name_en:, name_fr:, name_mg:, treatment_category_id:)
		treatment = Treatment.new(name_en: name_en, name_fr: name_fr, name_mg: name_mg, treatment_category_id: treatment_category_id)
		if treatment.save
			{
				treatment: treatment,
				errors: []
			}
		else
			{
				treatment: nil,
				errors: treatment.errors.full_messages
			}
		end
	end

end
