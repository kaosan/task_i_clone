class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :content
      t.text :image
      t.timestamps
    end
  end
end
