class Student
    attr_accessor :name, :age, :class

    def inputStudent
        puts("Nhap Ho va Ten: ")
        @name = gets.chomp()
        puts("Tuoi: ")
        @age = gets.chomp().to_i
        puts("Nhap lop: ")
        @class= gets.chomp()
    end

    def display
        puts("- Name: #{@name} - Age: #{@age} - Class: #{@class}")
    end

end

class Card < Student
    attr_accessor :cardID, :borrowDate, :paymentDate, :bookID

    def inputCard
        puts("Nhap ma the muon: ")
        @cardID = gets.chomp()
        puts("Ngay muon sach: ")
        @borrowDate = gets.chomp().to_i
        puts("Han tra: ")
        @paymentDate = gets.chomp().to_i
        puts("Nhap so hieu sach: ")
        @bookID = gets.chomp()
    end

    def display
        super
        puts("- Card ID: #{@cardID} - BorrowDate: #{@borrowDate} - PaymentDate: #{@paymentDate} - BookID: #{@bookID}")
    end
end

class ManagerCard
    $manage_card = Array.new

    def input(object)
        $manage_card << object
    end

    def output()
        $manage_card.each do |val|
            puts("#{val.display}")
        end
    end

    def delByID(id)
        $manage_card.each do |val|
            if(val.cardID == id) then 
                $manage_card.delete(val)
                return true
            end
        end
        return false
    end
end

$manage = ManagerCard.new

while(true)
    puts ("1. Them Moi The Muon")
    puts ("2. Xem Thong Tin The Muon")
    puts ("3. Xoa Theo Ma Phieu Muon")
    puts ("Nhap bat ky de thoat")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
    when 1 
        card = Card.new
        card.inputStudent
        card.inputCard
        $manage.input(card)
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        $manage.output
        puts ("================================================================")
    when 3
        puts("Nhap ma Phieu Muon can xoa: ")
        id = gets.chomp()
        $manage.delByID(id) ? puts("Xoa thanh cong") : puts("Khong tim thay")
        $manage.output
    else
        puts ("Thoat!")
        break
    end
end