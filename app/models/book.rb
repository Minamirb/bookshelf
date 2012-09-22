class Book < ActiveRecord::Base
  belongs_to :publisher
  has_one :study
  has_many :books_categories
  has_many :categories, through: :books_categories
  attr_accessible :amazon_url, :author, :image_url, :isbn, :published_on, :title, :version, :publisher
end
