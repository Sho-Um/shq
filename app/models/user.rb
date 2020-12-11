class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, password_length: 10..128

  validates :name, presence: true,
  uniqueness: { case_sensitive: :false },
  length: { minimum: 2, maximum: 20 }

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  EMAIL_REGEX = /A+.....@staherqui.jp+\z/.freeze
  validates_format_of :email, with: EMAIL_REGEX

  has_many :questions
  has_many :advices

end
