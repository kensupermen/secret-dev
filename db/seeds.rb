# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_1 = Company.create(name: 'FPT Software')
company_2 = Company.create(name: 'TMA Solution')

user = User.create(email: 'abc@gmail.com', password: '123456')

Comment.create(company: company_1, user: user, messaage: 'That not good company')
Comment.create(company: company_1, user: user, messaage: 'OT so much')
Comment.create(company: company_2, user: user, messaage: 'This is a big company')


