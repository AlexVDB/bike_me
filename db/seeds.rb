# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users_attributes = [
  {
    name:'Toto',
    email: 'toto@gmail.com',
    localisation: 'Lyon'
  },
  {
    name:'Tata',
    email: 'tata@gmail.com',
    localisation: 'Paris'
  },
  {
    name:'Titi',
    email: 'titi@gmail.com',
    localisation: 'Marseille'
  }
]

bikes_attributes = [
  {
    title: 'VTT amélioré',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: true,
    price: 100,
    user_id: 1,
  },
  {
    title: 'Mon premier vélo',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Enfant',
    motor: false,
    price: 70,
    user_id: 2,
  },
  {
    title: 'Tandem pour 10 personnes',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Tandem',
    motor: false,
    price: 150,
    user_id: 1,
  },
  {
    title: 'Vélo vintage (dans son jus)',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'Vintage',
    motor: false,
    price: 30,
    user_id: 3,
  },
  {
    title: 'Vélo sans roues',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: true,
    price: 10,
    user_id: 3,
  }
]
