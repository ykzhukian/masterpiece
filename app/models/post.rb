class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
end
