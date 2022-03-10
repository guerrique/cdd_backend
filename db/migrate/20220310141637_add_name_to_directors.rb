class AddNameToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :name, :string
  end
end
