
Artist.destroy_all
a1 = Artist.create ({
                :name => "Mulatto Patriot",
                :picture => ,
                :website => "http://www.mptracks.com",
                :record_label => "independent",
              })


a2 = Artist.create ({
                :name => "Kendrick Lamar",
                :picture => ,
                :website => "http://www.kendricklamar.com",
                :record_label => "tde",
              })


a3 = Artist.create ({
                :name => "Kanye West",
                :picture => ,
                :website => "http://www.kanyewest.com",
                :record_label => "Def Jam",
              })


a4 = Artist.create ({
                :name => "Chance The Rapper",
                :picture => ,
                :website => "http://www.chanceraps.com",
                :record_label => "independent",
              })


a5 = Artist.create ({
                :name => "Madlib",
                :picture => ,
                :website => "http://www.stonesthrow.com/madlib",
                :record_label => "Stones Throw",
              })


a6 = Artist.create ({
                :name => "J Cole",
                :picture => ,
                :website => "http://www.jcolemusic.com",
                :record_label => "Columbia",
              })


a7 = Artist.create ({
                :name => "The Roots",
                :picture => ,
                :website => "http://www.theroots.com",
                :record_label => "MCA",
              })


a8 = Artist.create ({
                :name => "Drake",
                :picture => ,
                :website => "http://www.drizzydrake.org/",
                :record_label => "Universal Motown",
              })


a9 = Artist.create ({
                :name => "Jay-z",
                :picture => ,
                :website => "http://lifeandtimes.com/",
                :record_label => "Def Jam",
              })


a10 = Artist.create ({
                :name => "Nas",
                :picture => ,
                :website => "http://www.nasirjones.com",
                :record_label => "Columbia",
              })

a11 = Artist.create ({
                :name => "Prince",
                :picture => ,
                :website => "http://store.artofficialage.com",
                :record_label => "Warner Bros",
              })


a12 = Artist.create ({
                :name => "Action Bronson",
                :picture => ,
                :website => "http://www.actionbronson.com",
                :record_label => "Vice Records",
              })


a13 = Artist.create ({
                :name => "Add-2",
                :picture => ,
                :website => "http://add2music.com/",
                :record_label => "Jamala",
              })


a14 = Artist.create ({
                :name => "Erykah Badu",
                :picture => ,
                :website => "http://erykah-badu.com/",
                :record_label => "Motown",
              })

a15 = Artist.create ({
                :name => "Adele",
                :picture => ,
                :website => "http://www.adele.tv",
                :record_label => "Columbia",
              })

a16 = Artist.create ({
                :name => "Common",
                :picture => ,
                :website => "http://www.thinkcommon.com/",
                :record_label => "Columbia",
              })

Song.destroy_all
Song.create ({
                :artist => a1,
                :title => "stop on by",
                :artwork => ,
                :features => "Neak, Primeridian",
                :producer => "Mulatto Patriot",
                :album => "Single",
                :download_link => "https://soundcloud.com/mulatto-patriot/stop-on-by-primeridian-neak",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/141553411&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/12/20}"
              })


Song.create ({
                :artist => a3,
                :title => "Homecoming",
                :artwork => ,
                :features => "Chris Martin",
                :producer => "Kanye West",
                :album => "Gradution",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/homecoming-feat.-chris-martin/id291405869",
                :google => "https://play.google.com/store/music/album/Kanye_West_Homecoming?id=Bghfkk3rx6itki67pdepenqlqc4&hl=en",
                :amazon => "http://www.amazon.com/Homecoming-Edited-Version-Kanye-West/dp/B001GEJFI2",
                :spotify => "https://play.spotify.com/album/3SZr5Pco2oqKFORCP3WNj9",
                :release_date => "{2008/2/18}"
              })


Song.create ({
                :artist => a2,
                :title => "I",
                :artwork => ,
                :features => "",
                :producer => "Rahki",
                :album => "",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/i-single/id921042833",
                :google => "https://play.google.com/store/music/artist/Kendrick_Lamar?id=Ag6icjgrnuaumrdrubtg5nr2xki&hl=en",
                :amazon => "http://www.amazon.com/gp/product/B00NT9TTN8/ref=dm_ws_ap_tlw_trk2",
                :spotify => "https://play.spotify.com/album/51C65YqHrDODM1hD5FEL5x",
                :release_date => "{2014/9/23}"
              })


Song.create ({
                :artist => a4,
                :title => "Juice",
                :artwork => ,
                :features => "",
                :producer => "Nate Fox",
                :album => "Acid Rap",
                :download_link => "https://soundcloud.com/chancetherapper/juice",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243754&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/12/20}"
              })


Song.create ({
                :artist => a16,
                :title => "the light",
                :artwork => ,
                :features => "Erykah Badu",
                :producer => "J dilla",
                :album => "Like water for chocolate",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/like-water-for-chocolate/id64513",
                :google => "https://play.google.com/store/music/album?id=Bwi7wwz2zincubrfpwnge3kvy6q&tid=song-T2yy3ijyz6fiy6aaqnjkks5ynai",
                :amazon => "http://www.amazon.com/The-Light/dp/B000WLH9RO",
                :spotify => "https://play.spotify.com/album/0ZSwTSaR9VUe3uYsXNQgub",
                :release_date => "{2013/4/30}"
              })


Song.create ({
                :artist => a14,
                :title => "On and On",
                :artwork => ,
                :features => " ",
                :producer => "Bob Power, JaBorn Jamal",
                :album => "Baduizm",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/baduizm/id5242612",
                :google => "https://play.google.com/store/music/album?id=Bu42a7fvootwrndhgoqcswlukii&tid=song-To2px2hqledlur5g5vtu5xcdpni&hl=en",
                :amazon => "http://www.amazon.com/dp/B001NTI9JG/ref=dm_ws_tlw_trk2",
                :spotify => "https://play.spotify.com/album/3qr4pTBWEU1SVf01j6RAx3",
                :release_date => "{1996/12/1}"
              })

Song.create ({
                :artist => a5,
                :title => "Thuggin",
                :artwork => ,
                :features => "Freddie Gibbs",
                :producer => "Madlib",
                :album => "Thuggin EP",
                :download_link => "http://www.stonesthrow.com/store/ep/freddiegibbsmadlib/thuggin-ep",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/thuggin-ep/id488926783",
                :google => "https://play.google.com/store/music/album/Freddie_Gibbs_Madlib_Thuggin_EP?id=Bbiwfp5fmdho2ra7bbphwrxw24q&hl=en",
                :amazon => "http://www.amazon.com/dp/B006ONXKUY/ref=dm_ws_tlw_trk1",
                :spotify => "https://play.spotify.com/album/4xtxrhVKVsRmFvK12UGT5T",
                :release_date => "{2011/11/21}"
              })

Song.create ({
                :artist => a15,
                :title => "Sky Fall",
                :artwork => ,
                :features => "",
                :producer => "Paul Epworth",
                :album => "Single",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/skyfall-single/id566322358",
                :google => "https://play.google.com/store/music/album/Adele_Skyfall?id=B6uznq2qt7fnmkjrnhfvncou54e&hl=en",
                :amazon => "http://www.amazon.com/Skyfall-Adele/dp/B009KUANWG/ref=tmm_msc_swatch_0?_encoding=UTF8&sr=&qid=",
                :spotify => "https://play.spotify.com/album/6TwN6Lq9glwnG8kNp6chHY",
                :release_date => "{2012/10/5}"
              })

Song.create ({
                :artist => a9,
                :title => "Tom Ford",
                :artwork => ,
                :features => "",
                :producer => "Timbaland",
                :album => "Magna Carta Holy Grail",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/sonic-visuals/id292062424",
                :google => "https://play.google.com/store/music/album/JAY_Z_Magna_Carta_Holy_Grail?id=Bjztr4ew7syyawhstnba6txiej4&hl=en",
                :amazon => "http://www.amazon.com/Tom-Ford-Explicit/dp/B00DU1WV6W",
                :spotify => "https://play.spotify.com/album/0OTjYdGtP7AbwOwbYsGhyi",
                :release_date => "{2013/9/26}"
              })

Song.create ({
                :artist => a6,
                :title => "Wet Dreamz",
                :artwork => ,
                :features => "",
                :producer => "J Cole",
                :album => "2014 Forest Hills Drive",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/2014-forest-hills-drive/id940845223",
                :google => "https://play.google.com/store/music/album/J_Cole_2014_Forest_Hills_Drive?id=Brnkpxufjkjwf6dqao6wxppl3mi&hl=en",
                :amazon => "http://www.amazon.com/Wet-Dreamz-Explicit/dp/B00PJHY898",
                :spotify => "https://play.spotify.com/track/6Ius4TC0L3cN74HT7ENE6e",
                :release_date => "{2014/12/9}"
              })

Song.create ({
                :artist => a7,
                :title => "Doin it Again",
                :artwork => ,
                :features => "John Legend",
                :producer => "Questlove",
                :album => "How I Got Over",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/how-i-got-over/id377445282",
                :google => "",
                :amazon => "http://www.amazon.com/Doin-Again-Album-Version-Explicit/dp/B003RNVP42",
                :spotify => "https://play.spotify.com/album/2VOq1Tnj9Hf968Fdx8xpox",
                :release_date => "{2014/12/9}"
              })

Song.create ({
                :artist => a8,
                :title => "6 God",
                :artwork => ,
                :features => "",
                :producer => "Boi-1da & Syk Sense",
                :album => "6 God EP",
                :download_link => "http://www.djbooth.net/index/tracks/review/drake-6-god",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/173752179&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2010/6/22}"
              })

Song.create ({
                :artist => a10,
                :title => "Hip Hop is Dead",
                :artwork => ,
                :features => "",
                :producer => "will.i.am",
                :album => "Hip Hop Is Dead",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/hip-hop-is-dead/id209359519",
                :google => "https://play.google.com/store/music/album/Nas_Hip_Hop_Is_Dead?id=Bmhils5m2gjgtmfmo6ov2tfqxky&hl=en",
                :amazon => "http://www.amazon.com/dp/B001NZ10UU/ref=dm_ws_tlw_trk5",
                :spotify => "https://play.spotify.com/album/2ogVzdMcoa1P38YIUCCyIW",
                :release_date => "{2006/12/15}"
              })

Song.create ({
                :artist => a11,
                :title => "Breakfast Can Wait",
                :artwork => ,
                :features => "",
                :producer => "Prince",
                :album => "ART OFFICIAL AGE",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/art-official-age/id911631220",
                :google => "https://play.google.com/store/music/album/Prince_ART_OFFICIAL_AGE?id=Bjprj7i5o2cdnsw3czo2txvjcvu&hl=en",
                :amazon => "http://www.amazon.com/dp/B00N1LAIWA/ref=dm_ws_tlw_trk6",
                :spotify => "https://play.spotify.com/album/1xRg9g9QCGjFp9poxLnU5M",
                :release_date => "{2013/2/5}"
              })

Song.create ({
                :artist => a12,
                :title => "Actin Crazy",
                :artwork => ,
                :features => "",
                :producer => "40 & Omen",
                :album => "Mr. Wonderful",
                :download_link => "https://soundcloud.com/actionbronson/action-bronson-actin-crazy",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/184964202&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "https://itunes.apple.com/us/album/actin-crazy-single/id956323924",
                :google => "https://play.google.com/store/music/album?id=B3j5khyzx6vxjcxhgfemc4smbwi&tid=song-Truqnbckmybtnpziogvtu2b3hqi&hl=en",
                :amazon => "http://www.amazon.com/Actin-Crazy-Explicit-Action-Bronson/dp/B00RYGX0B4",
                :spotify => "https://play.spotify.com/album/5bxjy0F0a8yCONYvEOuWg0",
                :release_date => "{2015/1/7}"
              })

Song.create ({
                :artist => a13,
                :title => "Iron Mic",
                :artwork => ,
                :features => "",
                :producer => "9th Wonder",
                :album => "9th Wonder Presents: Jamla Is the Squad",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/9th-wonder-presents-jamla/id807321719",
                :google => "",
                :amazon => "http://www.amazon.com/Iron-Mic-Explicit/dp/B00I5605IS",
                :spotify => "https://play.spotify.com/album/7xlgY7Ffb6XHfRhzRoevCr",
                :release_date => "{2014/1/28}"
              })

Song.create ({
                :artist => a1,
                :title => "SoundCatcher",
                :artwork => ,
                :features => "Pugs Atomz, Neak",
                :producer => "Mulatto Patriot",
                :album => "Single",
                :download_link => "http://mulattopatriot.bandcamp.com/track/soundcatcher-feat-pugs-atomz-neak",
                :embedded_code => '<iframe style="border: 0; width: 100%; height: 42px;" src="http://bandcamp.com/EmbeddedPlayer/album=1973410984/size=small/bgcol=ffffff/linkcol=0687f5/track=4116145876/transparent=true/" seamless><a href="http://mulattopatriot.bandcamp.com/album/the-promise-the-new-deal">The Promise &quot;The New Deal&quot; by The Promise (Squair Blaq &amp; Mulatto Patriot)</a></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2012/2/13}"
              })

Song.create ({
                :artist => a3,
                :title => "Bound 2",
                :artwork => ,
                :features => "",
                :producer => "Kanye West",
                :album => "Yeezus",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/yeezus/id662392801",
                :google => "https://play.google.com/store/music/album/Kanye_West_Yeezus?id=By5ojxdslc5zdiuflz25kgytgoi&hl=en",
                :amazon => "http://www.amazon.com/Bound-2-Explicit/dp/B00DF0PS9K",
                :spotify => "https://play.spotify.com/album/0XTAmejG8F97wF5MWoVbaY",
                :release_date => "{2013/8/28}"
              })

Song.create ({
                :artist => a7,
                :title => "Kool On",
                :artwork => ,
                :features => "Greg Porn, Truck North",
                :producer => "Questlove",
                :album => "Undun",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/how-i-got-over/id377445282",
                :google => "https://play.google.com/store/music/album/The_Roots_Undun?id=B3hl6yrowtxwbuzwwo56izsqjtm&hl=en",
                :amazon => "http://www.amazon.com/dp/B006B398M6/ref=dm_ws_tlw_trk5",
                :spotify => "https://play.spotify.com/album/0cwlEeMEkvdoiPNJxlzHtI",
                :release_date => "{2012/12/2}"
              })

Song.create ({
                :artist => a9,
                :title => "99 Problems",
                :artwork => ,
                :features => "",
                :producer => "Rick Rubin",
                :album => "The Black Album",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/the-black-album/id358057502",
                :google => "https://play.google.com/store/music/album/Jay_Z_The_Black_Album?id=Beuxsnb2og5vxeypi25l4cz2g34&hl=en",
                :amazon => "http://www.amazon.com/99-Problems-Album-Version-Explicit/dp/B0039W6BQS",
                :spotify => "https://play.spotify.com/album/0QjF5LdDi4HEf47VoCz8rU",
                :release_date => "{2004/4/27}"
             })

Song.create ({
                :artist => a1,
                :title => "Funky Junkie",
                :artwork => ,
                :features => "Psalm One",
                :producer => "Mulatto Patriot",
                :album => "Single",
                :download_link => "https://soundcloud.com/mulatto-patriot/mulatto-patriot-primeridians",
                :embedded_code => '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/129683095&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>',
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2014/1/15}"
              })

Song.create ({
                :artist => a16,
                :title => "Kingdom",
                :artwork => ,
                :features => "Vince Staples",
                :producer => "J dilla",
                :album => "Nobody Smiling",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/nobodys-smiling-deluxe-version/id891974297",
                :google => "https://play.google.com/store/music/album/Common_Nobody_s_Smiling_Deluxe?id=Bsrww6emsbtg3u2on43ftpvczz4&hl=en",
                :amazon => "hhttp://www.amazon.com/Kingdom-feat-Vince-Staples-Explicit/dp/B00LPGRWWM",
                :spotify => "https://play.spotify.com/album/3EjvgmNXVLX2WBdNw4uBar",
                :release_date => "{2014/12/20}"
              })

Song.create ({
                :artist => a4,
                :title => "Coco Butter Kisses",
                :artwork => ,
                :features => "Vic Mensa, Twista",
                :producer => "Peter Cottontale",
                :album => "Acid Rap",
                :download_link => "https://soundcloud.com/chancetherapper/cocoa-butter-kisses-ft-vic",
                :embedded_code => %^<iframe width="100%" height="450" scrolling='no' frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243752&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>^,
                :itunes => "",
                :google => "",
                :amazon => "",
                :spotify => "",
                :release_date => "{2013/4/30}"
              })

Song.create ({
                :artist => a13,
                :title => "Club Church Club Hell",
                :artwork => ,
                :features => "",
                :producer => "Khrysis",
                :album => "Between Heaven & Hell",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/between-heaven-hell-deluxe/id849322477",
                :google => "https://play.google.com/store/music/album/Add_2_Khrysis_Between_Heaven_Hell_Deluxe_Edition?id=Bamqotnmv65526erulfqdyjmp2y",
                :amazon => "http://www.amazon.com/dp/B00JHBFJT0/ref=dm_ws_tlw_trk3",
                :spotify => "https://play.spotify.com/album/10UQAPZ57CumKSdRA2Bvka",
                :release_date => "{2013/11/18}"
              })

Song.create ({
                :artist => a2,
                :title => "Swimming Pools",
                :artwork => ,
                :features => "",
                :producer => "T-Minus",
                :album => "Good Kid, M.A.A.D City",
                :download_link => "",
                :embedded_code => "",
                :itunes => "https://itunes.apple.com/us/album/good-kid-m.a.a.d-city-deluxe/id622710488",
                :google => "https://play.google.com/store/music/album/Kendrick_Lamar_good_kid_m_A_A_d_city?id=Bsmwzhrnfdriq72isfh7ajz4m2y&hl=en",
                :amazon => "http://www.amazon.com/dp/B00BY2DMIU/ref=dm_ws_tlw_trk9",
                :spotify => "https://play.spotify.com/album/3DGQ1iZ9XKUQxAUWjfC34w",
                :release_date => "{2012/7/31}"
              })
