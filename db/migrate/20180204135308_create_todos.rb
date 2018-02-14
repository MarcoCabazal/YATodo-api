class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.references :category, default: 3
      t.string :title
      t.datetime :due_date

      t.timestamps
    end
  end
end
