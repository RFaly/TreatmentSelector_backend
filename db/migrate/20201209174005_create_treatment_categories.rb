class CreateTreatmentCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :treatment_categories do |t|
      t.string :name_en
      t.string :name_fr
      t.string :name_mg

      t.timestamps
    end
  end
end
