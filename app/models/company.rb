class Company < ActiveRecord::Base
  belongs_to :user
  has_many :company_contacts
  has_many :contacts, through: :company_contacts

end