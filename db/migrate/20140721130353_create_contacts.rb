class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_mail
      t.text :contact_message
      t.timestamps
    end
  end
  def down
    drop_table :contacts
  end
end
