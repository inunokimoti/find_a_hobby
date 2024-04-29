class Hobby < ApplicationRecord
  validates :nickname, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :city, presence: true
  validates :number, presence: true
  validates :phone, format: { with: /\A\d{10,11}\z/, message: "is 10 or 11 digits only" }
  validates :birthday, presence: true
  validates :skill, presence: true
  validates :profile, presence: true
       
  has_many :hobbies
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :from

  validates :from_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :where_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
