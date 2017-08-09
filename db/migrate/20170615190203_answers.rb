class Answers < ActiveRecord::Migration[4.2]
  def change
    create_table :answers do |t|
    t.string :content
    t.belongs_to :question
    t.belongs_to :user
    end
  end
end
