class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :statement
      t.string :said_by
      t.string :comment_on
      t.date :commented_on

      t.timestamps
    end
  end
end
