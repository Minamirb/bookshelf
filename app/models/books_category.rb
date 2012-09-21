class BooksCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
  # attr_accessible :title, :body
end
