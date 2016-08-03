class CreateExerciseOptions < ActiveRecord::Migration
  def change
    create_table :exercise_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
