class Article < ApplicationRecord
  belongs_to :location
  has_one_attached :image

end
