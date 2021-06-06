class CreateHeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :headers do |t|
      t.integer :member_id
      t.string :tag
      t.text :header

      t.timestamps
    end
  end
end
