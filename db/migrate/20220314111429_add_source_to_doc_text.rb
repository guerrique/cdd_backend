class AddSourceToDocText < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :doc_text_source, :string
  end
end
