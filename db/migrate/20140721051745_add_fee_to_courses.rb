class AddFeeToCourses < ActiveRecord::Migration
  def up
      add_column(:courses, :fee, :decimal, {:precision=>5, :scale=>2})
  end
end
