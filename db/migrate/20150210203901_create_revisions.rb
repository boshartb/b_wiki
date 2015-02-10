class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.text :body
      t.integer :previous_id
      t.integer :page_id

      t.timestamps null: false
    end
  end
end
