class Rank < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'A(最優先)'},
    { id: 3, name: 'B(見込み:高)'},
    { id: 4, name: 'C(見込み:中)'},
    { id: 5, name: 'D(見込み:低)'},
    { id: 6, name: 'E(注力せず)'}
  ]

  include ActiveHash::Associations
  has_many :companies

end
