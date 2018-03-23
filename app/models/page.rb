class Page < ApplicationRecord
  attr_accessible :page_title, :description, :keywords
 validates :page_title, :description, :keywords
end
