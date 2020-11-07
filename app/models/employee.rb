class Employee < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '〜99人'},
    { id: 3, name: '100人〜'},
    { id: 4, name: '500人〜'},
    { id: 5, name: '1000人〜'},
    { id: 6, name: '5000人〜'}
  ]

  include ActiveHash::Associations
  has_many :companies

end
