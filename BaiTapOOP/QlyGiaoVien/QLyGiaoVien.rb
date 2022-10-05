class Person
    attr_accessor :name, :age, :address, :teacherID

    def inputPerson
        puts("Nhap Ho va Ten: ")
        @name = gets.chomp()
        puts("Tuoi: ")
        @age = gets.chomp().to_i
        puts("Nhap que quan:")
        @address = gets.chomp()
        puts("Nhap ma giao vien")
        @teacherID = gets.chomp()
    end

    def display
        puts("- Name: #{@name} - Age: #{@age} - Address: #{@address} - Teacher ID: #{@teacherID}")
    end

end

class Teacher < Person
    attr_accessor :salary, :bonus, :penaty, :realSalary

    def inputTeacher
        puts("Nhap luong cung: ")
        @salary = gets.chomp().to_f
        puts("Nhap luong thuong: ")
        @bonus = gets.chomp().to_f
        puts("Nhap luong phat: ")
        @penaty = gets.chomp().to_f
    end

    def calRealSalary()
        return @realSalary = @salary + @bonus - @penaty
    end

    def display
        super
        puts("- Salary: #{@salary} - Bonus: #{@bonus} - Penaty: #{@penaty} - RealSalary: #{calRealSalary()}")
    end

end

class ManageTeacher
    $manage_teacher = Array.new
    
    def input(object)
        $manage_teacher << object
    end   

    def output()
        $manage_teacher.each do |val|
            puts("#{val.display}")
        end
    end

    def delTeacher(id)
        $manage_teacher.each do |val|
            if(val.teacherID == id) then
                $manage_teacher.delete(val)
            end
        end
    end

end

$manage = ManageTeacher.new

while(true)
    puts ("1. Them Moi Giao Vien")
    puts ("2. Xem Thong Tin Giao Vien")
    puts ("3. Xoa Giao Vien Theo Ma")
    puts ("Nhap bat ky de thoat")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
    when 1 
        teacher = Teacher.new
        teacher.inputPerson
        teacher.inputTeacher
        $manage.input(teacher)
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        $manage.output
        puts ("================================================================")
    when 3
        puts("Nhap Ma Giao Vien Can Xoa: ")
        id = gets.chomp()
        $manage.delTeacher(id) ? puts("Xoa thanh cong") : puts("Khong tim thay")
        $manage.output
        puts ("================================================================")
    else
        puts ("Thoat!")
        break
    end
end




