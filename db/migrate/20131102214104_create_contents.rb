class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :code_name
      t.string :page_content

      t.timestamps
    end
  end
end
