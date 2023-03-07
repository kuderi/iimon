class Menu
    attr_accessor :name
    attr_accessor :price

    def initialize (name: , price:)
        puts
    end

    def info 
        puts #{name}
    end

end

# インスタンスの生成
# ここでは渡す引数を指定しているだけ
menu1 = Menu.new (name: "ピザ" , price: 800 )
menu2 = Menu.new (name: "すし" , price: 1000 )
menu3 = Menu.new (name: "ピザ" , price: 800 )
menu4 = Menu.new (name: "ピザ" , price: 800 )


menus = [menu1, menu2, menu3, menu4]

index = 0
menus.each do |menu|
    puts "#{index}. #{menu.info}"
    index += 1
end





