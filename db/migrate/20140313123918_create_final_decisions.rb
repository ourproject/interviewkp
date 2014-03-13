class CreateFinalDecisions < ActiveRecord::Migration
  def change
    create_table :final_decisions do |t|
      t.string :user_id
      t.string :interview_id
      t.string :decision

      t.timestamps
    end
  end
end
