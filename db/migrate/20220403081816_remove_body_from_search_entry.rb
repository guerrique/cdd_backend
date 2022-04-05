class RemoveBodyFromSearchEntry < ActiveRecord::Migration[5.2]
  def change
    remove_column :search_entries, :body
  end
end
