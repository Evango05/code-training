puts 'destroy users'
User.destroy_all
puts 'users destroyed'
puts 'destroy trees'
Tree.destroy_all
puts 'trees destroyed'

puts 'creating user'
john = User.create!(first_name: 'John', last_name: 'Doe',
                    email: 'john@gmail.com', password: 'secret')
puts 'user created'

puts 'creating tree'
Tree.create!(name: "John's apple tree",
             address: '20 rue des Capucins 69001 Lyon',
             description: 'This apple tree produces both sweet and sour apples.
                           They will be perfect to cut a little hunger, or enjoy
                           a juicy apple for the dessert.',
             price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple',
             user: john)
puts 'tree created'
