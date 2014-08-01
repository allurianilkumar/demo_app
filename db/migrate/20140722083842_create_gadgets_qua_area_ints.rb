class CreateGadgetsQuaAreaInts < ActiveRecord::Migration
    def up
    create_table :gadgets_qua_area_ints do |t|
      t.references :qualify_area_of_intrests, index: true
      t.references :gadgets, index: true
    end
  end
  def down
    remove_reference :gadgets
    remove_reference :qualify_area_of_intrests
    drop_table :gadgets_qua_area_ints
  end
end
