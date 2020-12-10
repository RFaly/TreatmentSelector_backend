class Mutations::DestroyTreatmentCategory < Mutations::BaseMutation
	argument :treatment_category_id, ID, required: true

	field :errors, [String], null: false

	def resolve(treatment_category_id:)
		treatment_category = TreatmentCategory.find(treatment_category_id)
		if treatment_category.destroy
			{
				errors: []
			}
		else
			{
				errors: treatment_category.errors.full_messages
			}
		end
	end

end
