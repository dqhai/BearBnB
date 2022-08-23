class AddColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :title, :string
    add_column :pets, :address, :string
    add_column :pets, :details, :text
    add_reference :pets, :user, foreign_key: true
  end
end
