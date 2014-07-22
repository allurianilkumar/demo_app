class CreateAnalysisGroups < ActiveRecord::Migration
  def  up
    create_table :analysis_groups do |t|
      t.string :name
    end
  end
  def down
    drop_table :analysis_groups
  end
end
