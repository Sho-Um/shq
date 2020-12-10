class Question < ApplicationRecord
  validates :comp_text, presence: true
  validates :incomp_text, presence: true
  validates :image, presence: true

  belongs_to :user
  
  has_one_attached :image
end
