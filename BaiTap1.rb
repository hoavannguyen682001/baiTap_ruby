

puts "1. Viết lệnh hiển thị Xin chào + tên SV + MSV"
puts "Xin chao - Nguyễn Văn Hoà - 1911505310217"
puts ""

puts "2. Nhập 1 số từ bàn phím, in ra số đó"
print "Nhap vao so thu nhat: "
num1 = gets.chomp()
puts "So vua nhap:"+ num1

print "Nhap vao so thu hai: "
num2 = gets.chomp()
puts "So vua nhap:"+ num2
puts ""

puts "3. So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn"
puts ("So sanh 2 so: " + num1 + " va " + num2 )

if num1.to_i > num2.to_i
    puts ("So lon hon la: " + num1)
else
    puts ("So lon hon la: " + num2)
end




