class Doc < ApplicationRecord
  has_and_belongs_to_many :directors
  serialize :useful_links, Array
  serialize :awards, Array
  include Searchable

  after_commit :create_search_entry, on: :create
  after_commit :update_search_entry, on: :update
  after_commit :destroy_search_entry, on: :destroy

  private

    def create_search_entry
      SearchEntry.create(title: self.name, searchable: self)
    end

    def update_search_entry
      self.search_entry.update(title: self.name) if self.search_entry.present?
    end

    def destroy_search_entry
      self.search_entry.destroy if self.search_entry.present?
    end
end
