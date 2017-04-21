class CreateBinhluans < ActiveRecord::Migration[5.0]
  def change
    create_table :binhluans do |t|
      t.string :content
      t.string :user_id
      t.references :truyen
      t.timestamps
    end
  end
end
