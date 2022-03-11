class AddSourceToDirectors < ActiveRecord::Migration[5.2]
  def change
    add_column :directors, :bio_source, :string
  end
end
