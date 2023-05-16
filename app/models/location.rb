class Location < ApplicationRecord
  has_many :articles, dependent: :destroy

end
