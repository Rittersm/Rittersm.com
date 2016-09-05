class ContactSerializer < ActiveModel::Serializer
  attributes :name, :email, :phone, :company, :message
end
