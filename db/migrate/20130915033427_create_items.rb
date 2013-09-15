class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string 	:title
    	t.integer :sound_level
    	t.integer :safety_level
    	t.text 		:description
    	t.text		:note
    	t.string 	:item_image
    	t.string 	:item_qr
    	t.integer	:category_id
    	t.integer	:label_id
    	t.timestamp
    end
  end
end
