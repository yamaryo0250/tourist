class Displacement < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '~250cc' },
    { id: 3, name: '250~400cc' },
    { id: 4, name: '500cc~' },
    { id: 5, name: '400cc~' },
    { id: 6, name: '250cc~' }
  ]

  include ActiveHash::Associations
  has_many :rides

end