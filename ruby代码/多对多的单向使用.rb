class Band
  include Mongoid::Document
  embeds_many :albums #或者 has_many :albums，或者 has_and_belongs_to_many多对多关系；这个案例都适用
  belongs_to :producer
  accepts_nested_attributes_for :albums, :producer
end

band = Band.first
#getter写法
band.albums #可以获取albums这个属性的集合；

#setter写法：
band.producer_attributes = { name: "Flood" }
#上面语句的另外一种写法：这种写法，就可以完全按照 父模型，来创建属性，将这个子模型属性与其他属性，一视同仁。
band.attributes = { producer_attributes: { name: "Flood" }}
#如果是1：n，n:n，的关系；
band.albums_attributes=[{name:'box'}]
#也就是说应该是一个数组。

