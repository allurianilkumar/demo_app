class CreateGadgetsTypeOfMethods < ActiveRecord::Migration
  def up
    create_table :gadgets_type_of_methods do |t|
      t.references :gadgets, index: true
      t.references :type_of_methods, index: true
    end
  end
  def down
    #remove_reference :gadgets
   # drop_table :gadgets
    #remove_reference :type_of_methods 
    drop_table :gadgets_type_of_methods
  end
end
