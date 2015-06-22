class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, unique: true, null: false, length: { minimum: 40 }
      t.text :description, null: false, length: { minimum: 150 }

      t.timestamps null: false
    end
  end
end
