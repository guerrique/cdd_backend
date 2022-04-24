class Director < ApplicationRecord
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_and_belongs_to_many :docs
  # serialize :useful_links, Array

  include PgSearch
  multisearchable against: :name

  def self.search(search)
    if search
      # self.where(name: search)
      self.where("name LIKE ?", "%" + search + "%")
    else
      Director.all
    end
  end
end
