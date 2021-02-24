Comment.destroy_all
Merchandise.destroy_all
Cart.destroy_all
PastOrder.destroy_all
User.destroy_all


elijah = User.create(username: 'elijahcbrooks', password: 'password1')
Cart.create(user: elijah)

m1 = Merchandise.create(text: 'An Item!')
m2 = Merchandise.create(text: 'Another Item!')
m3 = Merchandise.create(text: 'ANOTHER ITEM')
