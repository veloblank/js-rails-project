class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :date
  has_many :props
end
