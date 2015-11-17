class Review < ActiveRecord::Base
  belongs_to :movie
  has_many :comments
end
