class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :set_by
      t.integer :number_of_questions
      t.integer :duration
      t.integer :cutoff

      t.timestamps
    end
  end
end
