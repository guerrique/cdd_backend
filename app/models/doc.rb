class Doc < ApplicationRecord
  has_and_belongs_to_many :directors
  # no need with postgresql
  # serialize :useful_links, Array
  # serialize :awards, Array

  include PgSearch
  multisearchable against: :name

  # belongs_to :publisher, required: false
  # belongs_to :author
  # validates :title, presence: true
  # validates :isbn_13, presence: true, length: { is: 13 }, uniqueness: true

  def self.search(search)
    if search
      # self.where(name: search)
      self.where("name LIKE ?", "%" + search + "%")
    else
      Doc.all
    end
  end
end
