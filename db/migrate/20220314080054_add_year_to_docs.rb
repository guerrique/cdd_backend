class AddYearToDocs < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :chinese_name, :string
    add_column :docs, :year, :string
    add_column :docs, :duration, :string
    add_column :docs, :poster, :string
    add_column :docs, :doc_text_short, :string
    add_column :docs, :doc_text_long, :string
    add_column :docs, :awards, :string
    add_column :docs, :trailer_link, :string
    add_column :docs, :useful_links, :string
  end
end
