class Officer

    attr_accessor :name_217, :age_217, :gender_217, :address_217
    def initialize(name_217, age_217, gender_217,address_217)
        @name_217 = name_217
        @age_217 = age_217.to_i
        @gender_217 = gender_217
        @address_217 = address_217
    end

    def display
        puts ("-Name: #{@name_217} -Age: #{@age_217} -Gender: #{@gender_217} -Address: #{@address_217}")
    end
end

class Worker < Officer
    attr_accessor :level_217

    def inputInfo(level_217)
        @level_217 = level_217.to_i
    end

    def display
        super
        puts ("-Level: #{@level_217}")
    end
end

class Engineer < Officer
    attr_accessor :brach_217

    def inputInfo(brach_217)
        @brach_217 = brach_217
    end
    def display
        super
        puts ("-Brach: #{@brach_217}")
    end
end

class Staff < Officer
    attr_accessor :task_217

    def inputInfo(task_217)
        @task_217 = task_217
    end

    def display
        super
        puts ("-Task: #{@task_217}")
    end
end



class ManagerOfficer
    $array_officer_217 = Array.new

    def inputOfficer(object_217)
        $array_officer_217 << object_217
    end

    def outputInfo
        puts ("Thong tin cac can bo da them")
        $array_officer_217.each do |val_217|
            puts "#{val_217.display}"
        end
    end
    def search(sname_217)
        $array_officer_217.each do |val_217|
            if(val_217.name_217 == sname_217)
                puts "#{val_217.display}"
            end
        end
    end

end
    officer1_217 = Worker.new("Hoa1", 21,"nam","Da Nang")
    officer1_217.inputInfo(10)

    officer2_217 = Staff.new("HoaNguyen", 21,"nam","Da Nang hai chau")
    officer2_217.inputInfo("Sinh Vien")

    officer3_217 = Engineer.new("HoaVan", 21,"nam","Da Nang Thanh Binh")
    officer3_217.inputInfo("Brach")

    manager_officer_217 = ManagerOfficer.new

    while(true)
        puts ("1. Them Moi Can Bo")
        puts ("2. Xem Thong Tin Can Bo")
        puts ("3. Tim Kiem Can BO")
        puts ("Nhap bat ky de thoat")
        puts ("================================================================")
        print "Nhap lua chon cua ban: "

        choose_217 = gets.chomp().to_i
        case choose_217
        when 1 
            manager_officer_217.inputOfficer(officer1_217)
            manager_officer_217.inputOfficer(officer2_217)
            manager_officer_217.inputOfficer(officer3_217)
            puts ("Them thanh cong")
            puts ("================================================================")
        when 2
            manager_officer_217.outputInfo
            puts ("================================================================")
        when 3
            puts ("Nhap ten: ")
            name_217 = gets.chomp()
            manager_officer_217.search(name_217)
        else
            puts ("Thoat!")
            break
        end
    end








