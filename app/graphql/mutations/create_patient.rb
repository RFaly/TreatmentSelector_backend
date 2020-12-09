class Mutations::CreatePatient < Mutations::BaseMutation
	argument :name, String, required: true

	field :patient, Types::PatientType, null: false
	field :errors, [String], null: false

	def resolve(name:)
		patient = Patient.new(name: name)
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
