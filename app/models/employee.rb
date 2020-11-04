class Employee < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '〜99人'},
    { id: 3, name: '100〜499人'},
    { id: 4, name: '500〜999人'},
    { id: 5, name: '1000〜4999人'},
    { id: 6, name: '5000人〜'}
  ]

  include ActiveHash::Associations
  has_many :companies

end
