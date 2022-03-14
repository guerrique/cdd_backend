class Doc < ApplicationRecord
  has_and_belongs_to_many :directors
  serialize :useful_links, Array
  serialize :awards, Array
end
