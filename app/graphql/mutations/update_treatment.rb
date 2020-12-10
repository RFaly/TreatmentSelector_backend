class Mutations::UpdateTreatment < Mutations::BaseMutation
	argument :treatment_id, ID, required: true
	argument :name_en, String, required: true
	argument :name_fr, String, required: false
	argument :name_mg, String, required: false

	field :treatment, Types::TreatmentType, null: false
	field :errors, [String], null: false

	def resolve(treatment_id:, name_en:, name_fr:, name_mg:)
		treatment = Treatment.find_by_id(treatment_id)
		if treatment.nil?
			{
				treatment: nil,
				errors: ["Couldn't find Treatment with 'id'=#{treatment_id}"]
			}
		elsif treatment.update(name_en: name_en, name_fr: name_fr, name_mg: name_mg)
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
