class CreateCurrencies < ActiveRecord::Migration
  def  up
    create_table :currencies do |t|
      t.string :name
      t.references :gadgets, index: true
    end
  end
  def down
    #remove_reference :gadgets
    drop_table :currencies
  end
end
