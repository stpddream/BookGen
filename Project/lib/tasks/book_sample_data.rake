namespace :db do
  desc "Fill book table with sample data"
  task populate: :environment do
    
    status_strs = ["on shelf", "unavailable"]
    year_strs = (1970..2070).to_a
    50.times do
      name = Faker::Commerce.product_name
      author = Faker::Name.first_name + " " + Faker::Name.last_name
      isbn = Faker::Code.isbn(13)
      publisher = Faker::Company.name
      status = status_strs.sample
      description = Faker::Lorem.paragraph(10)
      
      year = year_strs.sample
      edition = "#{year} edition"
      
      
      Books.create!(name: name, author: author, isbn: isbn, publisher: publisher, status: status, edition: edition)
      
    end
  end
end