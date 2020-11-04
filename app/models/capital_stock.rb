class CapitalStock < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '〜999万円'},
    { id: 3, name: '1000〜4999万円'},
    { id: 4, name: '5000〜9999万円'},
    { id: 5, name: '1〜5億円'},
    { id: 6, name: '5億円〜'}
  ]

  include ActiveHash::Associations
  has_many :companies

end

