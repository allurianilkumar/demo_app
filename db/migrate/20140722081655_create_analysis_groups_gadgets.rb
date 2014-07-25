class CreateAnalysisGroupsGadgets < ActiveRecord::Migration
  def up
    create_table :analysis_groups_gadgets do |t|
      t.references :gadget
      t.references :analysis_group
    end
  end
  def down
    remove_reference :gadget
    remove_reference :analysis_group
    drop_table :analysis_groups_gadgets
  end
end
