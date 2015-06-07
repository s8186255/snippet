class Expo
  include Mongoid::Document
  field :name, type: String
  field :status, type: Boolean

  #relations
  #belongs_to
  belongs_to :organizer
  belongs_to :user
  #has_many
  has_many :cards
  #has_and_belongs_to_many
  has_and_belongs_to_many :card_types

  #config nested attributes
  accepts_nested_attributes_for :card_types

  #validates :phone, :real_name, :mobile, :scopes, presence: true
end

class CardType
  include Mongoid::Document
  field :name,type:String

  #relations
  #belongs_to

  #has_many


  #has_one
  #has_one :image,class: "Attachment::Image"
  #has_and_belongs_to_many
  #has_and_belongs_to_many :expos

  #config nested property


  # validates :phone, :real_name, :mobile, :scopes, presence: true
end


#说明；expo模型 单向使用，也就是expo，关心其下有多少card_types，但是card_type并不关心。可以单向使用
#Expo.first
#<Expo _id: 55694f8e61848ab827000002, name: "test", status: nil, organizer_id
#    : nil, user_id: nil, card_type_ids: [BSON::ObjectId('5569514d61848ab827000003')]

#CardType.first
#<CardType _id: 5569514d61848ab827000003, name: "test">