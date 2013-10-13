class RemoveStatusFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :status, :string
  end
end
