class AddColumnsToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :type, :string
    add_column :pets, :diet, :text
    add_column :pets, :lifestyle, :text
  end
end
