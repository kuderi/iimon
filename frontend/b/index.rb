# 各インスタンス、インスタンス変数の値の定義
# キーワード変数
menu1 = Menu.new (name: "ピザ" , price: 800)
menu2 = Menu.new (name: "すし" , price: 1000)
menu3 = Menu.new (name: "コーラ" , price: 300)
menu4 = Menu.new (name: "お茶" , price: 200)

# 配列
menus = [menu1, menu2, menu3, menu4]
# indexをループ外に
index = 0
menus.each do |menu|
# menuという変数を用いてinfoメソッドを呼び出している
    puts "#{index}. #{menu.info}"
    index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"



