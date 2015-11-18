class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :one
      t.string :two
      t.string :three
      t.string :four

      t.timestamps null: false
    end
  end
end
