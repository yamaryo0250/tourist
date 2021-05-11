class Style < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ゆったり景色を楽しみながら' },
    { id: 3, name: 'スポーツライディング' },
    { id: 4, name: '林道,オフロード' }
  ]

  include ActiveHash::Associations
  has_many :rides
end