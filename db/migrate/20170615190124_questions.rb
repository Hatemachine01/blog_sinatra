class Questions < ActiveRecord::Migration[4.2]
 
  def change
  create_table :questions do |t|
  t.integer :likes  , :default => 0
  t.integer :dislikes , :default => 0
  t.string :title
  t.string :content
  t.belongs_to :user
    end
  end
end