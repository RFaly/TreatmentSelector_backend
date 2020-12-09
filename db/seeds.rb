tc_one = TreatmentCategory.create(name_en:"Diagnostics")

["angiocardiography", "angiography", 
	"brain scanning", "cholecystography", 
	"echocardiography", "mammography",
	"myelography", "prenatal testing", 
	"ultrasound", "urography"].each do |treatment|
		tc_one.treatments.create(name_en:treatment)
end

tc_two = TreatmentCategory.create(name_en:"Examinations")

["auscultation","autopsy",
	"biopsy","bronchoscopy",
	"cardiac catheterization",
	"colposcopy","endoscopy",
	"esophagogastroduodenoscopy",
	"gynecological examination",
	"laparoscopy","mediastinoscopy",
	"nasopharyngolaryngoscopy",
	"palpation","percussion",
	"Rubin’s test"].each do |treatment|
		tc_two.treatments.create(name_en:treatment)
end
