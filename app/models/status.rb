class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '取引中'},
    { id: 3, name: '取引なし'},
    { id: 4, name: '過去取引あり'}
  ]

  include ActiveHash::Associations
  has_many :companies

end
