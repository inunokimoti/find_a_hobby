class Hobby < ApplicationRecord
  self.inheritance_column = :_type_disabled 

  with_options presence: true do
    validates :image
    validates :type
    validates :text
    validates :user_id
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :where
  belongs_to :category
  belongs_to :count
  belongs_to :from

  validates :where_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
end
