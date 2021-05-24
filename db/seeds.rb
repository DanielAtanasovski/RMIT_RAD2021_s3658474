men_collection = Collection.create!({name: 'Men'})
women_collection = Collection.create!({name: 'Women'})
children_collection = Collection.create!({name: 'Children'})
new_collection = Collection.create!({name: 'New'})


black_male_shirt = Item.create!({name: 'Black Male Shirt', price: 20.99, popularity: 10, collection_ids: [men_collection.id]})
black_male_shirt.images.create(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/men-black-shirt-1.jpg')
black_male_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/men-black-shirt-2.jpg')

red_male_shirt = Item.create!({name: 'Red Male Shirt', price: 9.99, popularity: 2,  collection_ids: [men_collection.id]})
red_male_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/men-red-shirt-1.jpg')
red_male_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/men-red-shirt-2.jpg')

peach_women_shirt = Item.create!({name: 'Peach Women Shirt', price: 11.99, popularity: 5, collection_ids: [women_collection.id]})
peach_women_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/women-peach-shirt-1.jpg')
peach_women_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/women-peach-shirt-2.jpg')

pink_women_shirt = Item.create!({name: 'Pink Women Shirt', price: 17.49, popularity: 5, collection_ids: [women_collection.id]})
pink_women_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/women-pink-shirt-1.jpg')
pink_women_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/women-pink-shirt-2.jpg')

grey_children_shirt = Item.create!({name: 'Grey Children Shirt', price: 14.99, popularity: 5, collection_ids: [children_collection.id]})
grey_children_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/children-grey-sweater-1.jpg')
grey_children_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/children-grey-sweater-2.jpg')
grey_children_shirt.images.create!(url: 'https://rad2021-justanotheronlinestore-images.s3.amazonaws.com/items/children-grey-sweater-3.jpg')


user = User.new
user.email = 'rad2021rmit@gmail.com'
user.password = 'Rails2021'
user.password_confirmation = 'Rails2021'
user.username = 'RAD'
user.save!