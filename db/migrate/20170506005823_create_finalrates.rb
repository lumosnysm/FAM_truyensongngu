class CreateFinalrates < ActiveRecord::Migration[5.0]
  def change
    create_table :finalrates do |t|
    	t.references :truyen
    	t.float :rate
    	t.integer :number
      t.timestamps
    end
  end
end
