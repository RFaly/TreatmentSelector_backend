class Mutations::DestroyTreatment < Mutations::BaseMutation
	argument :treatment_id, ID, required: true

	field :errors, [String], null: false

	def resolve(treatment_id:)
		treatment = Treatment.find(treatment_id)
		if treatment.destroy
			{
				errors: []
			}
		else
			{
				errors: treatment.errors.full_messages
			}
		end
	end

end
