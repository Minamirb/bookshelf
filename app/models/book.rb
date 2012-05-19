class Book < ActiveRecord::Base
  attr_accessible :ISBN, :amazon_url, :author, :bookimg, :edition, :field_id, :note, :published_date, :publisher_id, :title
end
