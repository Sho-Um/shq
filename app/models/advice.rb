class Advice < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :text, presence: true, length: {maximum: 400}

end
