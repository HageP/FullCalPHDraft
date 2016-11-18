class AddResourceIdColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :resourceId, :integer
  end
end
