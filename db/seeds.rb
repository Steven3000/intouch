User.destroy_all
User.create!([
  {id: 1, email: "a@a.com", password: "12121212"},
  {id: 2, email: "b@b.com", password: "12121212"},
  {id: 3, email: "c@c.com", password: "12121212"}
])

Artist.destroy_all
Artist.create!([
  {id: 1, name: "Mulatto Patriot", record_label: "Independent"},
  {id: 2, name: "Kendrick Lamar", record_label: "TDE"},
  {id: 3, name: "Action Bronson", record_label: "Vice Records"},
  {id: 4, name: "Kanye West", record_label: "Def Jam"},
  {id: 5, name: "Chance the Rapper", record_label: "Independent"},
  {id: 6, name: "D\'Angelo", record_label: "EMI, Virgin, J, RCA"},
  {id: 7, name: "Frank Ocean", record_label: "Odd Future Records, Def Jam, Island"},
  {id: 8, name: "Lauryn Hill", record_label: "Columbia Ruffhouse"},
  {id: 9, name: "Daft Punk", record_label: "Soma, Virgin, Walt Disney, Columbia"},
  {id: 10, name: "Andre 3000", record_label: "Epic"}
])

Album.destroy_all
Album.create!([
  {id: 1, artist_id: 2, name: "To Pimp A Butterfly", release_date: "{2015/3/16}", download_link: "", embedded_code: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP", youtube: '' },
  {id: 2, artist_id: 3, name: "Mr Wonderful", release_date: "{2015/3/23}", download_link: "", embedded_code: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd", youtube: '' },
  {id: 3, artist_id: 1, name: "Ray Elementary", release_date: "{2014/1/23}", download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: '<iframe src="http://www.audiomack.com/embed4-album/mulatto-patriot/ray-elementary" scrolling="no" width="100%" height="350" scrollbars="no" frameborder="0"></iframe>', itunes: "", google: "", amazon: "", spotify: "", youtube: '' }
])

Song.destroy_all
Song.create!([
    {id: 1, title: "Stop On By", artist_id: 1, features: "Neak, Primeridian", producer: "Mulatto Patriot", album_id: "", track: "", album_title: "", release_date: "{2014/12/20}", youtube: '', itunes: "", amazon: "", google: "",  spotify: "", download_link: "https://soundcloud.com/mulatto-patriot/stop-on-by-primeridian-neak", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/141553411&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>' },
    {id: 2, title: "I", artist_id: 2, features: "", producer: "Rahki", album_id: "", track: "", album_title: "", release_date: "{2014/9/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/8aShfolR6w8?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/i-single/id921042833", amazon: "http://www.amazon.com/gp/product/B00NT9TTN8/ref=dm_ws_ap_tlw_trk2", google: "https://play.google.com/store/music/artist/Kendrick_Lamar?id=Ag6icjgrnuaumrdrubtg5nr2xki&hl=en", spotify: "https://play.spotify.com/album/51C65YqHrDODM1hD5FEL5x", download_link: "", embedded_code: '' },
    {id: 3, title: "Juice", artist_id: 5, features: "", producer: "Nate Fox", album_id: "", track: "", album_title: "", release_date: "{2013/4/30}", youtube: '', itunes: "", google: "", amazon: "", spotify: "",  download_link: "", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243754&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>' },
    {id: 4, title: "SoundCatcher", artist_id: 1, features: "Pugs Atomz, Neak", producer: "Mulatto Patriot", album_id: "", track: "" , album_title: "The New Deal", release_date: "{2012/2/13}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/li_IsOlb8VY?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "",  spotify: "", download_link: "http://mulattopatriot.bandcamp.com/track/soundcatcher-feat-pugs-atomz-neak", embedded_code: '<iframe style="border: 0; width: 100%; height: 42px;" src="http://bandcamp.com/EmbeddedPlayer/album=1973410984/size=small/bgcol=ffffff/linkcol=0687f5/track=4116145876/transparent=true/" seamless><a href="http://mulattopatriot.bandcamp.com/album/the-promise-the-new-deal">The Promise &quot;The New Deal&quot; by The Promise (Squair Blaq &amp; Mulatto Patriot)</a></iframe>' },
    {id: 5, title: "Bound 2", artist_id: 4, features: "", producer: "", album_id: "", track: "", album_title: "Yeezus", release_date: "{2013/8/28}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/BBAtAM7vtgc?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/yeezus/id662392801", amazon: "http://www.amazon.com/Bound-2-Explicit/dp/B00DF0PS9K", google: "https://play.google.com/store/music/album/Kanye_West_Yeezus?id=By5ojxdslc5zdiuflz25kgytgoi&hl=en", spotify: "https://play.spotify.com/album/0XTAmejG8F97wF5MWoVbaY", download_link: "", embedded_code: '' },
    {id: 6, title: "Coco Butter Kisses", artist_id: 5, features: "Vic Mensa, Twista", producer: "Peter Cottontale", album_id: "", track: "", album_title: "Acid Rap", release_date: "{2013/4/30}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/TErySTMbFlk?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "https://soundcloud.com/chancetherapper/cocoa-butter-kisses-ft-vic", embedded_code: %^<<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/90243752&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>^  },
    {id: 7, title: "The Blacker The Berry", artist_id: 2, features: "", producer: "Boi-1da", album_id: "", track: "", album_title: "", release_date: "{2015/2/9}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/6AhXSoKa8xw?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "https://www.youtube.com/watch?v=6AhXSoKa8xw", embedded_code: ''  },
    {id: 8, title: "Only One", artist_id: 4, features: "Paul McCartney", producer: "", album_id: "", track: "", album_title: "", release_date: "{2014/12/31}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/WibQR0tQ0P8?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/only-one-feat.-paul-mccartney/id955053780", amazon: "http://www.amazon.com/Only-One-feat-Paul-McCartney/dp/B00RW7UZO0", google: "", spotify: "",  download_link: "", embedded_code: ''  },
    {id: 9, title: "Lady Friend", artist_id: 5, features: "The Social Experiment", producer: "The Social Experiment", album_id: "", track: "", album_title: "", release_date: "{2015/2/14}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/h8nIHZ-0kS4?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "https://soundcloud.com/chancetherapper/chance-the-rapper-the-social-experiment-lady-friend", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/191163281&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>'  },
    {id: 10, title: "No Better Blues", artist_id: 5, features: "The Social Experiment", producer: "The Social Experiment", album_id: "", track: "", album_title: "", release_date: "{2014/10/16}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "https://soundcloud.com/chancetherapper/chance-the-rapper-the-social-experiment-know-betta-blues", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/172307425&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>'  },
    {id: 11, title: "Hey Ya", artist_id: 10, features: "OutKast", producer: "", album_id: "", track: "", album_title: "The Love Below", release_date: "{2003/9/23}", youtube: '<iframe width="640" height="480" src="https://www.youtube.com/embed/PWgvGjAhvIw?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/speakerboxxx-the-love-below/id281430653", amazon: "http://www.amazon.com/Speakerboxxx-Love-Below-Explicit-OutKast/dp/B001414XS4/ref=tmm_msc_swatch_0?_encoding=UTF8&sr=&qid=", google: "", spotify: "https://play.spotify.com/album/00XMrHZoOsYLmiyx890axX",  download_link: "", embedded_code: ''  },
    {id: 12, title: "Lost", artist_id: 7, features: "", producer: "Malay", album_id: "", track: "", album_title: "Channel Orange", release_date: "{2012/12/17}", youtube: '<iframe src="https://player.vimeo.com/video/63896903?title=0&byline=0&portrait=0" width="500" height="198" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="https://vimeo.com/63896903">frank ocean [lost]</a> from <a href="https://vimeo.com/frankocean">christopher francis ocean</a> on <a href="https://vimeo.com">Vimeo</a>.</p>', itunes: "https://itunes.apple.com/us/album/channel-orange/id541953504", amazon: "http://www.amazon.com/Speakerboxxx-Love-Below-Explicit-OutKast/dp/B001414XS4/ref=tmm_msc_swatch_0?_encoding=UTF8&sr=&qid=", google: "https://play.google.com/store/music/album/Frank_Ocean_channel_ORANGE_Explicit_Version?id=Bw23texekzoug3kqxdektrrdyj4&hl=en", spotify: "https://play.spotify.com/album/623Ef2ZEB3Njklix4PC0Rs",  download_link: "", embedded_code: ''  },
    {id: 13, title: "Consumerism", artist_id: 8, features: "", producer: "", album_id: "", track: "", album_title: "", release_date: "{2013/10/4}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/mFPhKf_dg7g?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/consumerism-single/id719012403", amazon: "", google: "", spotify: "https://play.spotify.com/album/4RwFZ9Gm5HB8sKi2GY54Gp",  download_link: "", embedded_code: ''  },
    {id: 14, title: "Sugah Daddy", artist_id: 6, features: "", producer: "", album_id: "", track: "", album_title: "", release_date: "{2014/12/15}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/vo3RAH0zLlU?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/black-messiah/id950764300", amazon: "", google: "", spotify: "https://play.spotify.com/album/5Hfbag0SsHxafx1SySFSX6",  download_link: "", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/181260617&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>'  },
    {id: 15, title: "Computerized", artist_id: 9, features: "Jay-Z", producer: "", album_id: "", track: "", album_title: "", release_date: "{2014/3/10}", youtube: '<iframe width="640" height="480" src="https://www.youtube.com/embed/EBYITSFsjvU?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.mediafire.com/download/ll2r4gmqlyacljg/Daft+Punk+%26+Jay-z+-+Computerized.mp3", embedded_code: ''  },
    {id: 16, title: "All Day", artist_id: 4, features: "Allan Kingdom & Theophilus London", producer: "", album_id: "", track: "", album_title: "So Help Me God", release_date: "{2015/3/2}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/_ABk7TmjnVk?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/all-day-feat.-theophilus-london/id972815455", amazon: "http://www.amazon.com/All-Day-Explicit-Kanye-West/dp/B00U6P6CW4", google: "https://play.google.com/store/music/album/Kanye_West_All_Day?id=Bok2mgdce7hjbvpmlzfoanjnb7i&hl=en", spotify: "https://play.spotify.com/user/cmount/playlist/0uFxjmYfjEXObrgiKmoavw",  download_link: "", embedded_code: ''  },
    {id: 17, title: "Awsome", artist_id: 4, features: "", producer: "", album_id: "", track: "", album_title: "So Help Me God", release_date: "{2015/3/2}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/xz-QrOo1UBE?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/195458522&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>'  },

    {id: 18, title: "Wesley\'s Theory", artist_id: 2, features: "George Clinton, Thundercat", producer: "", album_id: 1, track: "1", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 19, title: "For Free\? (Interlude)", artist_id: 2, features: "", producer: "", album_id: 1, track: "2", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 20, title: "King Kunta", artist_id: 2, features: "", producer: "", album_id: 1, track: "3", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/hRK7PVJFbS8?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 21, title: "Institutionalized", artist_id: 2, features: "Bilal, Anna Wise & Snoop Dogg", producer: "", album_id: 1, track: "4", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 22, title: "These Walls", artist_id: 2, features: "Bilal, Anna Wise & Thundercat", producer: "", album_id: 1, track: "5", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 23, title: "U", artist_id: 2, features: "", producer: "", album_id: 1, track: "6", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 24, title: "Alright", artist_id: 2, features: "", producer: "", album_id: 1, track: "7", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 25, title: "For Sale\? (Interlude)", artist_id: 2, features: "", producer: "", album_id: 1, track: "8", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 26, title: "Momma", artist_id: 2, features: "", producer: "", album_id: 1, track: "9", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 27, title: "Hood Politics", artist_id: 2, features: "", producer: "", album_id: 1, track: "10", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 28, title: "How Much A Dollar Cost", artist_id: 2, features: "James Fauntleroy & Ronald Isley", producer: "", album_id: 1, track: "11", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 29, title: "Complexion (A Zulu Love)", artist_id: 2, features: "Rapsody", producer: "", album_id: 1, track: "12", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 30, title: "The Blacker The Berry", artist_id: 2, features: "", producer: "", album_id: 1, track: "13", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 31, title: "You Ain\'t Gotta Lie (Momma Said)", artist_id: 2, features: "", producer: "", album_id: 1, track: "14", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 32, title: "I", artist_id: 2, features: "", producer: "", album_id: 1, track: "15", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/8aShfolR6w8?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },
    {id: 33, title: "Mortal Man", artist_id: 2, features: "", producer: "", album_id: 1, track: "16", album_title: "To Pimp A Butterfly", release_date: "{2015/3/16}", youtube: '', itunes: "https://itunes.apple.com/us/album/to-pimp-a-butterfly/id974187289", amazon: "http://www.amazon.com/To-Pimp-Butterfly-Kendrick-Lamar/dp/B00UDDM7K0", google: "https://play.google.com/store/music/album/Kendrick_Lamar_To_Pimp_A_Butterfly?id=Bxno4dwxtvymibbibjafrmsk5fi&hl=en", spotify: "https://play.spotify.com/album/7ycBtnsMtyVbbwTfJwRjSP",  download_link: "", embedded_code: ''  },

    {id: 34, title: "Brand New Car", artist_id: 3, features: "", producer: "Mark Ronson", album_id: 2, track: "1", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 35, title: "The Rising", artist_id: 3, features: "", producer: "Statik Selektah", album_id: 2, track: "2", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 36, title: "Terry", artist_id: 3, features: "", producer: "The Alchemist", album_id: 2, track: "3", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: ' ', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 37, title: "Actin Crazy", artist_id: 3, features: "Chance the Rapper", producer: "40", album_id: 2, track: "4", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/debIyWS6Byc?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 38, title: "Falconry", artist_id: 3, features: "", producer: "he Alchemist", album_id: 2, track: "5", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 39, title: "THUG LOVE STORY 2017 THE MUSICAL (interlude)", artist_id: 3, features: "", producer: "", album_id: 2, track: "6", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 40, title: "City Boy Blues", artist_id: 3, features: "", producer: "88-Keys", album_id: 2, track: "7", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 41, title: "A Light In The Addict", artist_id: 3, features: "", producer: "Party Supplies", album_id: 2, track: "8", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 42, title: "Baby Blue", artist_id: 3, features: "", producer: "Mark Ronson", album_id: 2, track: "9", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/bVP_w1rQweE?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 43, title: "Only In America", artist_id: 3, features: "", producer: "Oh No", album_id: 2, track: "10", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 44, title: "Galactic Love", artist_id: 3, features: "", producer: "The Alchemist", album_id: 2, track: "11", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 45, title: "The Passage (Live From Prague)", artist_id: 3, features: "", producer: "Party Supplies", album_id: 2, track: "12", album_title: "Mr Wonderful", release_date: "{2015/3/23}", youtube: '', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },
    {id: 46, title: "Easy Rider", artist_id: 3, features: "", producer: "Party Supplies", album_id: 2, track: "", album_title: "Mr Wonderful13", release_date: "{2015/3/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/58RSC7HO9aU?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "https://itunes.apple.com/us/album/mr.-wonderful/id965629356", amazon: "http://www.amazon.com/Mr-Wonderful-Explicit-Action-Bronson/dp/B00TA6L6O4", google: "https://play.google.com/store/music/album/Action_Bronson_Mr_Wonderful?id=Bxihcl7ae23bfw5sm5mypnikrme&hl=en", spotify: "https://play.spotify.com/album/6jZzqlKfTvx4nON67dyCXd",  download_link: "", embedded_code: ''  },

    {id: 47, title: "Drum Line", artist_id: 1, features: "Sincerely Yours", producer: "Mulatto Patriot", album_id: 3, track: "1", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 48, title: "Funky Junkie", artist_id: 1, features: "Psalm One", producer: "Mulatto Patriot", album_id: 3, track: "2", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementaryhttps://soundcloud.com/mulatto-patriot/mulatto-patriot-primeridians", embedded_code: '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/129683095&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>'  },
    {id: 49, title: "Mysterious Vibes", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "3", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 50, title: "Once Again", artist_id: 1, features: "Pugs Atomz, ProbCause", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/kkyHXnaQf_Y?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 51, title: "Show to Show", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 52, title: "The Streets are Chanting 4U", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 53, title: "Crazy Love", artist_id: 1, features: "Greg Blackman", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 54, title: "When the Birds Fly", artist_id: 1, features: "Imani(Pharcyde), Maggie Vagle", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 55, title: "Writters Block", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 56, title: "Funkorama", artist_id: 1, features: "Awdazcate", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 57, title: "Hot Day", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '<iframe width="853" height="480" src="https://www.youtube.com/embed/Nk7SfADrIxI?rel=0" frameborder="0" allowfullscreen></iframe>', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 58, title: "Lifestyles", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  },
    {id: 59, title: "Something Special", artist_id: 1, features: "", producer: "Mulatto Patriot", album_id: 3, track: "", album_title: "Ray Elementary", release_date: "{2014/1/23}", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "http://www.audiomack.com/album/mulatto-patriot/ray-elementary", embedded_code: ''  }

#{id: 60, title: "", artist_id: , features: "", producer: "", album_id: , track: "", album_title: "", release_date: "", youtube: '', itunes: "", amazon: "", google: "", spotify: "",  download_link: "", embedded_code: ''  },

])


