class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :books_categories
  has_many :books, through: :books_categories
end
