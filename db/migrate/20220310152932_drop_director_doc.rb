class DropDirectorDoc < ActiveRecord::Migration[5.2]
  def change
    drop_table :directors_docs
  end
end
