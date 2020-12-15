# TreatmentSelector_backend
Une application permettant à un patient qui arrive dans une clinique de sélectionner le traitement qu'il souhaite recevoir.

* Ruby version 2.7.2

* Rails version 6.0.3.4

* Database: postgresql-11
	
	*documentation for install*
https://gorails.com/setup/ubuntu/20.10

* Deployment instructions

$ git clone https://github.com/RFaly/TreatmentSelector_backend.git
$ cd TreatmentSelector_backend
$ bundle
$ rails db:create db:migrate db:seed
$ rails s -p 4000
