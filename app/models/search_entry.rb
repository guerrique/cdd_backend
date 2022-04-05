class SearchEntry < ApplicationRecord
  # belongs_to :searchable, polymorphic: true
  delegated_type :searchable, types: %w[ Director Doc ]

  validates :searchable_type, uniqueness: { scope: :searchable_id }
end
