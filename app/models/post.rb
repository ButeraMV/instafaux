class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :caption, presence: true, length: { minimum: 3, maximum: 300 }
end
