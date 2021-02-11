# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    puts "Gerando os Bibliotecarios (Librarians)..."
        Librarian.create!([{:email => 'admin@admin.com', :password => '123456', :password_confirmation => '123456'},
                            {:email => 'admin2@admin.com', :password => '123456', :password_confirmation => '123456'}
                        ])
    puts "Gerando os Clientes (Clients)..."
    10.times do |i|
      Client.create!(
        name: Faker::Name.name
      )
    end
    puts "Complete"

    puts "Gerando as Categorias (Categories)..."
    10.times do |j|
      Category.create!(
        name: Faker::Book.genre
      )
    end
    puts "Complete"

    puts "Gerando os autores (Authors)..."
    25.times do |k|
      Author.create!(
        name: Faker::Book.author
      )
    end
    puts "Complete"

puts "Complete"
