class AddStatusToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :status, :boolean, :default => true
  end
end
