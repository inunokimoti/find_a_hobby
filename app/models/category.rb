class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アート' },
    { id: 3, name: 'outdoor' }
  ]

  include ActiveHash::Associations
  has_many :hobbies
end