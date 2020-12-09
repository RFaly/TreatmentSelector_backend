class CreateTreatmentSelecteds < ActiveRecord::Migration[6.0]
  def change
    create_table :treatment_selecteds do |t|
    	t.belongs_to :traitment
      t.belongs_to :patient
      t.timestamps
    end
  end
end
