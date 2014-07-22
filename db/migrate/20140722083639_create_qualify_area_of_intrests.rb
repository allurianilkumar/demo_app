class CreateQualifyAreaOfIntrests < ActiveRecord::Migration
  def up
    create_table :qualify_area_of_intrests do |t|
      t.string :name
    end
  end
  def down
    drop_table :qualify_area_of_intrests
  end
end
