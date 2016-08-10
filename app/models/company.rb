class Company < ActiveRecord::Base
  belongs_to :user
  has_many :company_contacts
  has_many :contacts, through: :company_contacts

  def self.prioritize(arr)
    sorted_arr = []
    [5,4,3,2,1,0,nil].each { |motivation|
      [5,4,3,2,1,0,nil].each { |posting|
        [true, false].each { |advocate|
          arr.each { |company|
            if company.motivation == motivation && company.posting == posting && company.advocate == advocate
              sorted_arr << company
            end
          }
        }
      }
    }
    sorted_arr
    # hash = arr.group_by { |company| company.motivation }
    # nested = hash.each { |k,v| v.group_by { |x| x.posting }}

    # new_arr = arr.sort_by { |company| company.motivation }
    # require 'pry'; binding.pry
  end

end