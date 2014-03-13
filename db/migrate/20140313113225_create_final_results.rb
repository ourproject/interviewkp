class CreateFinalResults < ActiveRecord::Migration
  def change
    create_table :final_results do |t|
      t.string :user_id
      t.string :interview_id
      t.string :desicion

      t.timestamps
    end
  end
end
