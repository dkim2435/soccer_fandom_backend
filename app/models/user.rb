class User < ApplicationRecord
  has_secure_password
  has_many :fandoms
  has_many :teams, through: :fandoms
  has_many :leagues, through: :teams

  validates :username, uniqueness: { case_sensitive: false }

  def leagues
    super().uniq
  end
end
