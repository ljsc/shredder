class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.string :catagory
      t.timestamps
    end
  end
end
