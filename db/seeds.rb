# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Usuario.create(nome: 'admin', email: 'admin@example.com',
                    telefone: '8799999999', data_nascimento: Date.new(1999, 9, 9),
                    password: 'password', password_confirmation: 'password', tipo: 2)
