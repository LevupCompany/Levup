class Portfolio < ApplicationRecord
  has_attached_file :image, styles: { large: "1920x1280", small: "330x650"}, default_url: "/images/:style/missing.png"
  validates :title, presence: true
  validates :tag, presence: true
  validates :annotation, presence: true
  validates_attachment :image, presence: true,
                       content_type: { content_type: ["image/jpeg", "image/png", "image/jpg"] },
                       size: { in: 0..2.megabytes }
end
