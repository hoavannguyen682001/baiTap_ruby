# Tạo class sinhvien
# Thiết kế các phương thức cơ bản của class
# Tạo phương thức nhập điểm Toán Lý Hoá của sinh viên, tính điểm trung bình
# In ra các thông tin của sinh viên

class SinhVien
    def initialize (name, id ,age)
        @name = name.to_s
        @age = age.to_i
        @id = id.to_s
        @math
        @physic
        @chemistry 
    end

    def inputInfo
        puts "Nhap diem Toan:"
        @math = gets.chomp().to_f
        puts "Nhap diem Ly:"
        @physic = gets.chomp().to_f
        puts "Nhap diem Hoa:"
        @chemistry = gets.chomp().to_f
    end

    def avgScore
        (@math + @physic + @chemistry) / 3
    end

    def display
        puts "Thong tin sinh vien:"
        puts "Ho va ten: #{@name}"
        puts "Ma sinh vien: #{@id}"
        puts "Tuoi: #{@age}"
        puts "Diem Toan: #{@math}"
        puts "Diem Ly: #{@physic}"
        puts "Diem Hoa: #{@chemistry}"
        puts "Diem trung binh: #{avgScore}"
    end 
end
 
sinhvien = SinhVien.new("Nguyen van hoa",191505310217, 21)

sinhvien.inputInfo
sinhvien.display
