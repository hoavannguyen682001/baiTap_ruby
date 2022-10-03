class Document
    attr_accessor :docID, :nxb, :number

    def checkDocID(id)
        if($manager_document.length == 0) then
            return true
        end

        $manager_document.each do |val| 
            if(val.docID == id) then
                return false
            end
        end
        return true
    end

    def inputDocument()
        loop do
                print ("Nhap ma sach: ")
                @docID = gets.chomp()
                if(checkDocID(@docID) == false) then
                    puts ("Ma sach trung. Vui long nhap lai")
                end
            break if checkDocID(@docID)
        end
        
        print ("Nhap nha xuat ban: ")
        @nxb = gets.chomp()
        print ("Nhap so luong xuat ban: ")
        @number = gets.chomp().to_i
    end 


    def display
        puts ("-DocumentID: #{@docID} - Nxb: #{@nxb} - Number: #{@number}")
    end
end

class Book < Document
    attr_accessor :numPages, :author

    def inputBook()
        print ("Nhap Ten tac gia: ")
        @author = gets.chomp()
        print ("Nhap so trang: ")
        @numPages = gets.chomp().to_i
    end

    def display
        super 
        puts ("-NumPages: #{@numPages} - Author: #{@author} - Type: Book")
    end
end

class Journal < Document
    attr_accessor :issueNum, :monthIssue

    def inputJournal()
        print ("Nhap so phat hanh: ")
        @issueNum = gets.chomp()
        print ("Nhap thang phat hanh: ")
        @monthIssue = gets.chomp().to_i
    end

    def display
        super
        puts ("-IssueNum: #{@issueNum} - Month Issue: #{@monthIssue} - Type: Journal")
        
    end
end

class NewSpaper < Document
    attr_accessor :dayIssue

    def inputNewSpaper()
        puts ("Nhap ngay phat hanh: ")
        @dayIssue = gets.chomp()
    end

    def display
        super
        puts ("-DayIssue: #{@dayIssue} - Type: NewSpaper")
    end
end

class ManagerDocument
    $manager_document = Array.new

    def input(object)
        $manager_document << object
    end

    def outputInfo
        $manager_document.each do |val|
            puts ("#{val.display}")
        end
    end

    

    def delDocument(id)
        $manager_document.each do |val|
            if(val.docID == id) then
                $manager_document.delete(val)
                return true
            end
        end
        return false
    end

    def searchDocument(typeDoc, id)
        $manager_document.each do |val|
            if((val.class.to_s == typeDoc) && (val.docID == id)) then
                puts ("#{val.display}")
            else
                puts("#{val.class} - #{typeDoc}")
            end
        end
    end

end

$managerDoc = ManagerDocument.new


def inputByTypeDoc()
    puts ("a. Them Moi Tai Lieu Sach")
    puts ("b. Them Moi Tai Lieu Bao,")
    puts ("c. Them Moi Tai Lieu Tap Chi")
    print "Them moi tai lieu loai (a - Sach, b - Bao, c - Tap Chi): "
    choice = gets.chomp()
    case choice
        when "a"
            book = Book.new
            book.inputDocument()
            book.inputBook()
            $managerDoc.input(book)
        when "b"
            journal = Journal.new
            journal.inputDocument()
            journal.inputJournal()
            $managerDoc.input(journal)
        when "c"
            newSpaper = NewSpaper.new
            newSpaper.inputDocument()
            newSpaper.inputNewSpaper()
            $managerDoc.input(newSpaper)
    puts ("Them thanh cong")
    puts ("================================================================")
    end
end



def searachByTypeDoc()
    puts ("a. Tim kiem Sach")
    puts ("b. Tim kiem Bao,")
    puts ("c. Tim kiem Tap Chi")
    choice = gets.chomp()
    case choice
        when "a"
            puts ("Nhap ma tai lieu muon tim: ")
            id = gets.chomp()
            $managerDoc.searchDocument("Book",id)
        when "b"
            puts ("Nhap ma tai lieu muon tim: ")
            id = gets.chomp()
            $managerDoc.searchDocument("Journal",id)
        when "c"
            puts ("Nhap ma tai lieu muon tim: ")
            id = gets.chomp()
            $managerDoc.searchDocument("NewSpaper",id)
    puts ("================================================================")
    end
end


while(true)
    puts ("1. Them Moi Tai Lieu: Sach, Bao, Tap Chi")
    puts ("2. Xoa Tai Lieu Theo Ma")
    puts ("3. Hien Thi Thong Tin Tai Lieu")
    puts ("4. Tim Kiem Tai Lieu Theo Loai")
    puts ("***Nhap bat ky de thoat***")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose = gets.chomp().to_i
    case choose
        when 1 
            inputByTypeDoc()
        when 2
            puts ("Nhap ma tai lieu muon xoa: ")
            id = gets.chomp()
            $managerDoc.delDocument(id) ? puts("Xoa thanh cong") : puts("Khong tim thay ma tai lieu")
            puts ("================================================================")
        when 3
            puts ("Thong tin tai lieu: ")
            $managerDoc.outputInfo
        when 4
           searachByTypeDoc()
        else
            puts ("Thoat!")
            break   
    end
end

