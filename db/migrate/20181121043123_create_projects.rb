class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :problem_id, foreign_key: true
      t.integer :solution_id, foreign_key: true

      t.timestamps
    end
  end
end
