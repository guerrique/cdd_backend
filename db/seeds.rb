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
  She is also a scholar of women's and public issues, and former professor at Sun Yat-sen University.
  Ai was born in Wuhan in 1953,and has spent most of her adult life in Beijing and Guangzhou.
  Ai Xiaoming and Guo Jianmei won the 2010 Simone de Beauvoir Prize for Women's Freedom.
  Since 2004, she has made more than two dozen films, including documentaries about citizen activism,
  social problems, and corruption. Some of her films aim to uncover whitewashed historical events.",
  birth_year: '1953',
  bio_source: 'Wikipedia',
  useful_links: [
        ['Interview in french', 'https://www.nouvelobs.com/rue89/rue89-chine/20130531.RUE6630/chine-ai-xiaoming-professeure-d-universite-60-ans-proteste-a-la-femen.html'],
        ['Interview for LA Review of Books', 'https://lareviewofbooks.org/article/ai-xiaoming-and-the-quarantine-counter-diary/'],
        ['Interview on New Left Review', 'https://newleftreview.org/issues/ii122/articles/xiaoming-ai-wuhan-diary'],
        ['Interview on Deepblue', 'https://deepblue.lib.umich.edu/handle/2027.42/55711']
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

   # t.string "name"
   #  t.string "useful_links"
   #  t.string "photo"
   #  t.string "bio_short"
   #  t.string "bio_long"
   #  t.string "birth_year"
   #  t.string "death_year"
   #  t.string "bio_source"
