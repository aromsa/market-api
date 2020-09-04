
Buyer.destroy_all
Category.destroy_all
Designer.destroy_all
FavoriteDesigner.destroy_all
Season.destroy_all
Collection.destroy_all
Delivery.destroy_all
StyleCategory.destroy_all
Style.destroy_all
Image.destroy_all


madison = Buyer.create!(username:"Madison", password: "asdf", name: "Madison Sharr", store: "Selfridges", title: "Womens Advanced Contemporary Buyer", email: "madison@selfridges.com", phone: "+44 (0)207 160 6222")
maggie = Buyer.create!(username:"Maggie", password: "asdf", name: "Maggie Masia", store: "Capitol", title: "Womens Designer", email: "maggie@capitol.com", phone: "424-268-4641")

contemp = Category.create!(name: "Womens Contemporary")
ad_contemp = Category.create!(name: "Advanced Contemporary")
designer = Category.create!(name: "Designer")
activewear = Category.create!(name: "Activewear")

kk = Designer.create!(category: ad_contemp, username: "KKidd", password: "asdf", name: "KATHARINE KIDD", img: "https://i.postimg.cc/g28kLkr8/Screen-Shot-2020-08-31-at-2-26-37-PM.png", bio: "kk bio", instagram: "@katharinekidd", phone: "310-313-0993" )
ra = Designer.create!(category: ad_contemp, username: "Rachel", password: "asdf", name: "Rachel Antonoff", img: "https://i.postimg.cc/SR9m490B/Screen-Shot-2020-09-03-at-5-02-51-PM.png", bio: "ra bio", instagram: "@rachelantonoff", phone: "310-313-0993" )
gi = Designer.create!(category: ad_contemp, username: "Ganni", password: "asdf", name: "GANNI", img: "https://i.postimg.cc/P5HMbMN7/Screen-Shot-2020-09-03-at-4-22-10-PM.png", bio: "ra bio", instagram: "@ganni", phone: "310-313-0993" )
bt = Designer.create!(category: ad_contemp, username: "timo", password: "asdf", name: "byTiMo", img: "https://i.postimg.cc/7hvKFrYH/Screen-Shot-2020-09-03-at-4-32-50-PM.png", bio: "bt bio", instagram: "@bytimo", phone: "310-313-0993" )
sm = Designer.create!(category: activewear, username: "Stella", password: "asdf", name: "adidas by Stella McCartney", img: "https://i.postimg.cc/vbWY7Dmx/Screen-Shot-2020-08-31-at-2-31-07-PM.png", bio: "Stella bio", instagram: "@stellamccartney", phone: "310-388-8732" )

fav1 = FavoriteDesigner.create!(buyer: maggie, designer: kk)
fav2 = FavoriteDesigner.create!(buyer: maggie, designer: sm)

s1 = Season.create!(name: "Spring/Summer 2021")

ss21 = Collection.create!(designer: kk, season: s1, name: "collection name", inspo: "collection inspo" )

d1 = Delivery.create!(start: "d1 start date" , end: "d1 end date")
d2 = Delivery.create!(start: "d2 start date" , end: "d2 end date")
d3 = Delivery.create!(start: "d3 start date" , end: "d3 end date")
d4 = Delivery.create!(start: "d4 start date" , end: "d4 end date")

sc1 = StyleCategory.create!(name: "Top")
sc2 = StyleCategory.create!(name: "Dress")
sc3 = StyleCategory.create!(name: "Sweater")
sc4 = StyleCategory.create!(name: "Jumpsuit")
sc5 = StyleCategory.create!(name: "Jacket")


style1 = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "TAI DRESS", style_number: "D1-AW20-3296N", color: "NAVY PLAID VOILE", size: "2 - 10", fabric: "52% POLY 48% CO", wholesale: 300, retail: 695)
style2 = Style.create!(collection: ss21, delivery: d2, style_category: sc3, upc: 123, style_name: "MEG SWEATER", style_number: "D1-AW20-8104", color: "MUSTARD / NAVY / RED", size: "XS - L", fabric: "50% CASHMERE 50% VIRGIN WOOL", wholesale: 300, retail: 695)
style3 = Style.create!(collection: ss21, delivery: d3, style_category: sc4, upc: 123, style_name: "AMBER JUMPSUIT", style_number: "D1-AW20-3299", color: "NAVY PLAID VOILE", size: "2 - 10", fabric: "52% POLY 48% CO", wholesale: 300, retail: 695)
style4 = Style.create!(collection: ss21, delivery: d4, style_category: sc5, upc: 123, style_name: "MADI JACKET", style_number: "D1-AW20-471", color: "MIXED DENIM", size: "XS - L", fabric: "74% CO 24% PA 2% EA", wholesale: 160, retail: 365)

img1 = Image.create!(style: style4, img:"https://i.postimg.cc/wTc7WGzh/Screen-Shot-2020-08-27-at-1-55-56-PM.png")
img2 = Image.create!(style: style3, img:"https://i.postimg.cc/jSDCsdNh/Screen-Shot-2020-08-27-at-1-55-48-PM.png")
img3 = Image.create!(style: style2, img:"https://i.postimg.cc/DwQffJ0L/Screen-Shot-2020-08-27-at-1-55-37-PM.png")
img4 = Image.create!(style: style1, img:"https://i.postimg.cc/HkKGgT4X/Screen-Shot-2020-08-27-at-1-55-27-PM.png")


# {
#   "Version":"2012-10-17",
#   "Statement":[
#     {
#       "Sid":"AddCannedAcl",
#       "Effect":"Allow",
#       "Principal": {
#         "AWS": ["arn:aws:iam::658597774436:user/file-upload-master"},
#       "Action": "s3:*",
#       "Resource": [
#         "arn:aws:s3:::market-app-dev",
#         "arn:aws:s3:::market-app-dev/*"
#         ]
#     }
#   ]
# }