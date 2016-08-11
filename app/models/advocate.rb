class Advocate < ActiveRecord::Base
  belongs_to :user
  has_many  :advocations
  has_many :companies, through: :advocations
end