class Genrevariable < ActiveHash::Base
  self.data = [
    { id: 1, name: '_ _' },
    { id: 2, name: '電気代' },
    { id: 3, name: 'ガス代' },
    { id: 4, name: '水道代' },
    { id: 5, name: 'ネット代' },
    { id: 6, name: '携帯代' },
    { id: 7, name: 'その他' }
  ]
  include ActiveHash::Associations
  
  has_many :variablecosts

end