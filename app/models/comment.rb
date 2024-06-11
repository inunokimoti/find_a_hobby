class Comment < ApplicationRecord

  validates :comment, presence: true

  belongs_to :hobby
  belongs_to :user
end
