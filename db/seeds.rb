User.destroy_all
Tree.destroy_all

john = User.create!(first_name: 'John', last_name: 'Doe',
                    email: 'john@gmail.com', password: 'secret')

Tree.create!(name: "John's apple tree",
             address: '20 rue des Capucins 69001 Lyon',
             description: 'This apple tree produces both sweet and sour apples.
                           They will be perfect to cut a little hunger, or enjoy
                           a juicy apple for the dessert.',
             price_per_year: 175, quantity_per_year: 5, fruit_type: 'Apple',
             user: john)

Tree.create!(name: "John's orange tree",
             address: '20 rue des Capucins 69001 Lyon',
             description: 'This orange tree produces both sweet and sour apples.
                           They will be perfect to cut a little hunger, or enjoy
                           a juicy orange for the dessert.',
             price_per_year: 200, quantity_per_year: 7, fruit_type: 'Orange',
             user: john)
