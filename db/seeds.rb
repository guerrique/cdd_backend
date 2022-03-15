# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clearing data'
Doc.destroy_all
Director.destroy_all

puts 'creating Directors'
ai_xiao_ming = Director.create!(
  name: '艾晓明 Ai Xiaoming',
  bio_short: "Ai Xiaoming is a Chinese documentary filmmaker and political activist.
  She is also a scholar of women's and public issues, and former professor at Sun Yat-sen University.",
  bio_long:"Ai was born in Wuhan in 1953,and has spent most of her adult life in Beijing and Guangzhou.
  Ai Xiaoming and Guo Jianmei won the 2010 Simone de Beauvoir Prize for Women's Freedom.
  Since 2004, she has made more than two dozen films, including documentaries about citizen activism,
  social problems, and corruption. Some of her films aim to uncover whitewashed historical events.",
  birth_year: '1953',
  bio_source: 'Wikipedia',
  useful_links: [
        ['Interview in french', 'https://www.nouvelobs.com/rue89/rue89-chine/20130531.RUE6630/chine-ai-xiaoming-professeure-d-universite-60-ans-proteste-a-la-femen.html'],
        ['Interview for LA Review of Books', 'https://lareviewofbooks.org/article/ai-xiaoming-and-the-quarantine-counter-diary/'],
        ['Interview on New Left Review', 'https://newleftreview.org/issues/ii122/articles/xiaoming-ai-wuhan-diary'],
        ['Interview on Deepblue', 'https://deepblue.lib.umich.edu/handle/2027.42/55711'],
        ["Ai Xiaoming's personal website (in chinese)", 'http://aixiaomingstudio.blogspot.com/']
  ]
)
ban_zhong_yi = Director.create!(
  name: '班忠義 Ban ZhongYi',
  bio_short: ' The director, Ban Zhongyi, 58, was born in the Chinese city of Fushun,
  and came to Japan for the first time as a student in 1987. He was involved in efforts to support the return to Japan
  of "war wives" who had been stranded in China.
  In 1992, after hearing stories of the damage that some Chinese women had suffered, he started to provide medical assistance.',
  birth_year: '1958',
  bio_source: 'The Mainichi',
  useful_links: ['Article on Kyodo News', 'https://english.kyodonews.net/news/2019/08/7c729864dcac-chinese-filmmaker-shines-spotlight-on-japans-wartime-sexual-violence.html']
  )
wang_bo = Director.create!(
  name: '王博 Wang Bo',
  bio_short: 'Bo Wang, born 1982 in Chongqing, China, is an artist and filmmaker currently based in Amsterdam.',
  birth_year: '1982',
  bio_source: 'https://www.bo-wang.net/',
  useful_links: [['Interview for Asia Society', 'https://asiasociety.org/blog/asia/interview-bo-wangs-china-concerto-turns-camera-bo-xilais-red-chongqing'],
    ['Q&A in China File', 'https://www.chinafile.com/china-concerto']]
    )
hu_jie = Director.create!(
  name: '胡杰 Hu Jie',
  bio_short: "Hu was born in Jinan, Shandong Province, and later attended the People's Liberation Army Arts College before serving in the People's Liberation Army for fifteen years.
  He then found work with the Xinhua News Agency prior to his debut as a director. He currently resides in Nanjing.",
  bio_long: "In addition to his work in film, Hu is an accomplished artist of woodblock prints, recently producing a series of pieces depicting scenes from the
  Great Famine which was intended to be exhibited in Tianjin in 2014 before being deemed too controversial, leading to the showcase's cancellation.",
  birth_year: '1958',
  bio_source: 'Wikipedia',
  useful_links: [["Hu Jie on Icarus Films, which distributes some of his documentaries", 'https://icarusfilms.com/other/filmmaker/hujie.html'],
  ['Interview for the New York Review', 'https://www.nybooks.com/daily/2015/05/27/chinas-invisible-history-hu-jie/'],
  ['Article on the New York Times', 'https://www.nytimes.com/2020/06/28/movies/hu-jie-films.html']]
  )
puts 'Directors created!'







puts 'Creating docs'

the_white_ribbon = Doc.create!(
  name: 'The White Ribbon',
  chinese_name: '白丝带 bai si dai',
  year: '2004',
  duration: '36 min',
  doc_text_short: "In the spring of 2004, a female graduate student was killed at Sun Yat-Sen University in Guangzhou.
  The school's website claimed that girls should not refuse boys' love. This film records the process
  of Ai Xiaoming, a professor of Chinese Department, leading her classmates to fight back against such patriarchal ideology.",
  useful_links: [['The white ribbon page on chinaindiefilm.org (in chinese)', 'https://www.chinaindiefilm.org/films/%E7%99%BD%E4%B8%9D%E5%B8%A6/?lang=zh-hans']]
   )
garden_in_heaven = Doc.create!(
  name: 'Garden in heaven',
  chinese_name: '天堂花園 tian tang hua yuan',
  year: '2005',
  duration: '140 min',
  doc_text_short: "By tracing the case of Huang Jing, a women teacher died of date rape, this documentaty captures the signs of change in
  China during a period between 2003 to 2005, before and after the injunction to respect and protect of human rights was written into the
  Constitution. The film illustrates awareness of human rights, women's struggle against judicial corruption and women taking actions to fight
  against domestic violence. By highlighting the effort made by women at grass roots level.",
  useful_links: [
    ['Part one on Youtube (chinese with no subtitles)', 'https://www.youtube.com/watch?v=1fCc8gOvz-4&list=PLzXiDb5U9g6Obndlx19fMDs9vefYaddH4&index=3'],
    ['Part 2 on Youtube (chinese with no subtitles)', 'https://www.youtube.com/watch?v=6ZYVnnOpqZM&list=PLzXiDb5U9g6Obndlx19fMDs9vefYaddH4&index=3'],
    ['Part 3 on Youtube (chinese with no subtitles)', 'https://www.youtube.com/watch?v=Qt6MZsPgukg&list=PLzXiDb5U9g6Obndlx19fMDs9vefYaddH4&index=5']
  ]
  )
taishi_village = Doc.create!(
  name: 'Taishi village',
  chinese_name: '太石村 tai shi cun',
  year: '2005',
  duration: '114 min',
  doc_text_short: "This film follows the famous events when villagers of Tai Shi, in suburban Guangzhou, tried to remove the appointed
  local officials in 2005. The villagers suspected that their land was illegally taken away by the local authorities.
  Shot under dangerous conditions, the film reflects vividly the growing number of serious conflicts in rural China.",
  useful_links: [
  ['Taishi village, part 1 on Youtube (chinese without subtitles', 'https://www.youtube.com/watch?v=dRg44SvrOEc'],
  ['Taishi village, part 2 on Youtube (chinese without subtitles', 'https://www.youtube.com/watch?v=PIdpZI6qMXc']
  ]
  )

gai_shanxi_and_her_sisters = Doc.create!(
  name: 'Gai Shanxi and her sisters',
  chinese_name: ' 盖山西和她的姐妹们 gai shan xi he ta de jie mei men',
  year:'2007',
  duration: '80 min',
  doc_text_short: "Gai Shanxi and her sisters tells the story of one woman's brutal ordeal as a 'comfort woman' for the Japanese Army
  during World War II. Hou Dong-E, known as 'Gai Shanxi,' the fairest woman in China's Shanxi province, was one of the many women
  abducted from their villages to be sexually enslaved by Japanese soldiers stationed nearby.",
  doc_text_long:  "Fifty years later, she joined other women throughout Asia to seek justice and reparations, but she died before
  her demands were answered.\n
  Chinese filmmaker Ban Zhongyi unearths Gai Shanxi's tragic life through the stories of the surviving women in the region.
  Ban also collects revelatory testimonies from former Japanese soldiers stationed in Shanxi during the war, breaking a decades-long
  silence over a dark chapter of China's history. Following one woman's heroic journey, GAI SHANXI AND HER SISTERS tells a universal
  story of female solidarity and survival.",
  trailer_link: 'https://www.youtube.com/watch?v=PjffcC0c-SI&feature=emb_logo',
  useful_links: [
  ['Icarus Films', 'https://icarusfilms.com/df-gai'],
  ['Wikipedia page for the film', 'https://en.wikipedia.org/wiki/Gai_Shanxi_and_Her_Sisters']
  ]
  )

give_me_the_sun = Doc.create!(
  name: 'Give me the sun',
  chinese_name: '太陽がほしい Taiyo ga Hoshii',
  year: '2017',
  duration: '108 min',
  doc_text_short: "The film records the cruel life of 7 women who were subjected to sexual violence by the Japanese Army during World War II.
  Six of them lived in mountain villages of Shanxi Province and one in Wuhan, a large city on the Yangtze River.",
  useful_links: [
    ["Article in the Foreign Correspondent's Club of Japan", 'https://www.fccj.or.jp/committee-blog/give-me-sun-taiyo-ga-hoshii'],
    ['Article on Kyodo News', 'https://english.kyodonews.net/news/2019/08/7c729864dcac-chinese-filmmaker-shines-spotlight-on-japans-wartime-sexual-violence.html']
  ],
  awards: ['Gold winner, Asia Pacific International Filmmaker Festival (2018)']
  )

china_concerto = Doc.create!(
  name: 'China concerto',
  chinese_name: '中国协奏曲 zhong guo xie zou qu',
  year: '2012',
  duration: '50min',
  doc_text_short: "Born and raised in Chongqing, filmmaker Bo Wang visited his hometown at the height of now-disgraced politician Bo Xilai's
  campaign to revive Mao-era 'red culture', promoting among other things the public singing and dancing of Communist songs.",
  doc_text_long: "Alongside these participatory street performances, China concerto looks at images from the media, including Michelangelo
  Antonioni's Chung Kuo-China, and news media and advertising that address the capitalist present in forms reminiscent of the communist past.",
  trailer_link: '<iframe width="560" height="315" src="https://www.youtube.com/embed/x-WWOYiHd6I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
  useful_links: [
    ['Interview on Asian Cine Vision', 'https://www.asiancinevision.org/cinema-spotlight-bo-wang-and-china-concerto/'],
    ['Film review on Asia Movie Pulse', 'https://asianmoviepulse.com/2018/08/china-concerto-2012-by-bo-wang/'],
    ['Three excerpts on Artforum', 'https://www.artforum.com/video/three-excerpts-from-bo-wang-china-concerto-2012-45520']
  ]
  )
though_i_am_gone = Doc.create!(
  name: 'Though I am gone',
  chinese_name: '我虽死去 wo sui si qu',
  year: '2007',
  duration: '68 min',
  doc_text_short: 'The film centers on Bian Zhongyun, the vice principal of the Girls Middle School attached to Beijing Normal
  University, who was beaten to death by her students on August 5, 1966 during the Red August of Chinese Cultural Revolution.',
  doc_text_long: 'The film is largely based on interviews the deceased woman\'s husband, Wang Jingyao. Jingyao documented the events leading up
  to and following his wife\'s death, including photos of her corpse, using a small 35mm stills camera. He did not witness the process of
  his wife\'s death, but the helplessness and sadness that Wang Jingyao felt through the lens of his responses is evident.
  What the interviewer can do is to record the feelings and the experience of the interviewees truthfully.\n
  The film shows the hidden perspectives, experiences and memories that are buried deeply within normal Chinese citizens
  during the Maoist periods and the Cultural Revolution through the use of personal and subjective records.\n
  The film also illustrates the scale of the terror that was unleashed by listing the 201 names on the screen at the end of film,
  in a four-minute incomplete roll call of the teachers that were killed in Beijing, China during the August 1966 Cultural Revolution.
  The list of names act as a reminder to the audience about the wrongful murderous killings by the Red Guards that was encouraged and
  permitted by Mao during the movement and also to pay respect to those who have tragically died in the violent revolution.',
  doc_text_source: 'https://en.wikipedia.org/wiki/Though_I_Am_Gone',
  trailer_link: '<iframe width="560" height="315" src="https://www.youtube.com/embed/xto0n4YQh4c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
  awards: ['Best Film, Chinese Documentary Film Exhibition', 'Jury Prize, Reel China Contemporary Documentary Festival',
    'Melbourne International Film Festival'],
  useful_links: [['On Docuseek', 'https://docuseek2.com/df-gone'],
  ['On Icarus Films', 'https://icarusfilms.com/df-gone']]
  )


    #   t.string "name"
    # t.string "chinese_name"
    # t.string "year"
    # t.string "duration"
    # t.string "poster"
    # t.string "doc_text_short"
    # t.string "doc_text_long"
    # t.string "awards"
    # t.string "trailer_link"
    # t.string "useful_links"
    # t.string "doc_text_source"






