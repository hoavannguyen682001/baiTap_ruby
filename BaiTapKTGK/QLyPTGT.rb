class Transport
    attr_accessor :maPTGT_217, :hsx_217, :namsx_217, :dongXe_217, :giaBan_217, :bienSo_217, :mauXe_217

    def inputTransport
        puts("Nhap Ma PTGT: ")
        @maPTGT_217 = gets.chomp()
        puts("Nhap Hang San Xuat: ")
        @hsx_217 = gets.chomp()
        puts("Nam San xuat: ")
        @namsx_217 = gets.chomp()
        puts("Dong Xe: ")
        @dongXe_217 = gets.chomp()
        puts("Gia Ban: ")
        @giaBan_217 = gets.chomp()
        puts("Bien So Xe: ")
        @bienSo_217 = gets.chomp()
        puts("Mau Xe: ")
        @mauXe_217 = gets.chomp()
    end

    def display
        puts("Danh Sach PTGT: ")
        puts("- Ma PTGT: #{@maPTGT_217} - Hang SX: #{@hsx_217} - Nam SX: #{@namsx_217} - Dong Xe: #{@dongXe_217} \n - Gia Ban: #{@giaBan_217} - Bien So Xe: #{@bienSo_217} - Mau Sac: #{@mauXe_217}")
    end 
end

class Car < Transport
    attr_accessor :soChoNgoi_217, :kieuDongCo_217, :nguyenLieu_217, :soTuiKhi_217, :ngayDangKiem_217

    def inputCar
        puts("So Cho Ngoi: ")
        @soChoNgoi_217 = gets.chomp().to_i
        puts("Kieu Dong Co: ")
        @kieuDongCo_217 = gets.chomp()
        puts("Nguyen Lieu: ")
        @nguyenLieu_217 = gets.chomp()
        puts("So Tui Khi: ")
        @soTuiKhi_217 = gets.chomp().to_i
        puts("Ngay Dang Kiem: ")
        @ngayDangKiem_217 = gets.chomp()
    end

    def display
        super
        puts("- So Cho Ngoi: #{@soChoNgoi_217} - Kieu Dong Co: #{@kieuDongCo_217} - Nguyen Lieu: #{@nguyenLieu_217} - So Tui Khi: #{@soTuiKhi_217} - Ngay Dang Kiem: #{@ngayDangKiem_217}")
    end

end

class MotoBike < Transport
    attr_accessor :congSuat_217, :dungTich_217

    def inputMoToBike
        puts("Cong Suat: ")
        @congSuat_217 = gets.chomp().to_i
        puts("Dung Tich: ")
        @dungTich_217 = gets.chomp().to_f

    end

    def display
        super
        puts("- Cong Suat: #{@congSuat_217} - Dung Tich: #{@dungTich_217}")
    end
end

class Truck < Transport
    attr_accessor :trongTai_217

    def inputTruck
        puts("Trong Tai Xe: ")
        @trongTai_217 = gets.chomp().to_f
    end

    def display
        super
        puts("- Trpng Tai: #{@trongTai_217}")
    end

end

class ManagerTransport
    $manage_transport_217 = Array.new

    def input(object_217)
        $manage_transport_217 << object_217
    end

    def output()
        $manage_transport_217.each do |val_217|
            puts("#{val_217.display}")
        end
    end

    def delByid_217(id_217)
        $manage_transport_217.each do |val_217|
            if(val_217.maPTGT_217 == id_217) then 
                $manage_transport_217.delete(val_217)
                return true
            end
        end
        return false
    end

    def searchTransport(type,keyword)
        case type
            when "HangSX"
                $manage_transport_217.each do |val_217|
                    if(val_217.hsx_217 == keyword) then 
                       puts("#{val_217.display}")
                    end
                end
            when "MauXe"
                $manage_transport_217.each do |val_217|
                    if(val_217.mauXe_217 == keyword) then 
                       puts("#{val_217.display}")
                    end
                end
            when "BienSo"
                $manage_transport_217.each do |val_217|
                    if(val_217.bienSo_217 == keyword) then 
                       puts("#{val_217.display}")
                    end
                end
        end 
    end
end


$manage_217 = ManagerTransport.new

def inputByTypeTransport()
    puts ("a. Them Moi Xe Oto")
    puts ("b. Them Moi Xe May,")
    puts ("c. Them Moi Xe Tai")
    print "Them moi PTGT (a - Oto, b - Xe May, c - Xe Tai): "
    choice_217 = gets.chomp()
    case choice_217
        when "a"
            car_217 = Car.new
            car_217.inputTransport()
            car_217.inputCar()
            $manage_217.input(car_217)
        when "b"
            motoBike_217 = MotoBike.new
            motoBike_217.inputTransport()
            motoBike_217.inputMoToBike()
            $manage_217.input(motoBike_217)
        when "c"
            truck_217 = Truck.new
            truck_217.inputTransport()
            truck_217.inputTruck()
            $manage_217.input(truck_217)
    puts ("Them thanh cong")
    puts ("================================================================")
    end
end


def searchByTypeTransport()
    puts ("a. Tim kiem Theo Hang San Xuat")
    puts ("b. Tim kiem Mau Xe,")
    puts ("c. Tim kiem Bien So Xe:")
    print "Tim Kiem PTGT PTGT (a - Hang San Xuat , b - Mau Xe, c - Bien So Xe): "
    choice_217 = gets.chomp()
    case choice_217
        when "a"
            puts ("Nhap Hang San Xuat muon tim: ")
            hsx_217 = gets.chomp()
            $manage_217.searchTransport("HangSX",hsx_217)
        when "b"
            puts ("Nhap Nhap Mau Xe muon tim: ")
            mauXe_217 = gets.chomp()
            $manage_217.searchTransport("MauXe",mauXe_217)
        when "c"
            puts ("Nhap Nhap Bien So Xe muon tim: ")
            bienSo_217 = gets.chomp()
            
            $manage_217.searchTransport("BienSo",bienSo_217)
    puts ("================================================================")
    end
end

while(true)
    puts ("1. Them Moi PTGT: Oto, Xe May, Xe Tai")
    puts ("2. Hien Thi Thong Tin PTGT")
    puts ("3. Xoa cac PTGT Theo Ma PTGT:")
    puts ("4. Tim Kiem PTGT")
    puts ("***Nhap bat ky de thoat***")
    puts ("================================================================")
    print "Nhap lua chon cua ban: "

    choose_217 = gets.chomp().to_i
    case choose_217
        when 1 
            inputByTypeTransport()
            puts ("================================================================")
        when 2
            $manage_217.output
            puts ("================================================================")
        when 3
            puts("Nhap ma PTGT can xoa: ")
            id_217 = gets.chomp()
            $manage_217.delByid_217(id_217) ? puts("Xoa thanh cong") : puts("Khong tim thay")
            $manage_217.output
            puts ("================================================================")
        when 4
            searchByTypeTransport()
            puts ("================================================================")
        else
            puts ("Thoat!")
            break   
    end
end

