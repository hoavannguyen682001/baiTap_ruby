class Room
    attr_accessor :category, :price 

    def initialize(category, price)
        @category = category
        @price = price.to_i
    end
    def display
        puts ("- Category: #{@category} - Price: #{@price}")
    end
    
end

# class RoomA < Room
#     def initialize(category, price)
#         super("A", "500")
#     end
#     def display
#         super
#     end
    
# end

# class RoomB < Room
#     def initialize(category, price)
#         super("B", "300")
#     end
#     def display
#         super
#     end
# end

# class RoomC < Room
#     def initialize(category, price)
#         super("C", "100")
#     end
#     def display
#         super
#     end
# end

class Person < Room
    attr_accessor :name, :age, :id, :numberRent
    def inputInfo
        puts ("Nhap Ho va Ten: ")
        @name = gets.chomp()
        puts ("Nhap Tuoi: ")
        @age= gets.chomp().to_i
        puts ("Nhap so chung minh nhan dan: ")
        @id = gets.chomp().to_i
        puts ("Nhap so ngay thue phong: ")
        @numberRent = gets.chomp().to_i
    end

    def display
        puts ("- Ho va Ten: #{@name} - Tuoi: #{@age} - CMND: #{@id} - So Ngay Thue: #{@numberRent}")
        super
    end
end

class Hotel
    $manage_hotel = Array.new

    def input(object)
        $manage_hotel << object
    end

    def output
        $manage_hotel.each do |val|
            puts ("#{val.display}")
        end
    end

    def delByID(id)
        $manage_hotel.each do |val|
            if(val.id == id) then
                $manage_hotel.delete(val)
                return true
            end  
        end
        return false
    end

    def calByID(id)
        $manage_hotel.each do |val|
            if(val.id == id) then
                return puts ("Tien Thue Phong cua khach hang: #{val.name} 
                            voi so ngay thue phong: #{val.numberRent} - So tien thue phong: #{val.price}          
                            Ket Qua: #{val.numberRent * val.price} ") 
            end  
        end
    end
end

$manage = Hotel.new


def inputRoom()
    puts ("a. Phong A")
    puts ("b. Phong B")
    puts ("c. Phong C")
    print "Lua chon (a - Phong A, b - Phong B, c - Phong C): "
    choice = gets.chomp()
    case choice
        when "a"
            person = Person.new("A", "500")
            person.inputInfo
            $manage.input(person)
        when "b"
            person = Person.new("B", "300")
            person.inputInfo
            $manage.input(person)
        when "c"
            person = Person.new("C", "100")
            person.inputInfo
            $manage.input(person)
    puts ("Them thanh cong")
    puts ("================================================================")
    end
end


while(true)
    puts ("1. Them moi khach thue phong")
    puts ("2. Xem thong tin khach thue phong")
    puts ("3. Xoa khach thue phong theo so CMND")
    puts ("4. Tinh tien thue phong")
    puts ("***Nhap bat ky de thoat***")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
        when 1 
            inputRoom()
        when 2
            puts ("Thong tin khach thue phong")
            $manage.output
            puts ("================================================================")
        when 3
            puts ("Nhap so CMND cua khach hang can xoa: ")
            id = gets.chomp().to_i
            $manage.delByID(id) ? puts("Xoa thanh cong") : puts("Khong tim thay so CMND")
        when 4
            puts ("Nhap so CMND: ")
            id = gets.chomp().to_i
            $manage.calByID(id)
        else
            puts ("Thoat!")
            break   
    end
end

