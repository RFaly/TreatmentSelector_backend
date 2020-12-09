module Types
  class MutationType < Types::BaseObject

		field :create_patient, mutation: Mutations::createPatient

		field :create_treatment, mutation: Mutations::createTreatment
		
		field :create_treatment_category, mutation: Mutations::createTreatmentCategory
		
		field :create_treatment_selected, mutation: Mutations::createTreatmentSelected
		
		field :update_treatment, mutation: Mutations::updateTreatment
		
		field :update_treatment_category, mutation: Mutations::updateTreatmentCategory
		
		field :destroy_treatment, mutation: Mutations::destroyTreatment
		
		field :destroy_treatment_category, mutation: Mutations::destroyTreatmentCategory
		
  end
end

#call mutation
=begin

mutation{
  createUser( input: {
    name: "Bonbon anglais",
    email: "min@an.com"
  }) {
		user {
      id,
      name,
      email
    }
    errors
  }
}

=end
