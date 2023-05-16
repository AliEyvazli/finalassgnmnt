class Post < ApplicationRecord
  # talks to the "posts" table
  belongs_to :location 

end
