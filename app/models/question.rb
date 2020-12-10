class Question < ApplicationRecord
  validates :comp_text, presence: true
  validates :incomp_text, presence: true


  belongs_to :user
  
end
