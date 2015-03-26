User.destroy_all
user_info = [
{
  :email => "a@a.com",
  :password => "12121212"
},
{
  :email => "b@b.com",
  :password => "12121212"
},
{
  :email => "c@c.com",
  :password => "12121212"
}
]

user_info.each do |user|
  u = User.new
  u.email = user[:email]
  u.password = user[:password]
  u.save
end


Artist.destroy_all
a1 = Artist.create ({
                :name => "Mulatto Patriot",
                :website => "http://www.mptracks.com",
                :record_label => "independent",
              })

a2 = Artist.create ({
                :name => "Kendrick Lamar",
                :website => "http://www.kendricklamar.com",
                :record_label => "TDE",
              })

a3 = Artist.create ({
                :name => "Kanye West",
                :website => "http://www.kanyewest.com",
                :record_label => "Def Jam",
              })

a4 = Artist.create ({
                :name => "Chance The Rapper",
                :website => "http://www.chanceraps.com",
                :record_label => "Independent",
              })

a12 = Artist.create ({
                :name => "Action Bronson",
                :website => "http://www.actionbronson.com",
                :record_label => "Vice Records",
              })

a17 = Artist.create ({
                :name => "D\'Angelo",
                :website => "",
                :record_label => "EMI, Virgin, J, RCA",
              })

a19 = Artist.create ({
                :name => "Andre 3000",
                :website => "",
                :record_label => "Epic",
              })

a20 = Artist.create ({
                :name => "Frank Ocean",
                :website => "",
                :record_label => "Odd Future Records, Def Jam, Island",
              })

a21 = Artist.create ({
                :name => "Lauryn Hill",
                :website => "",
                :record_label => "Columbia Ruffhouse",
              })

a22 = Artist.create ({
                :name => "Daft Punk",
                :website => "",
                :record_label => "Soma, Virgin, Walt Disney, Columbia",
              })

Song.destroy_all
Song.create ({
                :artist => a1,
                :title => "stop on by",
                :features => "Neak, Primeridian",
                :producer => "Mulatto Patriot",
                :album_title => "Single",
                :download_link => "https://soundcloud.com/mulatto-patriot/stop-on-by-primeridian-neak",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/141553411&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/12/20}",
                :youtube => ''
              })

Song.create ({
                :artist => a2,
                :title => "I",
                :features => "",
                :producer => "Rahki",
                :album_title => "",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/i-single/id921042833",
                :google => "https://play.google.com/store/music/artist/Kendrick_Lamar?id=Ag6icjgrnuaumrdrubtg5nr2xki&hl=en",
                :amazon => "http://www.amazon.com/gp/product/B00NT9TTN8/ref=dm_ws_ap_tlw_trk2",
                :spotify => "https://play.spotify.com/album/51C65YqHrDODM1hD5FEL5x",
                :release_date => "{2014/9/23}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/8aShfolR6w8?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a4,
                :title => "Juice",
                :features => "",
                :producer => "Nate Fox",
                :album_title => "Acid Rap",
                :download_link => "https://soundcloud.com/chancetherapper/juice",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243754&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2013/4/30}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/h8nIHZ-0kS4?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a1,
                :title => "SoundCatcher",
                :features => "Pugs Atomz, Neak",
                :producer => "Mulatto Patriot",
                :album_title => "Single",
                :download_link => "http://mulattopatriot.bandcamp.com/track/soundcatcher-feat-pugs-atomz-neak",
                :embedded_code => '<iframe style="border: 0; width: 100%; height: 42px;" src="http://bandcamp.com/EmbeddedPlayer/album=1973410984/size=small/bgcol=ffffff/linkcol=0687f5/track=4116145876/transparent=true/" seamless><a href="http://mulattopatriot.bandcamp.com/album/the-promise-the-new-deal">The Promise &quot;The New Deal&quot; by The Promise (Squair Blaq &amp; Mulatto Patriot)</a></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2012/2/13}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/li_IsOlb8VY?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a3,
                :title => "Bound 2",
                :features => "",
                :producer => "Kanye West",
                :album_title => "Yeezus",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/yeezus/id662392801",
                :google => "https://play.google.com/store/music/album/Kanye_West_Yeezus?id=By5ojxdslc5zdiuflz25kgytgoi&hl=en",
                :amazon => "http://www.amazon.com/Bound-2-Explicit/dp/B00DF0PS9K",
                :spotify => "https://play.spotify.com/album/0XTAmejG8F97wF5MWoVbaY",
                :release_date => "{2013/8/28}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/BBAtAM7vtgc?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a1,
                :title => "Funky Junkie",
                :features => "Psalm One",
                :producer => "Mulatto Patriot",
                :album_title => "Single",
                :download_link => "https://soundcloud.com/mulatto-patriot/mulatto-patriot-primeridians",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/129683095&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/1/15}",
                :youtube => ''
              })

Song.create ({
                :artist => a4,
                :title => "Coco Butter Kisses",
                :features => "Vic Mensa, Twista",
                :producer => "Peter Cottontale",
                :album_title => "Acid Rap",
                :download_link => "https://soundcloud.com/chancetherapper/cocoa-butter-kisses-ft-vic",
                :embedded_code => %^<iframe width="100%" height="450" scrolling='no' frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243752&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>^,
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2013/4/30}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/TErySTMbFlk?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a2,
                :title => "The Blacker The Berry",
                :features => "",
                :producer => "Boi-1da",
                :album_title => "",
                :download_link => "https://www.youtube.com/watch?v=6AhXSoKa8xw",
                :embedded_code => "",
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2015/2/9}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/6AhXSoKa8xw?rel=0" frameborder="0" allowfullscreen></iframe>'
            })

Song.create ({
                :artist => a3,
                :title => "Only One",
                :features => "Paul McCartney",
                :producer => "",
                :album_title => "",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/only-one-feat.-paul-mccartney/id955053780",
                :google => "",
                :amazon => "http://www.amazon.com/Only-One-feat-Paul-McCartney/dp/B00RW7UZO0",
                :spotify => "",
                :release_date => "{2014/12/31}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/WibQR0tQ0P8?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a4,
                :title => "Lady Friend",
                :features => "The Social Experiment",
                :producer => "The Social Experiment",
                :album_title => "",
                :download_link => "https://soundcloud.com/chancetherapper/chance-the-rapper-the-social-experiment-lady-friend",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/191163281&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2015/2/14}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/h8nIHZ-0kS4?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a4,
                :title => "No Better Blues",
                :features => "The Social Experiment",
                :producer => "The Social Experiment",
                :album_title => "",
                :download_link => "https://soundcloud.com/chancetherapper/chance-the-rapper-the-social-experiment-know-betta-blues",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/172307425&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/10/16}",
                :youtube => ''
              })

Song.create ({
                :artist => a19,
                :title => "Hey Ya",
                :features => "OutKast",
                :producer => "",
                :album_title => "The Love Below",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/speakerboxxx-the-love-below/id281430653",
                :google => "",
                :amazon => "http://www.amazon.com/Speakerboxxx-Love-Below-Explicit-OutKast/dp/B001414XS4/ref=tmm_msc_swatch_0?_encoding=UTF8&sr=&qid=",
                :spotify => "https://play.spotify.com/album/00XMrHZoOsYLmiyx890axX",
                :release_date => "{2003/9/23}",
                :youtube => '<iframe width="640" height="480" src="https://www.youtube.com/embed/PWgvGjAhvIw?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a20,
                :title => "Lost",
                :features => "",
                :producer => "Malay",
                :album_title => "Channel Orange",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/channel-orange/id541953504",
                :google => "https://play.google.com/store/music/album/Frank_Ocean_channel_ORANGE_Explicit_Version?id=Bw23texekzoug3kqxdektrrdyj4&hl=en",
                :amazon => "http://www.amazon.com/Speakerboxxx-Love-Below-Explicit-OutKast/dp/B001414XS4/ref=tmm_msc_swatch_0?_encoding=UTF8&sr=&qid=",
                :spotify => "https://play.spotify.com/album/623Ef2ZEB3Njklix4PC0Rs",
                :release_date => "{2012/12/17}",
                :youtube => '<iframe src="https://player.vimeo.com/video/63896903?title=0&byline=0&portrait=0" width="500" height="198" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/63896903">frank ocean [lost]</a> from <a href="https://vimeo.com/frankocean">christopher francis ocean</a> on <a href="https://vimeo.com">Vimeo</a>.</p>'
              })

Song.create ({
                :artist => a21,
                :title => "Consumerism",
                :features => "",
                :producer => "",
                :album_title => "",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/consumerism-single/id719012403",
                :google => "",
                :amazon => "",
                :spotify => "https://play.spotify.com/album/4RwFZ9Gm5HB8sKi2GY54Gp",
                :release_date => "{2013/10/4}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/mFPhKf_dg7g?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a17,
                :title => "Sugah Daddy",
                :features => "",
                :producer => "",
                :album_title => "",
                :download_link => "",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/181260617&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "https://itunes.apple.com/us/album/black-messiah/id950764300",
                :google => "",
                :amazon => "",
                :spotify => "https://play.spotify.com/album/5Hfbag0SsHxafx1SySFSX6",
                :release_date => "{2014/12/15}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/vo3RAH0zLlU?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a22,
                :title => "Computerized",
                :features => "Jay-Z",
                :producer => "",
                :album_title => "",
                :download_link => "http://www.mediafire.com/download/ll2r4gmqlyacljg/Daft+Punk+%26+Jay-z+-+Computerized.mp3",
                :embedded_code => '',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/3/10}",
                :youtube => '<iframe width="640" height="480" src="https://www.youtube.com/embed/EBYITSFsjvU?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a3,
                :title => "All Day",
                :features => "Allan Kingdom & Theophilus London",
                :producer => "",
                :album_title => "So Help Me God",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/all-day-feat.-theophilus-london/id972815455",
                :google => "https://play.google.com/store/music/album/Kanye_West_All_Day?id=Bok2mgdce7hjbvpmlzfoanjnb7i&hl=en",
                :amazon => "http://www.amazon.com/All-Day-Explicit-Kanye-West/dp/B00U6P6CW4",
                :spotify => "https://play.spotify.com/user/cmount/playlist/0uFxjmYfjEXObrgiKmoavw",
                :release_date => "{2015/3/2}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/_ABk7TmjnVk?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a3,
                :title => "Awsome",
                :features => "",
                :producer => "",
                :album_title => "So Help Me God",
                :download_link => "",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/195458522&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2015/3/2}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/xz-QrOo1UBE?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a2,
                :title => "Wesley\'s Theory",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })


Song.create ({
                :artist => a2,
                :title => "For Free\? (Interlude)",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "King Kunta",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Institutionalized",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "These Walls",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "u",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Alright",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "For Sale\? (Interlude)",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Momma",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Hood Politics",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "How Much A Dollar Cost",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Complexion (A Zulu Love)",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "The Blacker The Berry",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/2/9}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/6AhXSoKa8xw?rel=0" frameborder="0" allowfullscreen></iframe>'
            })

Song.create ({
                :artist => a2,
                :title => "You Ain\'t Gotta Lie (Momma Said)",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "I",
                :features => "",
                :producer => "Dr\. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a2,
                :title => "Mortal Man",
                :features => "",
                :producer => "Dr. Dre",
                :album_title => "To Pimp a Butterfly",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en",
                :amazon => "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0",
                :spotify => "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",
                :release_date => "{2015/3/16}",
                :youtube => ''
            })

Song.create ({
                :artist => a12,
                :title => "Terry",
                :features => "",
                :producer => "Alchemist",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/191489281&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "",
                :amazon => "",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/2/16}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/6PGSOe2Iok0?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a12,
                :title => "Baby Blue",
                :features => "Chance the Rapper",
                :producer => "Mark Ronson",
                :album_title => "Mr Wonderful",
                :download_link => "https://soundcloud.com/actionbronson/baby-blue-ft-chance-the-rapper",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/193829854&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "",
                :amazon => "",
                :spotify => "https://play.spotify.com/album/7Mh9OsANvltL7YJ438LejB",
                :release_date => "{2015/3/2}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/bVP_w1rQweE?rel=0" frameborder="0" allowfullscreen></iframe>'
              })

Song.create ({
                :artist => a12,
                :title => "Actin Crazy",
                :features => "",
                :producer => "40 & Omen",
                :album_title => "Mr. Wonderful",
                :download_link => "https://soundcloud.com/actionbronson/action-bronson-actin-crazy",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/184964202&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "https://itunes.apple.com/us/album/actin-crazy-single/id956323924",
                :google => "https://play.google.com/store/music/album?id=B3j5khyzx6vxjcxhgfemc4smbwi&tid=song-Truqnbckmybtnpziogvtu2b3hqi&hl=en",
                :amazon => "http://www.amazon.com/Actin-Crazy-Explicit-Action-Bronson/dp/B00RYGX0B4",
                :spotify => "https://play.spotify.com/album/5bxjy0F0a8yCONYvEOuWg0",
                :release_date => "{2015/1/7}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/debIyWS6Byc?rel=0" frameborder="0" allowfullscreen></iframe>'
            })

Song.create ({
                :artist => a12,
                :title => "The Rising",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })


Song.create ({
                :artist => a12,
                :title => "Falconry",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "THUG LOVE STORY 2017 THE MUSICAL (interlude)",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "City Boy Blues",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "A Light In The Addict ",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "Baby Blue",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "Only In America",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "Galactic Love",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "The Passage (Live From Prague)",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => ''
              })

Song.create ({
                :artist => a12,
                :title => "Easy Rider",
                :features => "",
                :producer => "",
                :album_title => "Mr Wonderful",
                :download_link => "",
                :embedded_code => '',
                :itunes => "https://itunes.apple.com/us/album/mr.-wonderful/id965629356",
                :google => "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en",
                :amazon => "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4",
                :spotify => "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",
                :release_date => "{2015/3/23}",
                :youtube => '<iframe width="853" height="480" src="https://www.youtube.com/embed/58RSC7HO9aU?rel=0" frameborder="0" allowfullscreen></iframe>'
              })
