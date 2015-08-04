class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  embed :ids
end
