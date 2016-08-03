class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :program, index: true, foreign_key: true
      t.references :exercise_option, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
