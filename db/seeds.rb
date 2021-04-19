# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({
                email: "adminuser@gmail.com", 
                password: "123456", 
                role: 1, 
                name: "Admin", 
                profile_attributes: {"address_line"=>"Buidling No: 11, Room No: 1221", 
                    "street"=>"M.G.Road", 
                    "landmark"=>"Near Worli Police Station", 
                    "city"=>"Mumbai", 
                    "state"=>"Maharashtra", 
                    "pin_code"=>"400099",
                    "phone_number": "1234567890"
                }
                
            })