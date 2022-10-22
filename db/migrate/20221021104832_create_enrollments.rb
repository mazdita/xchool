class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :pass_score
      t.integer :progress
      t.integer :score
      t.boolean :completed
      t.boolean :graduate

      t.timestamps
    end
  end
end
