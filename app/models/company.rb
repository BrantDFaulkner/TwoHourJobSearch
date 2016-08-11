class Company < ActiveRecord::Base
  belongs_to :user
  has_many :advocations
  has_many :advocates, through: :advocations

  scope :prioritized, -> { order(motivation: :desc, posting: :desc, advocate: :desc) }

end