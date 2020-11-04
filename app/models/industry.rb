class Industry < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '農林・水産'},
    { id: 3, name: '製造業'},
    { id: 4, name: '卸売・小売'},
    { id: 5, name: '金融・保険・不動産'},
    { id: 6, name: '建設業'},
    { id: 7, name: '情報通信'},
    { id: 8, name: '社会インフラ'},
    { id: 9, name: 'サービス業'},
    { id: 10, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :companies

end
