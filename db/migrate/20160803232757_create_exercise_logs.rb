class CreateExerciseLogs < ActiveRecord::Migration
  def change
    create_table :exercise_logs do |t|
      t.integer :reps
      t.float :weight
      t.integer :sets
      t.float :volume
      t.references :exercise, index: true, foreign_key: true
      t.references :exercise_option, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
