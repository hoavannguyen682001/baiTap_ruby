# Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
# Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra
# Viết chương trình để nhắc người dùng nhập tên của họ, sau đó in kết quả trên màn hình.
# Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.
# Viết chương trình để in một số nguyên, một số thực, một ký tự đã được định nghĩa trước.

#===============================================================================================

Bai 1 Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
puts "Bai 1. Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng."
arr = []
avg = 0
for i in 0..3 do
    print "Nhap phan tu thu #{i}: "
    arr[i] = gets.chomp().to_i
    avg += arr[i] 
end
puts "Gia tri lon nhat cua mang la: #{arr.max} " 
puts "Gia tri nho nhat cua mang la: #{arr.min} " 
puts "Gia tri trung binh cua mang la: #{avg.to_f / arr.length}" 

Bai 2. Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko?
      nếu đúng --> tính chu vi, diên tích --> in ra

puts "Bai 2. Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? \n
     nếu đúng --> tính chu vi, diên tích --> in ra"
puts "Nhap 3 canh cua tam giac: "
a = gets.chomp().to_f
b = gets.chomp().to_f
c = gets.chomp().to_f

if a <= 0 || b <= 0 || c <= 0 
    print "3 canh phai lon hon 0"
elsif (a + b > c) && (a + c > b) && (b + c > a)
    P = a + b + c
    S = Math.sqrt(P*(P-a)*(P-b)*(P-c))
    puts "Chu vi cua tam giac: #{P}"
    puts "Dien tich cua tam giac: #{S}"
else
    print "3 canh vua nhap khong phai la 3 canh cua 1 tam giac"
end

Bai 3.Viết chương trình để nhắc người dùng nhập tên của họ, sau đó in kết quả trên màn hình.

puts "Bai 3. Viết chương trình để nhắc người dùng nhập tên của họ, sau đó in kết quả trên màn hình"
puts "Nhap ho va ten cua ban: "
name = gets.chomp()
puts "Ho va ten cua ban la: #{name}"
    
Bai 4. Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.
puts "Bai 4. Viết chương trình để nhập ba số nguyên đã biết,
    sau đó in ra màn hình theo thứ tự tăng dần và giảm dần."

puts "Nhap 3 so nguyen: "
print "So thu nhat: "
num1 = gets.chomp().to_i
print "So thu hai: "
num2 = gets.chomp().to_i
print "So thu ba: "
num3 = gets.chomp().to_i

temp = 0
if num1 > num2
    temp = num1
    num1 = num2
    num2 = temp
end
if num1 > num3
    temp = num1
    num1 = num3
    num3 = temp
end
if num2 > num3
    temp = num2
    num2 = num3
    num3 = temp
end

puts "Thu tu tang dan: #{num1} - #{num2} - #{num3}"
puts "Thu tu giam dan: #{num3} - #{num2} - #{num1}"


Bai 5. Viết chương trình để in một số nguyên, một số thực, một ký tự đã được định nghĩa trước.
puts "Bai 5. Viết chương trình để in một số nguyên, một số thực, một ký tự đã được định nghĩa trước."

soNguyen = 5

soThuc = 5.555

kyTu = 'H'

puts "So nguyen: #{soNguyen.to_i}"
puts "So thuc: #{soThuc.to_f}"
puts "Ky tu: #{kyTu.to_s}"


