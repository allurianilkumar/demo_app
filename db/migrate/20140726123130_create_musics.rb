class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.has_attached_file :image
      t.has_attached_file :document
      t.has_attached_file :audio
      t.timestamps
    end
  end
end
