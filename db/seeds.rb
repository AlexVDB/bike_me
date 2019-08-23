# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seed start..."
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
    localisation: 'Lyon'
  },
  {
    name:'Titi',
    email: 'titi@gmail.com',
    password: 'test12345',
    localisation: 'Lyon'
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
    user: User.first,
    photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1566401651/nbfecqfc3luwviyp38pa.jpg")
  },
  {
    title: 'Mon premier vélo',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: false,
    price: 70,
    user: User.first,
    photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1566401651/iuhrvk6ztwziktgj0usv.jpg")
  },
  {
    title: 'Tandem pour 10 personnes',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: false,
    price: 150,
    user: User.last,
    photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1566401651/aaiv4pfgnfjar7773aoo.jpg")
  },
  {
    title: 'Vélo vintage (dans son jus)',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: false,
    price: 30,
    user: User.last,
    photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1566401651/qz05jumfveyemr9oupnv.jpg")
  },
  {
    title: 'Vélo sans roues',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quis inventore molestiae illum, facilis sequi, illo quos aut repellat nostrum ipsam minus. Facere perspiciatis fuga ratione repellendus, voluptatum sit provident.',
    category: 'VTT',
    motor: true,
    price: 10,
    user: User.first,
    photo: Cloudinary::CarrierWave::StoredFile.new("image/upload/v1566401651/orsvnxeht8zezosawfwj.jpg")
  }
]

Bike.create!(bikes_attributes)
Reservation.create!(date: Date.tomorrow, user: User.first, bike: Bike.last)
Reservation.create!(date: Date.tomorrow, user: User.first, bike: Bike.first)


puts "seed ok!"
