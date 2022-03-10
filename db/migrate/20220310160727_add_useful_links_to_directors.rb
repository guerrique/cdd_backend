class AddUsefulLinksToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :useful_links, :string, array: true
  end
end
