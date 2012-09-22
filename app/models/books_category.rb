class BooksCategory < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
  attr_accessible :book_id, :category_id
end
