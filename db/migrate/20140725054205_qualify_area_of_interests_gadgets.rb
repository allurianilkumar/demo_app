class QualifyAreaOfInterestsGadgets < ActiveRecord::Migration
  def  up
    create_table :gadgets_qualify_area_of_interests  do |t|
      t.references :gadget
      t.references :qualify_area_of_interest
    end
  end
  def down
    #remove_reference :gadget
    #remove_reference :qualify_area_of_interests
    drop_table :gadgets_qualify_area_of_interests
  end
end
