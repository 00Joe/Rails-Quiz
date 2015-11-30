class AddQuizNameToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :Quiz_Num, :string
  end
end
