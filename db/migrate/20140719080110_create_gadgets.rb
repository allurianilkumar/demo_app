class CreateGadgets < ActiveRecord::Migration
  def up
    create_table :gadgets do |t|
     
      t.string :title
      t.string :name_method_or_gadget
      t.string :useful_for
      t.string :analysis_group
      t.string :type_of_method_or_gadget
      t.text :gadget_description
      t.decimal :cost
      t.string :currencys_id
      t.string :tool_users
      t.string :gadget_website
      t.string :gadget_brochure
      t.string :companay_name
      t.text :company_description
      t.string :companay_website
      t.string :gadget_scientific
      t.string :technology_used
      t.text :scientific_descrition

      t.string :scientfic_papers
      t.string :useful_for_field
      t.string :qualfiy_area_interest
      t.string :useful_which_field_lab
      t.string :explanation_by_evaluator
      t.string :name
      t.string :explanation_by_nrc
      t.string :name_by_evaluator
      t.string :comments_suggestion_of_evalutor
      #t.string :picture_url
      #t.string :video_url
      t.text :comment
      
      t.timestamps
    end
  end

  def down
    drop_table :gadgets
  end
end
