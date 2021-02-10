namespace :util do
  desc "Popula o banco"
  task seed: :environment do
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


  end

end
