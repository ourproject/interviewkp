class CreateInterviewQuestions < ActiveRecord::Migration
  def change
    create_table :interview_questions do |t|
      t.text :question
      t.string :created_by

      t.timestamps
    end
  end
end
