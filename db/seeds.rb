
require 'open-uri'
require 'json'

puts puts 'Cleaning up database...'
Offering.destroy_all
User.destroy_all
Item.destroy_all
puts 'Database cleaned'

puts 'Creating Users......'

user1 = User.create!(
   name: "Ryota Enoki",
   email: "ryota@lewagon.jp",
   phone_number: "080 45454646",
   location: "212-1086, Kinutakoen, Setagaya-ku, Tokyo",
   password: '123456'
 )
file = URI.open("https://avatars.githubusercontent.com/u/76512208?v=4")
user1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user2 = User.create!(
   name: "Karen Joy Fujibayashi",
   email: 'karen@lewagon.jp',
   phone_number: '080 12344321',
   location: '387-1223, Ichigayakoracho, Shinjuku-ku, Tokyo',
   password: '123456'
 )
file = URI.open("https://avatars.githubusercontent.com/u/81273911?v=4")
user2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user3 = User.create!(
   name: "Vivian Bao",
   email: 'vivian@lewagon.jp',
   phone_number: '080 44448888',
   location: '181-1206, Roppongi Roppongihiruzumoritawa(9-kai), Minato-ku, Tokyo',
   password: '123456'
 )
file = URI.open("https://avatars.githubusercontent.com/u/78392794?v=4")
user3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user4 = User.create!(
   name: "Caio Santos",
   email: 'caio@lewagon.jp',
   phone_number: '080 99991111',
   location: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
   password: '123456'
 )
file = URI.open("https://avatars.githubusercontent.com/u/87355777?v=4")
user4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

user5 = User.create!(
   name: "Douglas Berkley",
   email: 'doug@lewagon.jp',
   phone_number: '080 01234321',
   location: '31-1, Yuraku-cho 1-chome, Chiyoda-ku, Tokyo',
   password: '123456'
 )
file = URI.open("https://avatars.githubusercontent.com/u/25542223?v=4")
user5.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'Users created'
puts 'Creating Items......'

item1 = Item.create!(
  name: 'Shirt',
  description: 'A beautiful Superman shirt',
  user: user1
)
file = URI.open("https://www.randomlists.com/img/things/shirt.webp")
item1.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item2 = Item.create!(
  name: "Face wash",
  description: "I bought another one, so this is a brand new one",
  user: user1
)
file = URI.open("https://www.randomlists.com/img/things/face_wash.webp")
item2.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item3 = Item.create!(
  name: "Bottle",
  description: "That's a bottle what the last samurai used in his battle",
  user: user1
)
file = URI.open("https://www.randomlists.com/img/things/bottle.webp")
item3.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item4 = Item.create!(
  name: "TV",
  description: "Nice tv to play videogames. It's perfectly working",
  user: user1
)
file = URI.open("https://www.randomlists.com/img/things/tv.webp")
item4.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item5 = Item.create!(
  name: "Flowers",
  description: "That's the nice flowers to decorate your house. It's smelling really good",
  user: user2
)
file = URI.open("https://www.randomlists.com/img/things/flowers.webp")
item5.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item6 = Item.create!(
  name: "Magnet",
  description: "Nice Magnet is gonna help you to find some metal stuffs",
  user: user2
)
file = URI.open("https://www.randomlists.com/img/things/magnet.webp")
item6.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item7 = Item.create!(
  name: "radio",
  description: "My granpa used that radio. Working well.",
  user: user2
)
file = URI.open("https://www.randomlists.com/img/things/radio.webp")
item7.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item8 = Item.create!(
  name: "phone",
  description: "Old style phone. Collector's item",
  user: user2
)
file = URI.open("https://www.randomlists.com/img/things/phone.webp")
item8.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item9 = Item.create!(
  name: "thermostat",
  description: "Nice and usefull thermostat",
  user: user3
)
file = URI.open("https://www.randomlists.com/img/things/thermostat.webp")
item9.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item10 = Item.create!(
  name: "sketch pad",
  description: "Sketch pad to you carry anywhere",
  user: user3
)
file = URI.open("https://www.randomlists.com/img/things/sketch_pad.webp")
item10.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item11 = Item.create!(
  name: "clock",
  description: "Nice clock, working perfectly",
  user: user3
)
file = URI.open("https://www.randomlists.com/img/things/clock.webp")
item11.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item12 = Item.create!(
  name: "bookmark",
  description: "If you are a book reader, you're gonna love it",
  user: user3
)
file = URI.open("https://www.randomlists.com/img/things/bookmark.webp")
item12.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item13 = Item.create!(
  name: "knife",
  description: "Nice knife to cook a omelette",
  user: user4
)
file = URI.open("https://www.randomlists.com/img/things/knife.webp")
item13.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item14 = Item.create!(
  name: "cookie jar",
  description: "Really useful to save your cookies to eat latter",
  user: user4
)
file = URI.open("https://www.randomlists.com/img/things/cookie_jar.webp")
item14.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item15 = Item.create!(
  name: "headphones",
  description: "Nice headphones to hear some music around",
  user: user4
)
file = URI.open("https://www.randomlists.com/img/things/headphones.webp")
item15.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item16 = Item.create!(
  name: "hanger",
  description: "Nice hanger to put your winter cloathes",
  user: user4
)
file = URI.open("https://www.randomlists.com/img/things/hanger.webp")
item16.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item17 = Item.create!(
  name: "Iphone X",
  description: "Nice Iphone, really brand new",
  user: user1
)
file = URI.open("https://images.unsplash.com/photo-1537589376225-5405c60a5bd8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80")
item17.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item18 = Item.create!(
  name: "MacBook Air",
  description: "2021, never used",
  user: user2
)
file = URI.open("https://images.unsplash.com/photo-1514342959091-2bffd8a7c4ba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80")
item18.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item19 = Item.create!(
  name: "MacBook Pro",
  description: "2019, I used it only few times, totally new",
  user: user3
)
file = URI.open("https://images.unsplash.com/photo-1587560699334-cc4ff634909a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80")
item19.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item20 = Item.create!(
  name: "Apple watch 6",
  description: "Used, but working well",
  user: user4
)
file = URI.open("https://images.unsplash.com/photo-1617043786394-f977fa12eddf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80")
item20.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item21 = Item.create!(
  name: "Soccer Ball",
  description: "Used at the final of the champions league 2021/2022",
  user: user5
)
file = URI.open("https://images.unsplash.com/photo-1614632537423-1e6c2e7e0aab?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80")
item21.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

item22 = Item.create!(
  name: "Tesla model s",
  description: "Nice car, but I didn't like the color",
  user: user5
)
file = URI.open("https://images.unsplash.com/photo-1560958089-b8a1929cea89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1171&q=80")
item22.photo.attach(io: file, filename: 'item.png', content_type: 'image/png')

puts 'User and items created'
