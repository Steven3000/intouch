# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


images = [
          "http://i40.tinypic.com/2q1ge9g.jpg",
          "http://i39.tinypic.com/29pqaf7.jpg",
          "http://i39.tinypic.com/fzclxd.jpg",
          "http://i44.tinypic.com/14cw3t2.jpg",
          "http://i53.tinypic.com/hwx4b7.jpg",
          ]


Song.destroy_all
Song.create ({
                :artist => "Mulatto Patriot",
                :title => "stop on by",
                :artwork => images[rand(0..4)],
                :features => "Neak, Primeridian",
                :producer => "Mulatto Patriot",
                :album => "Single",
                :download_link => "https://soundcloud.com/mulatto-patriot/stop-on-by-primeridian-neak",
                :embedded_code => "test",
                :itunes => "test",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })


Song.create ({
                :artist => "Kanye West",
                :title => "Homecoming",
                :artwork => images[rand(0..4)],
                :features => "Chris Martin",
                :producer => "Kanye West",
                :album => "Gradution",
                :download_link => "test",
                :embedded_code => "test",
                :itunes => "https://itunes.apple.com/us/album/homecoming-feat.-chris-martin/id291405869",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })


Song.create ({
                :artist => "kendrick Lamar",
                :title => "I",
                :artwork => images[rand(0..4)],
                :features => "test",
                :producer => "Rahki",
                :album => "test",
                :download_link => "test",
                :embedded_code => "test",
                :itunes => "https://itunes.apple.com/us/album/i-single/id921042833",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })


Song.create ({
                :artist => "Chance the Rapper",
                :title => "Juice",
                :artwork => images[rand(0..4)],
                :features => "test",
                :producer => "Nate Fox",
                :album => "Acid Rap",
                :download_link => "https://soundcloud.com/chancetherapper/juice",
                :embedded_code => "test",
                :itunes => "test",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })


Song.create ({
                :artist => "Common",
                :title => "the light",
                :artwork => images[rand(0..4)],
                :features => "Erykah Badu",
                :producer => "J dilla",
                :album => "Like water for chocolate",
                :download_link => "test",
                :embedded_code => "test",
                :itunes => "https://itunes.apple.com/us/album/like-water-for-chocolate/id64513",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })


Song.create ({
                :artist => "Mulatto Patriot",
                :title => "showtime",
                :artwork => images[rand(0..4)],
                :features => "Prosper Jones, Mena",
                :producer => "Mulatto Patriot",
                :album => "Sonic Visuals",
                :download_link => "test",
                :embedded_code => "test",
                :itunes => "https://itunes.apple.com/us/album/sonic-visuals/id292062424",
                :google => "test",
                :amazon => "test",
                :spotify => "test"
              })




Artist.destroy_all
Artist.create ({
                :name => "Mulatto Patriot",
                :picture => images[rand(0..4)],
                :website => "http://www.mptracks.com",
                :record_label => "independent",
              })


Artist.create ({
                :name => "Kendrick Lamar",
                :picture => images[rand(0..4)],
                :website => "http://www.kendricklamar.com",
                :record_label => "tde",
              })


Artist.create ({
                :name => "Kanye West",
                :picture => images[rand(0..4)],
                :website => "http://www.kanyewest.com",
                :record_label => "Def Jam",
              })


Artist.create ({
                :name => "Chance The Rapper",
                :picture => images[rand(0..4)],
                :website => "http://www.chanceraps.com",
                :record_label => "independent",
              })


Artist.create ({
                :name => "Common",
                :picture => images[rand(0..4)],
                :website => "http://www.mptracks.com",
                :record_label => "independent",
              })





