class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  has_attached_file :image, styles: { medium: "700x500>", thumb: "350x250>" }, default_url: "/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
