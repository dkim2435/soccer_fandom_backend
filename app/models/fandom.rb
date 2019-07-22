class Fandom < ApplicationRecord 
  belongs_to :user
  belongs_to :team
end