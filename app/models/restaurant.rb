class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  @allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, :inclusion=> { :in => @allowed_categories }
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :address, presence: true
end
