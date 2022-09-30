class Officer

    def initialize(name, age, gender,address)
        @name = name
        @age = age.to_i
        @gender = gender
        @address = address
    end

    def display
        puts ("-Name: #{@name} -Age: #{@age} -Gender: #{@gender} -Address: #{@address}")
    end
end

class Worker < Officer
    attr_accessor :level

    def inputInfo(level)
        @level = level.to_i
    end

    def display
        super
        puts ("-Level: #{@level}")
    end
end

class Engineer < Officer
    attr_accessor :brach

    def inputInfo(brach)
        @brach = brach
    end
    def display
        super
        puts ("-Brach: #{@brach}")
    end
end

class Staff < Officer
    attr_accessor :task

    def inputInfo(task)
        @task = task
    end

    def display
        super
        puts ("-Task: #{@task}")
    end
end



class ManagerOfficer
    $array_officer = Array.new

    def inputOfficer(object)
        $array_officer << object
    end

    def outputInfo
        $array_officer.each do |val|
            puts "#{val.display}"
        end
    end
    def search(name)
        if(array_officer.include?(name))
            
        end
    end

end
    officer1 = Worker.new("Hoa1", 21,"nam","Da Nang")
    officer1.inputInfo(10)

    officer2 = Staff.new("Hoa2", 21,"nam","Da Nang")
    officer2.inputInfo("task")

    officer3 = Engineer.new("Hoa3", 21,"nam","Da Nang")
    officer3.inputInfo("brach")
    while(true)
        puts ("1. Them Moi Can Bo")
        puts ("2. Xem Thong Tin Can Bo")
        puts ("3. Tim Kiem Can BO")

        choose = gets.chomp().to_i
        case choose
        when 1 
            manager_officer = ManagerOfficer.new
            manager_officer.inputOfficer(officer1)
            manager_officer.inputOfficer(officer2)
            manager_officer.inputOfficer(officer3)
            puts ("Them thanh cong")
            puts ("================================================================")
        when 2
            manager_officer.outputInfo
            puts ("================================================================")
        when 3
            puts ("Tim kiem")
        else
            puts ("Khong hop le")
        end
    end








