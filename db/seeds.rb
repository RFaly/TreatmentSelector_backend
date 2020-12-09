tc_one = TraitmentCategory.create(name_en:"Diagnostics")

["angiocardiography", "angiography", 
	"brain scanning", "cholecystography", 
	"echocardiography", "mammography",
	"myelography", "prenatal testing", 
	"ultrasound", "urography"].each do |traitment|
		tc_one.traitments.create(name_en:traitment)
end

tc_two = TraitmentCategory.create(name_en:"Examinations")

["auscultation","autopsy",
	"biopsy","bronchoscopy",
	"cardiac catheterization",
	"colposcopy","endoscopy",
	"esophagogastroduodenoscopy",
	"gynecological examination",
	"laparoscopy","mediastinoscopy",
	"nasopharyngolaryngoscopy",
	"palpation","percussion",
	"Rubin’s test"].each do |traitment|
		tc_two.traitments.create(name_en:traitment)
end
