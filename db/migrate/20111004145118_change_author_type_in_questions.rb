class ChangeAuthorTypeInQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :author_id
    add_column :questions, :author, :string
    add_index :questions, :author
  end

  def down
    remove_column :questions, :author
    add_column :questions, :author_id, :integer
  end
end
