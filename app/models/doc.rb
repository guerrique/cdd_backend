class Doc < ApplicationRecord
  has_and_belongs_to_many :directors
  serialize :useful_links, Array
  serialize :awards, Array

  def self.search(search)
    if search
      # self.where(name: search)
      self.where("name LIKE ?", "%" + search + "%")
    else
      Doc.all
    end
  end
end
