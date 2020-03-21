require "faker"

User.create(email: "admin@example.com", password: "password", password_confirmation: "password")
User.create(email: "second@example.com", password: "password", password_confirmation: "password")

Category.create([
  {title: "Jedzenie", kind: 0},
  {title: "Dom", kind: 0},
  {title: "Transport", kind: 0},
  {title: "Tele", kind: 0},
  {title: "Zdrowie", kind: 0},
  {title: "Ubrania", kind: 0},
  {title: "Higiena", kind: 0},
  {title: "Wycieczki", kind: 0},
  {title: "Rozrywka", kind: 0},
  {title: "Inne wydatki", kind: 0},
  {title: "Wpływy", kind: 1}
])

Subcategory.create([
  {title: "W domu", category_id: 1},
  {title: "Na mieście", category_id: 1},
  {title: "W pracy", category_id: 1},
  {title: "Alkohol", category_id: 1},
  {title: "Inne", category_id: 1},
  {title: "Czynsz", category_id: 2},
  {title: "Media", category_id: 2},
  {title: "Środki", category_id: 2},
  {title: "Wyposażenie", category_id: 2},
  {title: "Inne", category_id: 2},
  {title: "MPK", category_id: 3},
  {title: "Taxi", category_id: 3},
  {title: "PKP", category_id: 3},
  {title: "Inne", category_id: 3},
  {title: "Telefon", category_id: 4},
  {title: "Internet", category_id: 4},
  {title: "Inne", category_id: 4},
  {title: "Lekarz", category_id: 5},
  {title: "Badania", category_id: 5},
  {title: "Leki", category_id: 5},
  {title: "Inne", category_id: 5},
  {title: "Ubrania", category_id: 6},
  {title: "Buty", category_id: 6},
  {title: "Dodatki", category_id: 6},
  {title: "Inne", category_id: 6},
  {title: "Kosmetyki", category_id: 7},
  {title: "Usługi", category_id: 7},
  {title: "Środki", category_id: 7},
  {title: "Inne", category_id: 7},
  {title: "Transport", category_id: 8},
  {title: "Zwiedzanko", category_id: 8},
  {title: "Wyposażenie", category_id: 8},
  {title: "Pamiątki", category_id: 8},
  {title: "Jedzenie", category_id: 8},
  {title: "Inne", category_id: 8},
  {title: "Sport", category_id: 9},
  {title: "Kino", category_id: 9},
  {title: "Lekcje śpiewu", category_id: 9},
  {title: "Warsztaty", category_id: 9},
  {title: "Koncerty", category_id: 9},
  {title: "Książki", category_id: 9},
  {title: "Instrumenty", category_id: 9},
  {title: "Sprzęt DJ", category_id: 9},
  {title: "Akcesoria muzyczne", category_id: 9},
  {title: "Inne", category_id: 9},
  {title: "Charytatywne", category_id: 10},
  {title: "Prezenty", category_id: 10},
  {title: "RTV", category_id: 10},
  {title: "Gadżety", category_id: 10},
  {title: "Edukacja", category_id: 10},
  {title: "Inne", category_id: 10},
  {title: "Wypłata", category_id: 11},
  {title: "Inne", category_id: 11},
  {title: "Zakwaterowanie", category_id: 8}
  ])


# ActsAsTaggableOn::Tag.create([
#   {name: Faker::Hipster.word, taggings_count: 1},
#   {name: Faker::Hipster.word, taggings_count: 1},
#   {name: Faker::Hipster.word, taggings_count: 4},
#   {name: Faker::Hipster.word, taggings_count: 3},
#   {name: Faker::Hipster.word, taggings_count: 2},
#   {name: Faker::Hipster.word, taggings_count: 2},
#   {name: Faker::Hipster.word, taggings_count: 3},
#   {name: Faker::Hipster.word, taggings_count: 2},
#   {name: Faker::Hipster.word, taggings_count: 13},
#   {name: Faker::Hipster.word, taggings_count: 4},
#   {name: Faker::Hipster.word, taggings_count: 2},
#   {name: Faker::Hipster.word, taggings_count: 10}
# ])

# 12.times do |n|
#   Income.create({value: Faker::Number.decimal([3,4,5].sample, 2), operation_date: n.months.ago, subcategory_id: 52, user_id: 1})
#   Income.create({value: Faker::Number.decimal([3,4,5].sample, 2), operation_date: n.months.ago, subcategory_id: 52, user_id: 2})
# end

# 12.times do |n|
#   Saving.create({value: Faker::Number.decimal([3,4,5].sample, 2), operation_date: n.months.ago, description: Faker::Hipster.sentence})
# end

# 1000.times do
#   Expense.create({operation_date: Faker::Date.between(1.year.ago, Date.today), value: Faker::Number.decimal([2,2,2,2,3,3,3,4].sample, 2), subcategory_id: [*1..51].sample, user_id: [1,2].sample, to_divide: [true, false, false].sample })
# end
