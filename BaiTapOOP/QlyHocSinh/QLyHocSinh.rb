class Student
    attr_accessor :name, :age, :address, :class

    def inputInfo
        puts("Nhap Ho va Ten: ")
        @name = gets.chomp()
        puts("Tuoi: ")
        @age = gets.chomp().to_i
        puts("Nhap que quan:")
        @address = gets.chomp()
        puts("Nhap lop: ")
        @class= gets.chomp().to_i
    end

    def display
        puts("- Name: #{@name} - Age :#{@age} - Address: #{@address} - Class: #{@class}")    
    end

end

class School
    $manage_student = Array.new

    def input(object)
        $manage_student << object 
    end

    def output
        $manage_student.each do |val|
            puts("#{val.display}")
        end
    end

    def getStudentByAge()
        pupil = $manage_student.select{|val| val if val.age == 20}
        pupil.each do |val|
            puts("#{val.display}")
        end
    end

    def countStudentByAge()
        count_student = $manage_student.select{|val| val if val.age ==23 && val.address == "Da Nang"}
        puts("So luong hoc sinh 23 tuoi va que quan o Da Nang: #{count_student.length}")
    end
end

$manage = School.new


while(true)
    puts ("1. Them Moi Hoc Sinh")
    puts ("2. Xem Thong Tin Hoc Sinh")
    puts ("3. Hien Thi Hoc Sinh 20 tuoi")
    puts ("4. So Luong Hoc Sinh 23 tuoi va que quan o Da Nang")
    puts ("Nhap bat ky de thoat")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
    when 1 
        student = Student.new
        student.inputInfo
        $manage.input(student)
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        $manage.output
        puts ("================================================================")
    when 3
        $manage.getStudentByAge()
    when 4
        $manage.countStudentByAge()
    else
        puts ("Thoat!")
        break
    end
end
