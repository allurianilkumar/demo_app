class Gadget < ActiveRecord::Base
  
  has_and_belongs_to_many :analysis_groups 
  has_and_belongs_to_many :type_of_methods
  belongs_to :currencies
  has_and_belongs_to_many :qualify_area_of_intrests

end
