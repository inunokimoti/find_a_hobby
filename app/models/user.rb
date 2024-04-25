class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :city, presence: true
  validates :number, presence: true
  validates :birthday, presence: true
  validates :skill, presence: true
  validates :profile, presence: true
       
  has_many :hobbies
  has_many :comments
       
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
       
  with_options presence: true, format: { with: /\A[ぁ-んー]+\z/, message: 'ひらがなを使用してください' } do
    validates :last_name_kana
    validates :first_name_kana
  end
       
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '全角（漢字・ひらがな・カタカナ）を使用してください' } do
    validates :last_name
    validates :first_name
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :from

  validates :from_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
