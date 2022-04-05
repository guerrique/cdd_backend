class CreateSearchEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :search_entries do |t|
      t.string :title
      t.text :body
      t.references :searchable, polymorphic: true

      t.timestamps
    end
  end
end
