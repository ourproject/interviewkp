class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :user_id
      t.string :interview_id
      t.string :question_id
      t.string :url

      t.timestamps
    end
  end
end
