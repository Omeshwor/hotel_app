class Room < ApplicationRecord
  has_many_attached :images, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
end
