class Book < ActiveRecord::Base
  belongs_to :publisher
  attr_accessible :amazon_url, :author, :image_url, :isbn, :published_on, :title, :version
end
