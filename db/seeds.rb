# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 1.upto(50) do |num|                                                   
#     User.create!(username:"user#{num}",email:"user#{num}@gmail.com",password:"users#{num}",password_confirmation:"users#{num}")       
# end   

1.upto(25) do |num|                                                   
    Post.create!(content:"new stuff#{num}",user_id:1,image_file_name:"retro1.jpg",image_content_type:"image/jpeg",image_file_size:"3761#{num}",image_updated_at:2020-01-19)       
end   