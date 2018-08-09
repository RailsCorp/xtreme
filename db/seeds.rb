# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.create(
  [
    { name: "情報理工底辺界隈01", introduce: "こんにちは", image: "" },
    { name: "情報理工底辺界隈02", introduce: "よろしく", image: "" },
    { name: "情報理工底辺界隈03", introduce: "おねがいします", image: "" },
    { name: "情報理工底辺界隈04", introduce: "おれたち", image: "" },
    { name: "情報理工底辺界隈05", introduce: "なかいいぜ", image: "" },
    { name: "情報理工底辺界隈06", introduce: "おけ！", image: "" },
    { name: "情報理工底辺界隈07", introduce: "うっす", image: "" },
    { name: "情報理工底辺界隈08", introduce: "あー", image: "" },
    { name: "情報理工底辺界隈09", introduce: "もう", image: "" },
    { name: "情報理工底辺界隈10", introduce: "すでに", image: "" },
    { name: "情報理工底辺界隈11", introduce: "ことば", image: "" },
    { name: "情報理工底辺界隈12", introduce: "が", image: "" },
    { name: "情報理工底辺界隈13", introduce: "みつからない", image: "" },
    { name: "情報理工底辺界隈14", introduce: "どないしよ", image: "" },
    { name: "情報理工底辺界隈15", introduce: "まじまんじ", image: "" },
    { name: "情報理工底辺界隈16", introduce: "レオナルド", image: "" },
    { name: "情報理工底辺界隈17", introduce: "大ピンチ", image: "" },
    { name: "情報理工底辺界隈18", introduce: "よっしゃ", image: "" },
    { name: "情報理工底辺界隈19", introduce: "勝負やな！", image: "" },
    { name: "情報理工底辺界隈20", introduce: "Rails", image: "" },
    { name: "情報理工底辺界隈21", introduce: "野郎", image: "" },
    { name: "情報理工底辺界隈22", introduce: "に", image: "" },
    { name: "情報理工底辺界隈23", introduce: "俺はなる", image: "" },
    { name: "情報理工底辺界隈24", introduce: "React", image: "" },
    { name: "情報理工底辺界隈25", introduce: "も", image: "" },
    { name: "情報理工底辺界隈26", introduce: "頑張らな", image: "" },
    { name: "情報理工底辺界隈27", introduce: "あかんねん", image: "" },
    { name: "情報理工底辺界隈28", introduce: "ウェイよ", image: "" },
    { name: "情報理工底辺界隈29", introduce: "・・・", image: "" },
    { name: "情報理工底辺界隈30", introduce: "・・・", image: "" }
  ]
)
user1 = User.new(email: "a@a.com", encrypted_password: "hogehoge")
user1.save
user2 = User.new(email: "b@b.com", encrypted_password: "hogehoge")
user2.save
user3 = User.new(email: "c@c.com", encrypted_password: "hogehoge")
user3.save
user4 = User.new(email: "d@d.com", encrypted_password: "hogehoge")
user4.save
user5 = User.new(email: "e@e.com", encrypted_password: "hogehoge")
user5.save
user6 = User.new(email: "f@f.com", encrypted_password: "hogehoge")
user6.save
user7 = User.new(email: "g@g.com", encrypted_password: "hogehoge")
user7.save
user8 = User.new(email: "h@h.com", encrypted_password: "hogehoge")
user8.save
user9 = User.new(email: "i@i.com", encrypted_password: "hogehoge")
user9.save
user10 = User.new(email: "j@j.com", encrypted_password: "hogehoge")
user10.save
user11 = User.new(email: "k@k.com", encrypted_password: "hogehoge")
user11.save
user12 = User.new(email: "l@l.com", encrypted_password: "hogehoge")
user12.save
user13 = User.new(email: "m@m.com", encrypted_password: "hogehoge")
user13.save
user14 = User.new(email: "n@n.com", encrypted_password: "hogehoge")
user14.save
user15 = User.new(email: "o@o.com", encrypted_password: "hogehoge")
user15.save
user16 = User.new(email: "p@p.com", encrypted_password: "hogehoge")
user16.save
user17 = User.new(email: "q@q.com", encrypted_password: "hogehoge")
user17.save
user18 = User.new(email: "r@r.com", encrypted_password: "hogehoge")
user18.save
user19 = User.new(email: "s@s.com", encrypted_password: "hogehoge")
user19.save
user20 = User.new(email: "t@t.com", encrypted_password: "hogehoge")
user20.save
user21 = User.new(email: "u@u.com", encrypted_password: "hogehoge")
user21.save
user22 = User.new(email: "v@v.com", encrypted_password: "hogehoge")
user22.save
user23 = User.new(email: "w@w.com", encrypted_password: "hogehoge")
user23.save
user24 = User.new(email: "x@x.com", encrypted_password: "hogehoge")
user24.save
user25 = User.new(email: "y@y.com", encrypted_password: "hogehoge")
user25.save
user26 = User.new(email: "z@z.com", encrypted_password: "hogehoge")
user26.save
user27 = User.new(email: "aa@aa.com", encrypted_password: "hogehoge")
user27.save
user28 = User.new(email: "ab@ab.com", encrypted_password: "hogehoge")
user28.save
user29 = User.new(email: "ac@ac.com", encrypted_password: "hogehoge")
user29.save
user30 = User.new(email: "ad@ad.com", encrypted_password: "hogehoge")
user30.save

Member.create(
  [
    { user_id: 1, group_id: 1, role: 0 },
    { user_id: 1, group_id: 2, role: 0 },
    { user_id: 1, group_id: 3, role: 0 },
    { user_id: 1, group_id: 4, role: 0 },
    { user_id: 1, group_id: 5, role: 0 },
    { user_id: 2, group_id: 1, role: 0 },
    { user_id: 2, group_id: 2, role: 0 },
    { user_id: 2, group_id: 3, role: 0 },
    { user_id: 2, group_id: 4, role: 0 },
    { user_id: 2, group_id: 5, role: 0 },
    { user_id: 3, group_id: 1, role: 0 },
    { user_id: 3, group_id: 2, role: 0 },
    { user_id: 3, group_id: 3, role: 0 },
    { user_id: 3, group_id: 4, role: 0 },
    { user_id: 3, group_id: 5, role: 0 },
    { user_id: 4, group_id: 1, role: 0 },
    { user_id: 4, group_id: 1, role: 0 },
    { user_id: 4, group_id: 2, role: 0 },
    { user_id: 4, group_id: 3, role: 0 },
    { user_id: 4, group_id: 4, role: 0 },
    { user_id: 4, group_id: 5, role: 0 },
    { user_id: 5, group_id: 1, role: 0 },
    { user_id: 5, group_id: 2, role: 0 },
    { user_id: 5, group_id: 3, role: 0 },
    { user_id: 5, group_id: 4, role: 0 },
    { user_id: 5, group_id: 5, role: 0 },
    { user_id: 6, group_id: 1, role: 0 },
    { user_id: 6, group_id: 2, role: 0 },
    { user_id: 6, group_id: 3, role: 0 },
    { user_id: 6, group_id: 4, role: 0 },
    { user_id: 6, group_id: 5, role: 0 },
    { user_id: 7, group_id: 1, role: 0 },
    { user_id: 7, group_id: 2, role: 0 },
    { user_id: 7, group_id: 3, role: 0 },
    { user_id: 7, group_id: 4, role: 0 },
    { user_id: 7, group_id: 5, role: 0 },
    { user_id: 8, group_id: 1, role: 0 },
    { user_id: 8, group_id: 2, role: 0 },
    { user_id: 8, group_id: 3, role: 0 },
    { user_id: 8, group_id: 4, role: 0 },
    { user_id: 8, group_id: 5, role: 0 },
    { user_id: 9, group_id: 1, role: 0 },
    { user_id: 9, group_id: 2, role: 0 },
    { user_id: 9, group_id: 3, role: 0 },
    { user_id: 9, group_id: 4, role: 0 },
    { user_id: 9, group_id: 5, role: 0 },
    { user_id: 10, group_id: 1, role: 0 },
    { user_id: 10, group_id: 2, role: 0 },
    { user_id: 10, group_id: 3, role: 0 },
    { user_id: 10, group_id: 4, role: 0 },
    { user_id: 10, group_id: 5, role: 0 },
    { user_id: 11, group_id: 1, role: 0 },
    { user_id: 11, group_id: 2, role: 0 },
    { user_id: 11, group_id: 3, role: 0 },
    { user_id: 11, group_id: 4, role: 0 },
    { user_id: 11, group_id: 5, role: 0 },
    { user_id: 12, group_id: 1, role: 0 },
    { user_id: 12, group_id: 2, role: 0 },
    { user_id: 12, group_id: 3, role: 0 },
    { user_id: 12, group_id: 4, role: 0 },
    { user_id: 12, group_id: 5, role: 0 },
    { user_id: 13, group_id: 1, role: 0 },
    { user_id: 13, group_id: 2, role: 0 },
    { user_id: 13, group_id: 3, role: 0 },
    { user_id: 13, group_id: 4, role: 0 },
    { user_id: 13, group_id: 5, role: 0 },
    { user_id: 14, group_id: 1, role: 0 },
    { user_id: 14, group_id: 2, role: 0 },
    { user_id: 14, group_id: 3, role: 0 },
    { user_id: 14, group_id: 4, role: 0 },
    { user_id: 14, group_id: 5, role: 0 },
    { user_id: 15, group_id: 1, role: 0 },
    { user_id: 15, group_id: 2, role: 0 },
    { user_id: 15, group_id: 3, role: 0 },
    { user_id: 15, group_id: 4, role: 0 },
    { user_id: 15, group_id: 5, role: 0 },
    { user_id: 16, group_id: 6, role: 0 },
    { user_id: 16, group_id: 7, role: 0 },
    { user_id: 16, group_id: 8, role: 0 },
    { user_id: 16, group_id: 9, role: 0 },
    { user_id: 16, group_id: 10, role: 0 },
    { user_id: 17, group_id: 6, role: 0 },
    { user_id: 17, group_id: 7, role: 0 },
    { user_id: 17, group_id: 8, role: 0 },
    { user_id: 17, group_id: 9, role: 0 },
    { user_id: 17, group_id: 10, role: 0 },
    { user_id: 18, group_id: 6, role: 0 },
    { user_id: 18, group_id: 7, role: 0 },
    { user_id: 18, group_id: 8, role: 0 },
    { user_id: 18, group_id: 9, role: 0 },
    { user_id: 18, group_id: 10, role: 0 },
    { user_id: 19, group_id: 6, role: 0 },
    { user_id: 19, group_id: 7, role: 0 },
    { user_id: 19, group_id: 8, role: 0 },
    { user_id: 19, group_id: 9, role: 0 },
    { user_id: 19, group_id: 10, role: 0 },
    { user_id: 20, group_id: 6, role: 0 },
    { user_id: 20, group_id: 7, role: 0 },
    { user_id: 20, group_id: 8, role: 0 },
    { user_id: 20, group_id: 9, role: 0 },
    { user_id: 20, group_id: 10, role: 0 },
    { user_id: 21, group_id: 6, role: 0 },
    { user_id: 21, group_id: 7, role: 0 },
    { user_id: 21, group_id: 8, role: 0 },
    { user_id: 21, group_id: 9, role: 0 },
    { user_id: 21, group_id: 10, role: 0 },
    { user_id: 22, group_id: 6, role: 0 },
    { user_id: 22, group_id: 7, role: 0 },
    { user_id: 22, group_id: 8, role: 0 },
    { user_id: 22, group_id: 9, role: 0 },
    { user_id: 22, group_id: 10, role: 0 },
    { user_id: 23, group_id: 6, role: 0 },
    { user_id: 23, group_id: 7, role: 0 },
    { user_id: 23, group_id: 8, role: 0 },
    { user_id: 23, group_id: 9, role: 0 },
    { user_id: 23, group_id: 10, role: 0 },
    { user_id: 24, group_id: 6, role: 0 },
    { user_id: 24, group_id: 7, role: 0 },
    { user_id: 24, group_id: 8, role: 0 },
    { user_id: 24, group_id: 9, role: 0 },
    { user_id: 24, group_id: 10, role: 0 },
    { user_id: 25, group_id: 6, role: 0 },
    { user_id: 25, group_id: 7, role: 0 },
    { user_id: 25, group_id: 8, role: 0 },
    { user_id: 25, group_id: 9, role: 0 },
    { user_id: 25, group_id: 10, role: 0 },
    { user_id: 26, group_id: 11, role: 0 },
    { user_id: 26, group_id: 12, role: 0 },
    { user_id: 26, group_id: 13, role: 0 },
    { user_id: 26, group_id: 14, role: 0 },
    { user_id: 26, group_id: 15, role: 0 },
    { user_id: 27, group_id: 11, role: 0 },
    { user_id: 27, group_id: 12, role: 0 },
    { user_id: 27, group_id: 13, role: 0 },
    { user_id: 27, group_id: 14, role: 0 },
    { user_id: 27, group_id: 15, role: 0 },
    { user_id: 28, group_id: 11, role: 0 },
    { user_id: 28, group_id: 12, role: 0 },
    { user_id: 28, group_id: 13, role: 0 },
    { user_id: 28, group_id: 14, role: 0 },
    { user_id: 28, group_id: 15, role: 0 },
    { user_id: 29, group_id: 11, role: 0 },
    { user_id: 29, group_id: 12, role: 0 },
    { user_id: 29, group_id: 13, role: 0 },
    { user_id: 29, group_id: 14, role: 0 },
    { user_id: 29, group_id: 15, role: 0 },
    { user_id: 30, group_id: 11, role: 0 },
    { user_id: 30, group_id: 12, role: 0 },
    { user_id: 30, group_id: 13, role: 0 },
    { user_id: 30, group_id: 14, role: 0 },
    { user_id: 30, group_id: 15, role: 0 }
  ]
)
Task.create(
  [
    { title: "a", content: "a", task_type: 0, is_finished: false, on_deadline: "2020-01-01", group_id: 1 },
    { title: "b", content: "b", task_type: 0, is_finished: false, on_deadline: "2020-01-01", group_id: 1 },
    { title: "c", content: "c", task_type: 0, is_finished: false, on_deadline: "2020-01-01", group_id: 1 },
    { title: "d", content: "d", task_type: 0, is_finished: false, on_deadline: "2020-01-01", group_id: 1 },
    { title: "e", content: "e", task_type: 0, is_finished: false, on_deadline: "2020-01-01", group_id: 1 }
  ]
)
