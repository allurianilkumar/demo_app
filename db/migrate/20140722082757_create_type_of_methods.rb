class CreateTypeOfMethods < ActiveRecord::Migration
  def up
    create_table :type_of_methods do |t|
      t.string :name
    end
  end
  def down
    drop_table :type_of_methods
  end
end
