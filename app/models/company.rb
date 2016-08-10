class Company < ActiveRecord::Base
  belongs_to :user
  has_many :company_contacts
  has_many :contacts, through: :company_contacts

  scope :prioritized, -> { order(motivation: :desc, posting: :desc, advocate: :desc) }

end