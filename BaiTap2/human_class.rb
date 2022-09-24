class Human
    def initialize(name, gender, age, height, weight, phone, email)
        @name = name.to_s
        @gender = gender.to_s
        @age = age.to_i
        @height = height.to_f
        @weight = weight.to_f
        @phone = phone.to_i
        @email = email.to_s
    end
    def display
        puts "- Name: #{@name} - Gender: #{@gender}- Age: #{@age} - Height: #{@height} - Weight: #{@weight} - Phone: #{@phone} - Email: #{@email}"

    end
end
class Student < Human 
    attr_accessor :school, :classs, :studentId, :grade1, :grade2, :grade3

    def inputInfo(school, classs, studentId, grade1, grade2, grade3)
        @school = school
        @classs = classs
        @studentId = studentId.to_i
        @grade1 = grade1.to_f
        @grade2 = grade2.to_f
        @grade3 = grade3.to_f
    end

    def avgScore()
       (@grade1 + @grade2 + @grade3) / 3
    end

    def display
        super
        puts "- School: #{@school} - Class: #{@classs}  - StudentId: #{@studentId} - GRADE: #{avgScore()}" 
    end
end

#Tạo các đối tượng Student
sv1 = Student.new("Hoa1","nam","21","168","60","123456789","hoa1@email.com")
sv1.inputInfo("UTE","RUBY","191505310217","9.6","10","9.7")

sv2 = Student.new("Hoa2","nam","21","168","60","123456789","hoa2@email.com")
sv2.inputInfo("UTE","RUBY","191505310217","9","8","7")

sv3 = Student.new("Hoa3","nam","21","168","60","123456789","hoa3@email.com")
sv3.inputInfo("UTE","RUBY","191505310217","9","10","9")

#Gán các đối tượng Student vào 1 danh sách
studentList = []
studentList << sv1
studentList << sv2
studentList << sv3

puts "Danh sách sinh viên trước khi sắp xếp"
studentList.each do |val|
    puts "#{val.display}"
end

#Sắp xếp giảm dần theo điểm trung bình
list = studentList.sort_by { |stu| -stu.avgScore() }
puts "================================================================"
puts "Danh sách sinh viên sau khi sắp xếp"
list.each do |val|
    puts "#{val.display}"
end