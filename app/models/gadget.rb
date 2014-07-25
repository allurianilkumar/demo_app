class Gadget < ActiveRecord::Base
  
  has_and_belongs_to_many :analysis_groups 
  has_and_belongs_to_many :type_of_methods
  belongs_to :currencys
  has_and_belongs_to_many :qualify_area_of_interests

end


# class Currency < ActiveRecord::Base
  
#   has_one :gadgets
  
# end

