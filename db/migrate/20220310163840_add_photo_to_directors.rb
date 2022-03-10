class AddPhotoToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :photo, :string
    add_column :directors, :bio_short, :string
    add_column :directors, :bio_long, :string
    add_column :directors, :birth_year, :string
    add_column :directors, :death_year, :string
  end
end
