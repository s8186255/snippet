#callback 在模型层的使用；
#callback有model类，也有activerecord的，下面的是mongoid的；
#callback的种类
after_initialize
after_build
before_validation
after_validation
before_create
around_create
after_create
after_find
before_update
around_update
after_update
before_upsert
around_upsert
after_upsert
before_save
around_save
after_save
before_destroy
around_destroy
after_destroy

#Relation Callbacks
after_add
after_remove
before_add
before_remove

#二维码的生成
require 'rqrcode'
require 'rqrcode_png'
RQRCode::QRCode.new(id, size:6).to_img.resize(120,120).save(qrcode_img_file)
#size这个参数，与二维码的颗粒度有关；越大，越精细，需要占的面积越大，否则显示不清楚；


#生成随机字符串
def random_str(len)
  chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
  new_str = ""
  1.upto(len) { |i| new_str << chars[rand(chars.size-1)] }
  return new_str
end




