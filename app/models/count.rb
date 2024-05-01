class Count < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '/回' },
    { id: 3, name: '/日' },
    { id: 4, name: '/週' },
    { id: 5, name: '/月' },
    { id: 6, name: '/半年'},
    { id: 7, name: '/年' }
  ]

  include ActiveHash::Associations
  has_many :hobbies
end