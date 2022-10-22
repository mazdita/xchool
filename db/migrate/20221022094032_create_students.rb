class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :average_score
      t.integer :average_progress
      t.boolean :graduated

      t.timestamps
    end
  end
end
