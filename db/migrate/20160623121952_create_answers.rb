class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :email
      t.text :content
      t.string :attach1
      t.string :attach2
      t.string :attach3
      t.string :attach4
      t.boolean :is_op
      t.integer :plot_id

      t.timestamps null: false
    end
  end
end
