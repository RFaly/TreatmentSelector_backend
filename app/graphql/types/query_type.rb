module Types
  class QueryType < Types::BaseObject
    
    #/patients
    field :patients, [Types::PatientType], null: false
    def patients
      Patient.all
    end

    #/patients/:id
    field :patient, Types::PatientType, null: false do
      argument :id, ID, required: true
    end
    def patient(id:)
      Patient.find(id)
    end 

    #/traitment_categories
    field :treatment_categories, [Types::TreatmentCategoryType], null: false
    def treatment_categories
      TreatmentCategory.all
    end

  end
end

=begin
Liste de tous les traitement et category
{
  treatmentCategories{
    id,
    nameEn,
    nameFr,
    nameMg,
    treatments {
      id,
      nameEn,
      nameFr,
      nameMg
    }
  }
}

Liste des patients et les traitment + category 
{
  patients {
    id,
    name,
    treatment{
      id,
      nameEn,
      nameFr,
      nameMg,
      treatmentCategory {
        id,
        nameEn,
        nameFr,
        nameMg
      }
    }
  }
}

Liste de traitment d'une patien
{
  patient(id:2) {
    id,
    name,
    treatment{
      id,
      nameEn,
      nameFr,
      nameMg,
      treatmentCategory {
        id,
        nameEn,
        nameFr,
        nameMg
      }
    }
  }
}

=end
