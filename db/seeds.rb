
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
anna = Buyer.create!(username:"Anna", password: "asdfasdf", name: "Anna B", store: "Capitol", title: "Womens Designer", email: "anna@capitol.com", phone: "424-268-4641")

contemp = Category.create!(name: "Womens Contemporary")
ad_contemp = Category.create!(name: "Advanced Contemporary")
designer = Category.create!(name: "Designer")
activewear = Category.create!(name: "Activewear")

kk = Designer.create!(category: ad_contemp, username: "KKidd", password: "asdf", name: "KATHARINE KIDD", img: "https://i.postimg.cc/g28kLkr8/Screen-Shot-2020-08-31-at-2-26-37-PM.png", bio: "kk bio", instagram: "@katharinekidd", phone: "310-313-0993" )
ra = Designer.create!(category: ad_contemp, username: "Rachel", password: "asdf", name: "Rachel Antonoff", img: "https://i.postimg.cc/SR9m490B/Screen-Shot-2020-09-03-at-5-02-51-PM.png", bio: "ra bio", instagram: "@rachelantonoff", phone: "310-313-0993" )
gi = Designer.create!(category: ad_contemp, username: "Ganni", password: "asdf", name: "GANNI", img: "https://i.postimg.cc/P5HMbMN7/Screen-Shot-2020-09-03-at-4-22-10-PM.png", bio: "ra bio", instagram: "@ganni", phone: "310-313-0993" )
bt = Designer.create!(category: ad_contemp, username: "timo", password: "asdf", name: "byTiMo", img: "https://i.postimg.cc/7hvKFrYH/Screen-Shot-2020-09-03-at-4-32-50-PM.png", bio: "bt bio", instagram: "@bytimo", phone: "310-313-0993" )
sm = Designer.create!(category: activewear, username: "Stella", password: "asdf", name: "adidas by Stella McCartney", img: "https://i.postimg.cc/vbWY7Dmx/Screen-Shot-2020-08-31-at-2-31-07-PM.png", bio: "Stella bio", instagram: "@stellamccartney", phone: "310-388-8732" )

fav1 = FavoriteDesigner.create!(buyer: anna, designer: kk)
fav2 = FavoriteDesigner.create!(buyer: anna, designer: sm)

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


ireland = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "IRELAND G. DRESS", style_number: "D1-SS21-3303G", color: "EMERALD", size: "2 - 10", fabric: "100% CUPRO", wholesale: 205, retail: 475)
watts = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "WATTS G. TOP", style_number: "D1-SS21-6137G", color: "EMERALD", size: "2 - 10", fabric: "100% CUPRO", wholesale: 130, retail: 295)
victoria = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "VICTORIA M. SKIRT", style_number: "D1-SS21-285M", color: "MULTI-MESH", size: "2 - 10", fabric: "100% POLY", wholesale: 200, retail: 465)
geneva = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "GENEVA N. DRESS", style_number: "D1-SS21-3304N", color: "NAVY", size: "2 - 10", fabric: "100% POLY", wholesale: 215, retail: 495)
bonnie = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "BONNIE G. SKIRT", style_number: "D1-SS21-2105G", color: "EMERALD", size: "2 - 10", fabric: "100% CUPRO", wholesale: 150, retail: 345)
savannah = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SAVANNAH B. DRESS", style_number: "D1-SS21-3298T", color: "BEIGE", size: "2 - 10", fabric: "100% CUPRO", wholesale: 215, retail: 495)
paris = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "PARIS C.B. SKIRT", style_number: "D1-SS21-2113CB", color: "COLOR-BLOCK", size: "2 - 10", fabric: "100% POLY", wholesale: 195, retail: 450)
diana = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "DIANA C.B. TOP", style_number: "D1-SS21-6084CB", color: "COLOR-BLOCK", size: "XS - L", fabric: "100% POLY", wholesale: 110, retail: 250)
havana = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "HAVANA C.B. TOP", style_number: "D2-SS21-6141CB", color: "COLOR-BLOCK", size: "XS - L", fabric: "100% POLY", wholesale: 130, retail: 295)
brooklyn = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "BROOKLYN TOP", style_number: "D1-SS21-6139", color: "WHITE FLORAL", size: "XS - L", fabric: "100% POLY", wholesale: 130, retail: 295)
genevaW = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "GENEVA W. DRESS", style_number: "D1-SS21-3304W", color: "WHITE FLORAL", size: "2 - 10", fabric: "100% POLY", wholesale: 215, retail: 495)
wattsF = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "WATTS F. TOP", style_number: "D1-SS21-6137F", color: "FARM PRINT", size: "2 - 10", fabric: "100% COTTON", wholesale: 160, retail: 365)
savannahF = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SAVANNAH F. DRESS", style_number: "D1-SS21- 3298F", color: "FARM PRINT", size: "2 - 10", fabric: "100% COTTON", wholesale: 215, retail: 495)
sara = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SARA F. SKIRT", style_number: "D1-SS21-2106F", color: "FARM PRINT", size: "XS - L", fabric: "100% COTTON", wholesale: 160, retail: 365)
wattsS = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "WATTS S. TOP", style_number: "D2-SS21-6137S", color: "RED STRIPE", size: "2 - 10", fabric: "100% COTTON", wholesale: 120, retail: 275)
sienna = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SIENNA S. DRESS", style_number: "D2-SS21-3306S", color: "RED STRIPE", size: "XS - L", fabric: "100% COTTON", wholesale: 195, retail: 450)

parrisS = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "PARIS S. SKIRT", style_number: "D2-SS21-2113S", color: "RED STRIPE", size: "2 - 10", fabric: "100% COTTON", wholesale: 150, retail: 350)
maggie = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "MAGGIE MAE TOP", style_number: "D2-SS21-6130", color: "WHITE & RED", size: "XS - L", fabric: "100% COTTON", wholesale: 130, retail: 295)
irelandW = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "IRELAND W. DRESS", style_number: "D2-SS21-3303W", color: "WHITE & YELLOW", size: "2 - 10", fabric: "100% CUPRO", wholesale: 205, retail: 475)
siennaB = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SIENNA B. DRESS", style_number: "D2-SS21-3306B", color: "BABY BLUE", size: "XS - L", fabric: "59% POLY 41% COTTON", wholesale: 215, retail: 495)
jude = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "JUDE C. TOP", style_number: "D2-SS21-454", color: "CACTUS PRINT", size: "XS - L", fabric: "100% COTTON", wholesale: 150, retail: 395)
rio = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "RIO DRESS", style_number: "D2-SS21-3258S", color: "CACTUS PRINT", size: "2 - 10", fabric: "100% COTTON", wholesale: 195, retail: 450)
# saraC = Style.create!(collection: ss21, delivery: d1, style_category: sc2, upc: 123, style_name: "SARA C. SKIRT", style_number: "D2-SS21- 2106C", color: "CACTUS PRINT", size: "XS - L", fabric: "100% COTTON", wholesale: 160, retail: 365)


img1 = Image.create!(style: ireland, img:"https://i.postimg.cc/2r8J0W5T/kk20200819-1573.jpg")
img2 = Image.create!(style: watts, img:"https://i.postimg.cc/fzxdS5SK/kk20200819-2295.jpg")
img3 = Image.create!(style: victoria, img:"https://i.postimg.cc/MqkWFx4v/kk20200819-2255.jpg")
img4 = Image.create!(style: geneva, img:"https://i.postimg.cc/dvYHHx6J/kk20200819-1120.jpg")
img5 = Image.create!(style: bonnie, img:"https://i.postimg.cc/tq0T8C3T/kk20200819-1691.jpg")
img6 = Image.create!(style: savannah, img:"https://i.postimg.cc/4fMrWmVL/kk20200819-1225.jpg")
img7 = Image.create!(style: paris, img:"https://i.postimg.cc/KGKW3xwn/kk20200819-2178.jpg")
img8 = Image.create!(style: diana, img:"https://i.postimg.cc/cxMnm8pZ/kk20200819-2121.jpg")
img9 = Image.create!(style: havana, img:"https://i.postimg.cc/sV8M446t/kk20200819-2220.jpg")
img10 = Image.create!(style: brooklyn, img:"https://i.postimg.cc/mRp5NzB7/kk20200819-1910.jpg")
img11 = Image.create!(style: genevaW, img:"https://i.postimg.cc/J8P6MDyS/kk20200819-1078.jpg")
img12 = Image.create!(style: wattsF, img:"https://i.postimg.cc/GrN13S80/kk20200819-2569.jpg")
img13 = Image.create!(style: savannahF, img:"https://i.postimg.cc/QjvBpqnv/kk20200819-1188.jpg")
img14 = Image.create!(style: sara, img:"https://i.postimg.cc/hS99vwP2/kk20200819-1962.jpg")
img15 = Image.create!(style: wattsS, img:"https://i.postimg.cc/qrw1Gh4j/kk20200819-2322.jpg")
img16 = Image.create!(style: sienna, img:"https://i.postimg.cc/SQ0R9QT8/kk20200819-1006.jpg")

img17 = Image.create!(style: parrisS, img:"https://i.postimg.cc/t98Kp1Yh/kk20200819-2419.jpg")
img18 = Image.create!(style: maggie, img:"https://i.postimg.cc/fwh88YVg/kk20200819-2539.jpg")
img19 = Image.create!(style: irelandW, img:"https://i.postimg.cc/np985YLH/kk20200819-1506.jpg")
img20 = Image.create!(style: siennaB, img:"https://i.postimg.cc/9cpjtXMT/kk20200819-1369.jpg")
img21 = Image.create!(style: jude, img:"https://i.postimg.cc/ZbYnFD4Y/kk20200819-2896.jpg")
img22 = Image.create!(style: rio, img:"https://i.postimg.cc/0xxFZRT0/kk20200819-1638.jpg")
# img23 = Image.create!(style: saraC, img:"https://i.postimg.cc/Vm99Yv43/kk20200819-2044.jpg")

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