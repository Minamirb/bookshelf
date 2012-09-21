class Study < ActiveRecord::Base
  belongs_to :book
  attr_accessible :comment, :status
end
