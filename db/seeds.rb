# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Location.create(name: 'Park Cities', phone_number: '214-998-5297', address: '5555 Hillcrest Dallas, Tx 75214')
Location.create(name: 'Addison', phone_number: '502-750-3232', address: '2120 Beltline Dallas, Tx 75214')

Room.create(typer: 'Chair', name: 1, location_id: 1)
Room.create(typer: 'Chair', name: 2, location_id: 1)
Room.create(typer: 'Chair', name: 3, location_id: 1)
Room.create(typer: 'Chair', name: 4, location_id: 1)
Room.create(typer: 'Room', name: 5, location_id: 1)
Room.create(typer: 'Room', name: 6, location_id: 1)
Room.create(typer: 'Chair', name: 1, location_id: 2)
Room.create(typer: 'Chair', name: 2, location_id: 2)
Room.create(typer: 'Chair', name: 3, location_id: 2)
Room.create(typer: 'Chair', name: 4, location_id: 2)
Room.create(typer: 'Room', name: 5, location_id: 2)
Room.create(typer: 'Room', name: 6, location_id: 2)

Service.create(name: '1 Hour Combo Massage', time_length: '60 minutes', commission: 30, room_type: "Chair")
Service.create(name: 'King Service', time_length: '60 minutes', commission: 30, room_type: "Chair")
Service.create(name: '90 Minute Deep Tissue', time_length: '90 minutes', commission: 30, room_type: "Room")

Therapist.create(first_name:"Amy", last_name:"Holt", therapist_type:"certified", phone_number: "502 750 3232", email_address: "amy@amysmassage.com", ssn:"234-25-0081", nick_name:"SweeterPie", gender: "Female")
Therapist.create(first_name:"Fox", last_name:"Holt", therapist_type:"foot", phone_number: "214 998 5792", email_address: "fox@gmail.com", ssn:"234-25-0081", nick_name:"Big Daddy", gender: "Male")
Therapist.create(first_name:"Ying", last_name:"Chao", therapist_type:"certified", phone_number: "544 033 4343", email_address: "chow@live.com", ssn:"234-25-0081", nick_name:"GG", gender: "Female")
Therapist.create(first_name:"Yo Min", last_name:"Lee", therapist_type:"foot", phone_number: "854 438 9965", email_address: "yomin@gmail.com", ssn:"234-25-0081", nick_name: "Jenny", gender: "Female")

Customer.create(first_name:"Heidie", last_name:"Vernetti", phone_number: "469 882 1120", email_address: "heidi@gmail.com", gender: "Female", gender_pref: "Female")
Customer.create(first_name:"Andrea", last_name:"Vitek", phone_number: "832 775 5833", email_address: "andrea@live.com", gender: "Female", gender_pref: "Male")
Customer.create(first_name:"Mayonne", last_name:"Holt", phone_number: "214 828 1932", email_address: "holtnon@gmail.com", gender: "Female", gender_pref: "Female")
Customer.create(first_name:"Dorthy", last_name:"Holt", phone_number: "469 828 1559", email_address: "dorthy@ccyoung.com", gender: "Female", gender_pref: "Male")
Customer.create(first_name:"Elaine", last_name:"Stroupe", phone_number: "214 821 2424", email_address: "elaine@holthirsh.com", gender: "Female", gender_pref: "Female")
Customer.create(first_name:"Fox", last_name:"Holt", phone_number: "214-998-5297", email_address: "holtfox@live.com", gender: "Male", gender_pref: "Female")
Customer.create(first_name:"Lena", last_name:"Mulaney", phone_number: "469 882 1120", email_address: "lena@gmail.com", gender: "Female", gender_pref: "Female")
Customer.create(first_name:"Hanna", last_name:"Halabi", phone_number: "412 775 5833", email_address: "bobanna@live.com", gender: "Female", gender_pref: "Male")

Event.create(customer_id: 1, therapist_id: 1, location_id: 1, service_id: 3, walkin: 1, cancel: 0, room_id:5, starts_at: "2014-04-03 21:31:13", starts_at: "2014-04-03 21:31:13")
Event.create(customer_id: 2, therapist_id: 2, location_id: 2, service_id: 2, walkin: 0, cancel: 0, room_id:1, starts_at: "2014-04-05 21:31:13", starts_at: "2014-04-05 21:31:13")
Event.create(customer_id: 1, therapist_id: 2, location_id: 1, service_id: 1, walkin: 0, cancel: 0, room_id:5, starts_at: "2014-04-07 21:31:13", starts_at: "2014-04-07 21:31:13")
Event.create(customer_id: 2, therapist_id: 2, location_id: 2, service_id: 2, walkin: 0, cancel: 0, room_id:1, starts_at: "2014-04-09 21:31:13", starts_at: "2014-04-09 21:31:13")
