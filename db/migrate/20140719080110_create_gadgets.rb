class CreateGadgets < ActiveRecord::Migration
  def up
    create_table :gadgets do |t|
      t.string :name
      t.string :title
      t.string :method_or_gadget
      t.string :useful_for
      t.string :analysis_group
      t.string :type_of_method_or_gadget
      t.text :gadget_description
      t.decimal :cost
      t.string :company_name
      t.text :company_description
      t.string :company_website
      t.string :technology_used
      t.text :comment
      
      t.timestamps
    end
  end

  def down
    drop_table :gadgets
  end
end
