class UsersDocumentsSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :document
end
