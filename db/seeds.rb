# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Group.create(user_id: 1, name: 'Food', icon: 'https://i.pinimg.com/564x/cc/47/45/cc474537618ae14f3d62ff
718641c491.jpg') 
Entity.create(author_id: 1, name: 'lunch', amount: 12.5) 
GroupEntity.create(group_id: 1, entity_id: 1)
Group.create(user_id: 1, "name"=>"Vacations", "icon"=>"https://i.pinimg.com/564x/c1/fb/25/c1fb25e8752ae4ab8f8fef83ed85d257.jpg")
Group.create(user_id: 1, "name"=>"Transport", "icon"=>"https://i.pinimg.com/564x/08/06/67/080667f199dd25e0eea1ba2d1da6b972.jpg")
