# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@suppliers = Supplier.create!(
  [
    {
      "name": "Leonardo Hotel Wolfsburg City Center",
      "image": "https://konvenator.miceportal.de/system/images/images/000/041/793/tp_list/ba1_2344.jpg",
      "street": "Stillhorner Weg 40, 21109 Hamburg, Deutschland",
      "rooms": 424,
      "conference_capacity": 9,
      "distance_airport": 28,
      "distance_train": 11,
      "distance_city": 10,
      "distance_highway": 0.5,
      "feedback": 4.8,
      "latitude": 53.479302,
      "longitude": 10.0224323
    },
    {
      "name": "Leonardo Royal Hotel Munich",
      "image": "https://konvenator.miceportal.de/system/images/images/000/131/911/tp_list/eingang_stillhorn_.jpg",
      "street": "Friedrichstr. 151, 10117 Berlin, Deutschland",
      "rooms": 132,
      "conference_capacity": 2,
      "distance_airport": 38,
      "distance_train": 1,
      "distance_city": 0.3,
      "distance_highway": 2.5,
      "feedback": 4.3,
      "latitude": 52.518452,
      "longitude": 13.386131
    },
    {
      "name": "Maritim Hotel am Schlossgarten Fulda",
      "image": "https://konvenator.miceportal.de/system/images/images/000/112/002/tp_list/bpa_149_aussenansicht-daemmerung.jpg",
      "street": "Konrad-Zuse-Platz 14, 81829 München, Deutschland",
      "rooms": 233,
      "conference_capacity": 5,
      "distance_airport": 18,
      "distance_train": 1.5,
      "distance_city": 1.3,
      "distance_highway": 1.5,
      "feedback": 3.5,
      "latitude": 48.1371393,
      "longitude": 11.68745
    },
    {
      "name": "Maritim Hotel Königswinter",
      "image": "https://konvenator.miceportal.de/system/images/images/000/110/583/tp_list/rc_lhmcs_01_okt16_web.jpg",
      "street": "Am Stadtgarten 1, 45879 Gelsenkirchen, Deutschland",
      "rooms": 555,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 3.9,
      "latitude": 51.509438,
      "longitude": 7.0851118
    },
    {
      "name": "INFINITY Hotel & Conference Resort Munich",
      "image": "https://konvenator.miceportal.de/system/images/images/000/131/779/tp_list/aussenansicht-tag-02-h4-hotel-muenchen-messe__500x332_.jpg",
      "street": "Pauluspromenade 2, 36037 Fulda, Deutschland",
      "rooms": 102,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 3.9,
      "latitude": 50.5560432,
      "longitude": 9.6726121
    },
    {
      "name": "Mövenpick Hotel Frankfurt City",
      "image": "https://konvenator.miceportal.de/system/images/images/000/057/004/gallery_big/frankfurt_city_xxx_i121609.jpg",
      "street": "Den Haager Str. 5, 60327 Frankfurt am Main, Deutschland",
      "rooms": 288,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 4.4,
      "latitude": 50.1097646,
      "longitude": 8.6488199
    },
    {
      "name": "Sofitel Frankfurt Opera",
      "image": "https://konvenator.miceportal.de/system/images/images/000/131/950/gallery_big/au_enansichtklein.jpg",
      "street": "Opernplatz 16, 60313 Frankfurt am Main",
      "rooms": 150,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 4.3,
      "latitude": 50.115962,
      "longitude": 8.6713739
    },
    {
      "name": "Steigenberger Airport Hotel",
      "image": "https://konvenator.miceportal.de/system/images/images/000/138/993/gallery_big/1.jpg",
      "street": "Unterschweinstiege 16, 60549 Frankfurt am Main",
      "rooms": 570,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 3.9,
      "latitude": 50.05851,
      "longitude": 8.587351
    },
    {
      "name": "Hotel Cult Frankfurt",
      "image": "https://konvenator.miceportal.de/system/images/images/000/010/289/gallery_big/ba1_191375.jpg",
      "street": "Offenbacher Landstr. 56, 60599 Frankfurt am Main, Deutschland",
      "rooms": 271,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 3.7,
      "latitude": 50.1020781,
      "longitude": 8.6956204
    },
    {
      "name": "INFINITY Hotel & Conference Resort Munich",
      "image": "https://konvenator.miceportal.de/system/images/images/000/026/961/gallery_big/ba1_13779_1.jpg",
      "street": "Flughafen / Terminal 1, Hugo-Eckener-Ring 15, 60549 Frankfurt am Main, Deutschland",
      "rooms": 102,
      "conference_capacity": 15,
      "distance_airport": 82,
      "distance_train": 4.5,
      "distance_city": 6.3,
      "distance_highway": 0.5,
      "feedback": 2.6,
      "latitude": 50.0519689,
      "longitude": 8.5704866
    }
  ]  
)
