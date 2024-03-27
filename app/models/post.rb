class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :content, presence: true

  scope :by_category, ->(category_id) { where(category_id: category_id) }
end
