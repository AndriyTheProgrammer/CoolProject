class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :author
  validates_presence_of :book_text
end
