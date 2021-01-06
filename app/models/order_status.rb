class OrderStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '見積り'},
    { id: 3, name: '成約'},
    { id: 4, name: '失注'},
  ]

  include ActiveHash::Associations
  has_many :orders
end
