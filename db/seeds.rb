Comment.destroy_all
Merchandise.destroy_all
Cart.destroy_all
PastOrder.destroy_all
User.destroy_all


elijah = User.create(username: 'elijahcbrooks', password: 'password1')

m1 = Merchandise.create(description: 'An Item!')
m2 = Merchandise.create(description: 'Another Item!')
m3 = Merchandise.create(description: 'ANOTHER ITEM')

Cart.create(user: elijah, merchandise_id: m1.id)
Cart.create(user: elijah, merchandise_id: m2.id)
Cart.create(user: elijah, merchandise_id: m3.id)

PastOrder.create(user: elijah, merchandise_id: m1.id)
