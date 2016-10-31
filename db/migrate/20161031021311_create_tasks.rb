class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :project, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
