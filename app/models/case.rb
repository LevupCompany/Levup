class Case < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :annotation, presence: true,length: {maximum:180}
  validates :tag, presence: true
  has_attached_file :image
end
