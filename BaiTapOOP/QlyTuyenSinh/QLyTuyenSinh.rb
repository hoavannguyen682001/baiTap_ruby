class Candidate
    attr_accessor :id, :name, :address, :priority

    def inputInfo()
        puts ("Nhap SBD thi sinh: ")
        @id = gets.chomp()
        puts ("Nhap ten thi sinh: ")
        @name = gets.chomp()
        puts ("Nhap dia chi thi sinh: ")
        @address = gets.chomp()
        puts ("Nhap do uu tien cua thi sinh: ")
        @priority = gets.chomp()
    end

    def display
        puts ("- CandidateID: #{@id} - Name: #{@name} - Address: #{@address} - Priority: #{@priority}")
    end

end

class CandidateA < Candidate
    attr_accessor :math, :physics, :chemistry
    def initialize
        @math = "Math"
        @physic = "Physics"
        @chemistry = "Chemistry"
    end

    def display
        super
        puts ("- Subject A: Math - Physics - Chemistry")
    end

end

class CandidateB < Candidate
    attr_accessor :math, :chemistry, :biological
    def initialize
        @math = "Math"
        @chemistry = "Chemistry"
        @biological = "Biological"
    end

    def display
        super
        puts ("- Subject B: Math - Chemistry - Biological")
    end
end

class CandidateC < Candidate
    attr_accessor :literaty, :history, :geography
    def initialize
        @literaty = "Literaty"
        @history = "History"
        @geography = "Geography"
    end
    def display
        super
        puts ("- Subject C: Literaty - History - Geography")
    end
end

class ManagerCandidate
    $manage_candidate = Array.new
    def input(object)
        $manage_candidate << object    
    end

    def output()
        $manage_candidate.each do |val|
            puts ("#{val.display}")
        end
    end

    def search(id)
        $manage_candidate.each do |val|
            if(val.id == id) then
                puts ("#{val.display}")
            end
        end
    end
end

$manage = ManagerCandidate.new

#Function Nhập tài liệu 
def inputCandidate()
    puts ("a. Them Thi Sinh Khoi A")
    puts ("b. Them Thi Sinh Khoi B")
    puts ("c. Them Thi Sinh Khoi C")
    print "Lua chon (a - Khoi A, b - Khoi B, c - Khoi C): "
    choice = gets.chomp()
    case choice
        when "a"
            candidateA = CandidateA.new
            candidateA.inputInfo()
            $manage.input(candidateA)
        when "b"
            candidateB = CandidateB.new
            candidateB.inputInfo()
            $manage.input(candidateB)
        when "c"
            candidateC = CandidateC.new
            candidateC.inputInfo()
            $manage.input(candidateC)
    puts ("Them thanh cong")
    puts ("================================================================")
    end
end


while(true)
    puts ("1. Them Moi Thi Sinh")
    puts ("2. Xem Thong Tin Thi Sinh va Khoi Thi")
    puts ("3. Tim Kiem Theo SBD")
    puts ("Nhap bat ky de thoat")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
    when 1 
        inputCandidate()
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        $manage.output()
        puts ("================================================================")
    when 3
        puts ("Nhap SBD: ")
        id = gets.chomp()
        $manage.search(id)
    else
        puts ("Thoat!")
        break
    end
end


