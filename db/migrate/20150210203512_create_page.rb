
# rails g migration CreatePage title:string

class CreatePage < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      
      t.timestamps null: false
    end
  end
end
