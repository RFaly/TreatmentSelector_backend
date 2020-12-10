class Mutations::CreatePatient < Mutations::BaseMutation
	argument :name, String, required: true
	argument :treatment_id,ID, required: true

	field :patient, Types::PatientType, null: false
	field :errors, [String], null: false

	def resolve(name:,treatment_id:)
		patient = Patient.new(name: name, treatment_id: treatment_id)
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
