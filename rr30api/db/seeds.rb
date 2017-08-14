# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SourceProvider.create([{name: 'Belarusbank', url: 'belarusbank.by', adress: 'Minsk, Nezalejnasci 101'}])
CourseResult.create([{usd:1.00,eur:0.95,rur:60.15}])
CourseResult.create([{usd:1.00,eur:0.96,rur:62.15}])
