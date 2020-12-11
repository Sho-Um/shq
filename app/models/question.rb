class Question < ApplicationRecord
  validates :comp_text, presence: true, length: {maximum: 400}
  validates :incomp_text, presence: true, length: {maximum: 400}
  validates :image, presence: true

  belongs_to :user
  has_many :advices
  
  has_one_attached :image
end
