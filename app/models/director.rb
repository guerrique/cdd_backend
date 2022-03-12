class Director < ApplicationRecord
  has_and_belongs_to_many :docs


  # serialize :useful_links, Array
  serialize :useful_links, Array



end
