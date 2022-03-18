class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :useful_links, :photo, :bio_short, :bio_long, :bio_source
  # attributes :id, :name, :useful_links, :photo, :bio_short, :bio_long, :bio_source, :docs

  has_many :docs
end
