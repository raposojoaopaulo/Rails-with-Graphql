# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


patients = Patient.create([
  {
    first_name: "Tião",
    last_name: "Dois Dentes",
    address: "chácara",
    number: "3528-4522",
    city: "interior de Minas",
    zipcode: "85945-000"
  },
  {
    first_name: "Maria",
    last_name: "Chiquinha",
    address: "No mato",
    number: "99...alguma coisa...",
    city: "Qualquer mato",
    zipcode: "85945-000"
  }
])

anamneses = Anamnese.create!([
  {
    question: "Quanto ouro valo o Tonin?",
    patient: patients.first
  },
  {
    question: "Quantos filhos o Tião tem?",
    patient: patients.first
  },
  {
    question: "O que ce foi fazer no mato?",
    patient: patients.last
  }
])

AnamneseAnswer.create!([
  {
    answer: "um monte",
    anamnese: anamneses.first,
    patient: patients.first
  },
  {
    answer: "Pegar lenha",
    anamnese: anamneses.last,
    patient: patients.last
  }
])