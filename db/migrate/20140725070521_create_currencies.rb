class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
    end
  end
  def down
    drop_table :currencies
  end
end
