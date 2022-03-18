class DocSerializer < ActiveModel::Serializer
  attributes :id, :name, :chinese_name, :year, :duration, :poster, :doc_text_short, :doc_text_long, :doc_text_source, :awards, :trailer_link, :useful_links
  # attributes :id, :name, :chinese_name, :year, :duration, :poster, :doc_text_short, :doc_text_long, :doc_text_source, :awards, :trailer_link, :useful_links, :directors
  has_many :directors
end


