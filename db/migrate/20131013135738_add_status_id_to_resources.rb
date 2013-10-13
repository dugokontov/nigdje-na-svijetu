class AddStatusIdToResources < ActiveRecord::Migration
  def change
    add_column :resources, :status_id, :integer
  end
end
