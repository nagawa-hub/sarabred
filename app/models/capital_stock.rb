class CapitalStock < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '〜999万円'},
    { id: 3, name: '1000万円〜'},
    { id: 4, name: '5000万円〜'},
    { id: 5, name: '1億円〜'},
    { id: 6, name: '5億円〜'}
  ]

  include ActiveHash::Associations
  has_many :companies

end

