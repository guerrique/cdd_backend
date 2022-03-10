class JoinTableDirectorDoc < ActiveRecord::Migration[5.2]
  def change
    create_join_table :directors, :docs do |t|
      t.index [:director_id, :doc_id], unique: true
      t.index [:doc_id, :director_id], unique: true
    end
  end
end
