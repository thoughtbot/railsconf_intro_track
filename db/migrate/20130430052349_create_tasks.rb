class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, require: true

      t.timestamps
    end
  end
end
