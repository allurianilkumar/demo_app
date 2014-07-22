class CreateAnalysisGroupGadgets < ActiveRecord::Migration
  def up
    create_table :analysis_group_gadgets do |t|
      t.references :gadgets, index: true
      t.references :analysis_groups, index: true
    end
  end
  def down
    remove_reference :gadgets
    remove_reference :analysis_groups
    drop_table :analysis_group_gadgets
  end
end
