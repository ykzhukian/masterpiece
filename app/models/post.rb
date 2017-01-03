class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  has_attached_file :image, styles: { medium: "700x500>", thumb: "350x250>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
