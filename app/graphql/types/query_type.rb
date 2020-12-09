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
    field :traitment_categories, [Types::TraitmentCategoryType], null: false
    def traitment_categories
      TraitmentCategory.all
    end

  end
end

=begin
Liste de tous les traitement et category
{
  traitmentCategories{
    id,
    nameEn,
    nameFr,
    nameMg,
    traitments {
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
    traitments{
      id,
      nameEn,
      nameFr,
      nameMg,
      traitmentCategory {
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
    traitments{
      id,
      nameEn,
      nameFr,
      nameMg,
      traitmentCategory {
        id,
        nameEn,
        nameFr,
        nameMg
      }
    }
  }
}

=end
