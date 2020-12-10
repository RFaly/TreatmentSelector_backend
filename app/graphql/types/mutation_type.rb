module Types
  class MutationType < Types::BaseObject

		field :create_patient, mutation: Mutations::CreatePatient

		field :create_treatment, mutation: Mutations::CreateTreatment
		
		field :create_treatment_category, mutation: Mutations::CreateTreatmentCategory
				
		field :update_treatment, mutation: Mutations::UpdateTreatment
		
		field :update_treatment_category, mutation: Mutations::UpdateTreatmentCategory
		
		field :destroy_treatment, mutation: Mutations::DestroyTreatment
		
		field :destroy_treatment_category, mutation: Mutations::DestroyTreatmentCategory
		
  end
end

#call mutation

=begin

mutation {
	createPatient(input:{
		name: "Bonjour a vous aussi"
	}){
		patient {
			id,
			name
		}
		errors
	}
}

~~~~~~~~~~~~~~~~

mutation {
	createTreatment(input:{
		nameEn:"Good morning",
    nameFr:"Bonjour",
    nameMg:"Salama e!",
    treatmentCategoryId:3
	}){
		treatment {
			id,
			nameFr
		}
		errors
	}
}

~~~~~~~~~~~~~~

mutation {
	CreateTreatmentCategory(input:{
		nameEn:"Keek",
    nameFr:"Tête",
    nameMg:"Loha",
	}){
		treatment_category {
			id,
			nameEn,
			nameMg,
			nameFr
		}
		errors
	}
}

=end
