class Question < ApplicationRecord
  validates :comp_text, presence: true
  validates :incomp_text, presence: true
end
