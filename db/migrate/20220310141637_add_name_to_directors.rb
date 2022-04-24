class AddNameToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :name, :string
    add_column :directors, :photo, :string
    add_column :directors, :bio_short, :string
    add_column :directors, :bio_long, :string
    add_column :directors, :birth_year, :string
    add_column :directors, :death_year, :string
    add_column :directors, :bio_source, :string
    add_column :directors, :useful_links, :string, array: true, default: []
  end
end
