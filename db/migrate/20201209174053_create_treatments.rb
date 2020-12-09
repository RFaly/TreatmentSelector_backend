class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :name_en
      t.string :name_fr
      t.string :name_mg
      t.belongs_to :treatment_category

      t.timestamps
    end
  end
end
