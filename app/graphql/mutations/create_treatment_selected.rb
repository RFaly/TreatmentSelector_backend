class Mutations::CreateTreatmentSelected < Mutations::BaseMutation
	argument :name, String, required: true
	argument :treatment_ids,[ID], required: true

	field :patient, Types::PatientType, null: false
	field :errors, [String], null: false


	def resolve(name:,treatment_ids)
		patient = Patient.new(name: name)
		patient.treatments.push(Treatment.find(treatment_ids))
		if patient.save
			{
				patient: patient,
				errors: []
			}
		else
			{
				patient: nil,
				errors: patient.errors.full_messages
			}
		end
	end

end
