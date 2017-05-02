class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|

    	t.references :truyen
    	t.integer :user_id
    	t.float :rate
      t.timestamps
    end
  end
end
