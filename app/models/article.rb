class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, prescence: true, uniqueness: true

end
