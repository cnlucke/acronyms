class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :fav
end
