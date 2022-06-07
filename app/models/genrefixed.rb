class Genrefixed < ActiveHash::Base
  self.data = [
    { id: 1, name: '_ _' },
    { id: 2, name: '住居費' },
    { id: 3, name: '保険代' },
    { id: 4, name: 'その他' }
  ]
  include ActiveHash::Associations
  
  has_many :fixedcosts

end