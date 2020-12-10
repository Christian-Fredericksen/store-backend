# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




  items = Item.create([
      { name: 'Santa Mickey',
      description: 'Santa Mickies & Minnies on a purple background accented with wreaths, candy canes, stars, and ornaments.',
      image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123138156_10221462370262877_5063742317812069203_n.jpg?_nc_cat=100&ccb=2&_nc_sid=a83260&_nc_ohc=kMMsnP17Z_sAX8jbgGg&_nc_ht=scontent-lax3-1.xx&oh=4be0acdc8a165021d94b7073f1401c1b&oe=5FFA1277',
      price: '$25' },

      { name: 'Hallmark and Chill',
      description: 'A shades of red wrapping paper background with images of ginger bread men, gnomes and other things Hallmark Christmasy.',
      image: 'https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/123325063_10221462370982895_5350809058744595815_n.jpg?_nc_cat=111&ccb=2&_nc_sid=a83260&_nc_ohc=d8-PqubOlFIAX9SZyHD&_nc_oc=AQlez9iHyCI307cTZlQ-s6PJZ2mulxvynykuySRSGHoycownuZUGOKz9a8klwvGrHSGh-o93ZVqD4Q-fENyPuEFM&_nc_ht=scontent-lax3-2.xx&oh=fb2d51f4256dab13e68d2f938297189e&oe=5FF8FE54',
      price: '$25' },

      { name: 'How Sweet It Is',
      description: 'In a tin of peppermint candies.',
      image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123224885_10221462370902893_7250087394513340578_n.jpg?_nc_cat=102&ccb=2&_nc_sid=a83260&_nc_ohc=bS-KMAzrCYkAX-S2d7P&_nc_ht=scontent-lax3-1.xx&oh=92810c3adfe73d05d3756b90ae558dea&oe=5FF793C5',
      price: '$25' },

      { name: 'Retro Decko the Halls',
      description: 'A variety of whimiscal throwback Christmas tree designs on a black background.',
      image: 'https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/123219379_10221462370342879_5296634749869254043_n.jpg?_nc_cat=111&ccb=2&_nc_sid=a83260&_nc_ohc=4TdeZqiPnrkAX9srCT0&_nc_ht=scontent-lax3-2.xx&oh=3a93c1de0bf08f5bb3423202365053f3&oe=5FF88CBF',
      price: '$25' },

      { name: 'Christmas Penguins',
      description: 'Penguins with Santa hats on a frosty blue background with snowflakes.',
      image: 'https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/123251606_10221462371942919_266028675923734303_n.jpg?_nc_cat=110&ccb=2&_nc_sid=a83260&_nc_ohc=fBIiQuR-siIAX8qs5w8&_nc_ht=scontent-lax3-1.xx&oh=62338dce089ce96af3dce820fe9fb583&oe=5FF9754D',
      price: '$25' }
    
    ])