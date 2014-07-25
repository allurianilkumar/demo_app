class AddCurrencyToGadgets < ActiveRecord::Migration
   def  up
    create_table :add_currency_to_gadgets  do |t|
      t.references :gadget
      t.references :currency
    end
  end
  def down
    #remove_reference :gadget
    #remove_reference :qualify_area_of_interests
    drop_table :add_currency_to_gadgets 
    
  end
end
