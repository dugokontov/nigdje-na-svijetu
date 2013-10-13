class AddCssClassToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :css_class, :string
  end
end
