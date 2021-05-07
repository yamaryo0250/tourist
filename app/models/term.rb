class Term < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '半日' },
    { id: 3, name: '1日' },
    { id: 4, name: '2~3日' },
    { id: 5, name: '3日~'}
  ]

  include ActiveHash::Associations
  has_many :rides
  
end