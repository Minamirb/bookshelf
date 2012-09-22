class Book < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :ISBN, :amazon_url, :author, :bookimg, :edition, :field_id, :note, :published_date, :publisher_id, :title
=======
  belongs_to :publisher
  has_one :study
  has_many :books_categories
  has_many :categories, through: :books_categories
  attr_accessible :amazon_url, :author, :image_url, :isbn, :published_on, :title, :version, :publisher
>>>>>>> works
end
