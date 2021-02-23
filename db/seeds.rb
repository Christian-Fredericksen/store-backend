# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

testimonials = Testimonial.create([
  { testimonial: 'These are the most comfortable leggings ever!',
  item_id: 1,
  user_id: 1 },
  
  { testimonial: 'Buttery soft. So cozy!',
  item_id: 1,
  user_id: 2 },

  { testimonial: 'Mickey and Minnie Clause! So adorable! My favorite holiday leggings!',
  item_id: 1,
  user_id: 3 },

  { testimonial: 'These are the best! Perfect fit',
  item_id: 2,
  user_id: 4 },

  { testimonial: 'I get the best compliments about my Krazy Kalf Leggings!',
  item_id: 2,
  user_id: 5 },

  { testimonial: 'Nothing says Christmas like a cup of hot cocoa and my Krazy Kalves.',
  item_id: 2,
  user_id: 1 },

  { testimonial: 'My husband says I look sweet enough to eat. Hahaha!',
  item_id: 3,
  user_id: 2 },

  { testimonial: 'I paired this with one of her Peek-a-Boo tops. Casual and sexy!',
  item_id: 3,
  user_id: 3 },

  { testimonial: 'So comfy. Its like being hugged all day.',
  item_id: 3,
  user_id: 4 },

  { testimonial: 'I love my leggings! Kym is the best!',
  item_id: 4,
  user_id: 5 },

  { testimonial: 'Xmas is my favorite holiday and Penguins are my power animal. Kym has something for everyone!',
  item_id: 5,
  user_id: 1 },

  { testimonial: 'Amazingly comfortable, huge selection, with fun and easy shopping! Im hooked! ',
  item_id: 5,
  user_id: 2 },

  { testimonial: 'Krazy Kalf Leggings...Its an addiction, but I look cute!',
  item_id: 5,
  user_id: 3 },

])

items = Item.create([
    { name: 'Santa Mickey',
    description: 'Santa Mickies & Minnies on a purple background accented with wreaths, candy canes, stars, and ornaments.',
    image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123138156_10221462370262877_5063742317812069203_n.jpg?_nc_cat=100&ccb=2&_nc_sid=a83260&_nc_ohc=LqPPnECQZE4AX-5iNyt&_nc_ht=scontent-lax3-1.xx&oh=a6093eddd6936d8f2bdf8423e1f0e08f&oe=602D7CF7',
    price: '$25' },

    { name: 'Hallmark and Chill',
    description: 'A shades of red wrapping paper background with images of ginger bread men, gnomes and other things Hallmark Christmasy.',
    image: 'https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/123325063_10221462370982895_5350809058744595815_n.jpg?_nc_cat=111&ccb=3&_nc_sid=a83260&_nc_ohc=KvpAybrHMpYAX-HLSu6&_nc_oc=AQlxQd51urQu-jtNwym_CIl4D6qs-62tvbS4x0fEuGMHeShSka3nVyt0dl5o-TtkLa6aLdf1iZbrR7AUAgvwMqDP&_nc_ht=scontent-lax3-2.xx&oh=d193a0aa5c5f0b8d2b667a8bc4aa6c69&oe=6057EA54',
    price: '$25' },

    { name: 'How Sweet It Is',
    description: 'In a tin of peppermint candies.',
    image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123224885_10221462370902893_7250087394513340578_n.jpg?_nc_cat=102&ccb=2&_nc_sid=a83260&_nc_ohc=Sjl2wDycc-AAX9jnHiM&_nc_ht=scontent-lax3-1.xx&oh=453d540d9c7d9e2b2fcacbd6de88cac6&oe=602EF2C5',
    price: '$25' },

    { name: 'Retro Decko the Halls',
    description: 'A variety of whimiscal throwback Christmas tree designs on a black background.',
    image: 'https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/123219379_10221462370342879_5296634749869254043_n.jpg?_nc_cat=111&ccb=3&_nc_sid=a83260&_nc_ohc=o2jXLVIWXU4AX_hzZ4G&_nc_ht=scontent-lax3-2.xx&oh=675005da891dcfdb8f09a729da1fc75b&oe=605778BF',
    price: '$25' },

    { name: 'Christmas Penguins',
    description: 'Penguins with Santa hats on a frosty blue background with snowflakes.',
    image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123251606_10221462371942919_266028675923734303_n.jpg?_nc_cat=110&ccb=3&_nc_sid=a83260&_nc_ohc=fkLzGiVpAIIAX8KleUx&_nc_ht=scontent-lax3-1.xx&oh=6f8a252341b051c4195561721f1b65f1&oe=6058614D',
    price: '$25' }
  
  ])