class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アート' },
    { id: 3, name: '育成／飼育' },
    { id: 4, name: 'イベント' },
    { id: 5, name: '演奏' },
    { id: 6, name: '学習' },
    { id: 7, name: '観察' },
    { id: 8, name: '鑑賞' },
    { id: 9, name: '観戦' },
    { id: 10, name: 'グルメ' },
    { id: 11, name: 'ゲーム' },
    { id: 12, name: '健康／美容' },
    { id: 13, name: '収集／採取' },
    { id: 14, name: 'スポーツ' },
    { id: 15, name: '体験' },
    { id: 16, name: '特技' },
    { id: 17, name: 'ミュージック' },
    { id: 18, name: 'ものづくり' },
    { id: 19, name: '料理' },
    { id: 20, name: '旅行' },
    { id: 21, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :hobbies
end