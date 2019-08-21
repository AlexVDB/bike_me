# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

users_attributes = [
  {
    name:'Toto',
    email: 'toto@gmail.com',
    password: 'test12345',
    localisation: 'Lyon'
  },
  {
    name:'Tata',
    email: 'tata@gmail.com',
    password: 'test12345',
    localisation: 'Paris'
  },
  {
    name:'Titi',
    email: 'titi@gmail.com',
    password: 'test12345',
    localisation: 'Marseille'
  }
]

User.create!(users_attributes)


bikes_attributes = [
  {
    title: 'VTT amélioré',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: true,
    price: 100,
    user: User.first
  },
  {
    title: 'Mon premier vélo',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Enfant',
    motor: false,
    price: 70,
    user: User.first
  },
  {
    title: 'Tandem pour 10 personnes',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Tandem',
    motor: false,
    price: 150,
    user: User.last
  },
  {
    title: 'Vélo vintage (dans son jus)',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Vintage',
    motor: false,
    price: 30,
    user: User.last
  },
  {
    title: 'Vélo sans roues',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: true,
    price: 10,
    user: User.first
  }
]

Bike.create!(bikes_attributes)

puts "seed ok!"
